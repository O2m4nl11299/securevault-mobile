import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

/// SecureVault web client'ı (public/app.js) ile BYTE-BYTE uyumlu SV02 codec.
///
/// Format (spike'ta doğrulandı — bkz. securevault-spike):
///   [HEADER 8B]  MAGIC("SV02") + uint32_BE(chunkSize)
///   [FRAME×N]    uint32_BE(12+ct) + IV(12) + ciphertext(+16B GCM tag SONA ekli)
///
/// ÖNEMLİ: `Cryptography.instance.aesGcm(...)` kullanıyoruz, `AesGcm.with256bits()`
/// DEĞİL — ilki main()'de çağrılan `FlutterCryptography.enable()` sayesinde
/// native (CryptoKit/Conscrypt) backend'e yönlenir; ikincisi her zaman saf-Dart
/// kalır (spike'ta saf-Dart ~18 MB/s ölçüldü, üretimde bu kabul edilemez).
class Sv02Codec {
  static const int chunkSize = 5 * 1024 * 1024; // 5 MB — server.js R2_MIN_PART_SIZE ile aynı
  static const List<int> _magic = [0x53, 0x56, 0x30, 0x32]; // "SV02"
  static final Random _rnd = Random.secure();

  static AesGcm get _algo => Cryptography.instance.aesGcm(secretKeyLength: 32);

  /// 32 byte rastgele AES-256 anahtarı üretir.
  static SecretKey generateKey() {
    final bytes = List<int>.generate(32, (_) => _rnd.nextInt(256));
    return SecretKey(bytes);
  }

  /// Anahtarı URL fragment'inde paylaşılabilir base64url string'e çevirir
  /// (server.js base64url'i kabul ediyor — bkz. isValidKeyB64).
  static Future<String> keyToBase64Url(SecretKey key) async {
    final bytes = await key.extractBytes();
    return base64Url.encode(bytes).replaceAll('=', '');
  }

  static Uint8List _u32be(int n) =>
      (ByteData(4)..setUint32(0, n, Endian.big)).buffer.asUint8List();

  /// Dosyayı SV02 formatında STREAM halinde şifreler — sabit RAM (~5MB),
  /// spike'ta 2GB dosyada doğrulandı. Her yield edilen parça, sırayla
  /// `/upload/chunk/:id`'e POST edilmeli (server sıralı gönderim zorunlu
  /// kılıyor — paralel istek 429 döner).
  ///
  /// İlk yield: 8B header + ilk frame birlikte (header'ı ayrı göndermeye
  /// gerek yok, server toplam baytı sayıyor, frame sınırını kendi ayırıyor).
  static Stream<Uint8List> encryptStream(String filePath, SecretKey key) async* {
    final file = File(filePath);
    final buf = BytesBuilder(copy: false);
    var first = true;
    final algo = _algo;

    Future<Uint8List> buildFrame(Uint8List block) async {
      final iv = List<int>.generate(12, (_) => _rnd.nextInt(256));
      final box = await algo.encrypt(block, secretKey: key, nonce: iv);
      final out = BytesBuilder();
      if (first) {
        out.add(_magic);
        out.add(_u32be(chunkSize));
        first = false;
      }
      out.add(_u32be(12 + box.cipherText.length + box.mac.bytes.length));
      out.add(iv);
      out.add(box.cipherText);
      out.add(box.mac.bytes); // tag SONA ekli (Web Crypto uyumu)
      return out.toBytes();
    }

    await for (final part in file.openRead()) {
      buf.add(part);
      while (buf.length >= chunkSize) {
        final all = buf.takeBytes();
        yield await buildFrame(all.sublist(0, chunkSize));
        if (all.length > chunkSize) buf.add(all.sublist(chunkSize));
      }
    }
    final rem = buf.takeBytes();
    if (rem.isNotEmpty) {
      yield await buildFrame(rem);
    }
  }

  /// Kullanıcının yapıştırdığı/URL fragment'inden gelen base64url anahtarı
  /// SecretKey'e çevirir.
  static SecretKey keyFromBase64Url(String keyB64) {
    final normalized = keyB64.replaceAll('-', '+').replaceAll('_', '/');
    final bytes = base64.decode(base64.normalize(normalized));
    if (bytes.length != 32) {
      throw FormatException('Anahtar 32 byte olmalı, geldi: ${bytes.length}');
    }
    return SecretKey(bytes);
  }

  /// Şifreli bir bayt akışını (örn. HTTP indirme stream'i) SV02 formatından
  /// çözüp düz veri parçaları olarak yield eder. Sabit RAM ile çalışır —
  /// spike'ta dosya bazlı sürümü 2GB'da doğrulandı, burada aynı mantık
  /// genel bir `Stream<List<int>>` girdisine uyarlandı.
  static Stream<Uint8List> decryptStream(
    Stream<List<int>> input,
    SecretKey key,
  ) async* {
    var buf = Uint8List(0);
    var headerDone = false;
    final algo = _algo;

    await for (final part in input) {
      buf = _concatBytes(buf, part);
      var off = 0;

      if (!headerDone) {
        if (buf.length < 8) continue;
        for (var i = 0; i < 4; i++) {
          if (buf[i] != _magic[i]) {
            throw const FormatException('Geçersiz format: SV02 başlığı yok');
          }
        }
        off = 8;
        headerDone = true;
      }

      final bd = ByteData.sublistView(buf);
      while (off + 4 <= buf.length) {
        final payloadSize = bd.getUint32(off, Endian.big);
        if (payloadSize < 13) {
          off = buf.length;
          break;
        }
        if (off + 4 + payloadSize > buf.length) break; // tam frame henüz gelmedi
        final iv = buf.sublist(off + 4, off + 16);
        final ctTag = buf.sublist(off + 16, off + 4 + payloadSize);
        final ct = ctTag.sublist(0, ctTag.length - 16);
        final mac = Mac(ctTag.sublist(ctTag.length - 16)); // son 16B = tag
        final clear = await algo.decrypt(
          SecretBox(ct, nonce: iv, mac: mac),
          secretKey: key,
        );
        yield Uint8List.fromList(clear);
        off += 4 + payloadSize;
      }
      buf = buf.sublist(off);
    }
  }

  static Uint8List _concatBytes(Uint8List a, List<int> b) {
    final out = Uint8List(a.length + b.length);
    out.setAll(0, a);
    out.setAll(a.length, b);
    return out;
  }
}

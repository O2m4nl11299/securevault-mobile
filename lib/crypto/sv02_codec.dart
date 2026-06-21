import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

/// SecureVault web client'Ä± (public/app.js) ile BYTE-BYTE uyumlu SV02 codec.
///
/// Format (spike'ta doÄŸrulandÄ± â€” bkz. securevault-spike):
///   [HEADER 8B]  MAGIC("SV02") + uint32_BE(chunkSize)
///   [FRAMEÃ—N]    uint32_BE(12+ct) + IV(12) + ciphertext(+16B GCM tag SONA ekli)
///
/// Ã–NEMLÄ°: `Cryptography.instance.aesGcm(...)` kullanÄ±yoruz, `AesGcm.with256bits()`
/// DEÄÄ°L â€” ilki main()'de Ã§aÄŸrÄ±lan `FlutterCryptography.enable()` sayesinde
/// native (CryptoKit/Conscrypt) backend'e yÃ¶nlenir; ikincisi her zaman saf-Dart
/// kalÄ±r (spike'ta saf-Dart ~18 MB/s Ã¶lÃ§Ã¼ldÃ¼, Ã¼retimde bu kabul edilemez).
class Sv02Codec {
  static const int chunkSize = 5 * 1024 * 1024; // 5 MB â€” server.js R2_MIN_PART_SIZE ile aynÄ±
  static const List<int> _magic = [0x53, 0x56, 0x30, 0x32]; // "SV02"
  static final Random _rnd = Random.secure();

  static AesGcm get _algo => Cryptography.instance.aesGcm(secretKeyLength: 32);

  /// 32 byte rastgele AES-256 anahtarÄ± Ã¼retir.
  static SecretKey generateKey() {
    final bytes = List<int>.generate(32, (_) => _rnd.nextInt(256));
    return SecretKey(bytes);
  }

  /// Web'deki hashPassword ile BIREBIR ayni: SHA-256 -> base64 -> ilk 16 char.
  /// Ek sifre korumasi icin link'e eklenen #keyB64|HASH16 ekini uretir.
  /// Dosya sifrelemesini DEGISTIRMEZ; sadece indirme tarafinda erisim
  /// kontrolu olarak kullanilir (web ile capraz-uyumlu).
  static Future<String> hashPassword(String pwd) async {
    final digest = await Sha256().hash(utf8.encode(pwd));
    return base64.encode(digest.bytes).substring(0, 16);
  }

  /// AnahtarÄ± URL fragment'inde paylaÅŸÄ±labilir base64url string'e Ã§evirir
  /// (server.js base64url'i kabul ediyor â€” bkz. isValidKeyB64).
  static Future<String> keyToBase64Url(SecretKey key) async {
    final bytes = await key.extractBytes();
    return base64Url.encode(bytes).replaceAll('=', '');
  }

  static Uint8List _u32be(int n) =>
      (ByteData(4)..setUint32(0, n, Endian.big)).buffer.asUint8List();

  /// DosyayÄ± SV02 formatÄ±nda STREAM halinde ÅŸifreler â€” sabit RAM (~5MB),
  /// spike'ta 2GB dosyada doÄŸrulandÄ±. Her yield edilen parÃ§a, sÄ±rayla
  /// `/upload/chunk/:id`'e POST edilmeli (server sÄ±ralÄ± gÃ¶nderim zorunlu
  /// kÄ±lÄ±yor â€” paralel istek 429 dÃ¶ner).
  ///
  /// Ä°lk yield: 8B header + ilk frame birlikte (header'Ä± ayrÄ± gÃ¶ndermeye
  /// gerek yok, server toplam baytÄ± sayÄ±yor, frame sÄ±nÄ±rÄ±nÄ± kendi ayÄ±rÄ±yor).
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

  /// KullanÄ±cÄ±nÄ±n yapÄ±ÅŸtÄ±rdÄ±ÄŸÄ±/URL fragment'inden gelen base64url anahtarÄ±
  /// SecretKey'e Ã§evirir.
  static SecretKey keyFromBase64Url(String keyB64) {
    final normalized = keyB64.replaceAll('-', '+').replaceAll('_', '/');
    final bytes = base64.decode(base64.normalize(normalized));
    if (bytes.length != 32) {
      throw FormatException('Anahtar 32 byte olmalÄ±, geldi: ${bytes.length}');
    }
    return SecretKey(bytes);
  }

  /// Åifreli bir bayt akÄ±ÅŸÄ±nÄ± (Ã¶rn. HTTP indirme stream'i) SV02 formatÄ±ndan
  /// Ã§Ã¶zÃ¼p dÃ¼z veri parÃ§alarÄ± olarak yield eder. Sabit RAM ile Ã§alÄ±ÅŸÄ±r â€”
  /// spike'ta dosya bazlÄ± sÃ¼rÃ¼mÃ¼ 2GB'da doÄŸrulandÄ±, burada aynÄ± mantÄ±k
  /// genel bir `Stream<List<int>>` girdisine uyarlandÄ±.
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
            throw const FormatException('GeÃ§ersiz format: SV02 baÅŸlÄ±ÄŸÄ± yok');
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
        if (off + 4 + payloadSize > buf.length) break; // tam frame henÃ¼z gelmedi
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



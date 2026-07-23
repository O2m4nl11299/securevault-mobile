import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:cryptography/cryptography.dart';

/// Parola tabanli, TAMAMEN CIHAZDA calisan kisa-metin sifreleme.
///
/// Dosya akisindaki Sv02Codec'ten AYRIDIR: bu, sunucuya hic dokunmadan
/// "sifrele -> kopyala -> yapistir -> coz" akisi icindir. Uretilen blok
/// kendi kendine yeterlidir (salt + nonce ici); cozmek icin SADECE ayni
/// parola gerekir. Parola blok icinde DEGILDIR.
///
/// Formatlar (Base64'e cevrilmeden once ham bayt):
///   SVT1 (eski, suresiz):
///     [MAGIC 4B "SVT1"] [SALT 16B] [NONCE 12B] [CIPHERTEXT + 16B GCM tag]
///   SVT2 (sure kilitli):
///     [MAGIC 4B "SVT2"] [SALT 16B] [NONCE 12B] [CREATED 8B] [TTL 4B]
///     [CIPHERTEXT + 16B GCM tag]
///     CREATED = olusturma zamani (epoch ms, big-endian)
///     TTL     = gecerlilik suresi saniye (big-endian); 0 = suresiz
///
/// SURE KILIDI HAKKINDA DURUST NOT:
/// CREATED+TTL alanlari AES-GCM'in AAD'sine baglanir; yani sure bilgisi
/// kurcalanirsa blok HIC cozulmez. Ancak bu, matematiksel bir imha DEGILDIR:
/// blok bir kez kopyalandiktan sonra dogru parolaya sahip kararli bir kisi,
/// cihaz saatini geri alarak veya bu uygulama disinda bir arac yazarak
/// icerige ulasabilir. Sure kilidi, pratik/uygulama seviyesinde bir
/// korumadir (ornegin telefonu eline gecen birinin eski mesajlari
/// okuyamamasi). Kullaniciya da bu sekilde anlatilmalidir.
///
/// Anahtar turetme: PBKDF2-HMAC-SHA256, 100k iterasyon, 32 byte (AES-256).
class TextCipher {
  static const List<int> _magicV1 = [0x53, 0x56, 0x54, 0x31]; // "SVT1"
  static const List<int> _magicV2 = [0x53, 0x56, 0x54, 0x32]; // "SVT2"
  static const int _saltLen = 16;
  static const int _nonceLen = 12;
  static const int _metaLen = 12; // 8B created + 4B ttl
  static const int _iterations = 100000;

  static final Random _rnd = Random.secure();

  static AesGcm get _algo => Cryptography.instance.aesGcm(secretKeyLength: 32);

  /// Paroladan AES-256 anahtari turetir (PBKDF2-HMAC-SHA256).
  static Future<SecretKey> _deriveKey(String password, List<int> salt) async {
    final pbkdf2 = Pbkdf2(
      macAlgorithm: Hmac.sha256(),
      iterations: _iterations,
      bits: 256,
    );
    return pbkdf2.deriveKey(
      secretKey: SecretKey(utf8.encode(password)),
      nonce: salt,
    );
  }

  static Uint8List _buildMeta(int createdMs, int ttlSeconds) {
    final b = ByteData(_metaLen);
    b.setUint64(0, createdMs, Endian.big);
    b.setUint32(8, ttlSeconds, Endian.big);
    return b.buffer.asUint8List();
  }

  /// Metni parola ile sifreler, kopyalanabilir tek satir Base64 blok dondurur.
  ///
  /// [ttlSeconds] 0 (varsayilan) ise sure kilidi YOKTUR ve eski davranisla
  /// ayni sekilde SVT1 blogu uretilir. 0'dan buyukse SVT2 blogu uretilir ve
  /// blok, olusturulmasindan [ttlSeconds] saniye sonra bu uygulama
  /// tarafindan "suresi dolmus" sayilir.
  static Future<String> encrypt(
    String plainText,
    String password, {
    int ttlSeconds = 0,
  }) async {
    final salt = List<int>.generate(_saltLen, (_) => _rnd.nextInt(256));
    final nonce = List<int>.generate(_nonceLen, (_) => _rnd.nextInt(256));
    final key = await _deriveKey(password, salt);

    if (ttlSeconds <= 0) {
      // Eski format — tam geriye uyumluluk.
      final box = await _algo.encrypt(
        utf8.encode(plainText),
        secretKey: key,
        nonce: nonce,
      );
      final out = BytesBuilder();
      out.add(_magicV1);
      out.add(salt);
      out.add(nonce);
      out.add(box.cipherText);
      out.add(box.mac.bytes);
      return base64.encode(out.toBytes());
    }

    final createdMs = DateTime.now().toUtc().millisecondsSinceEpoch;
    final meta = _buildMeta(createdMs, ttlSeconds);
    // Meta AAD olarak baglanir: kurcalanirsa cozme basarisiz olur.
    final box = await _algo.encrypt(
      utf8.encode(plainText),
      secretKey: key,
      nonce: nonce,
      aad: meta,
    );
    final out = BytesBuilder();
    out.add(_magicV2);
    out.add(salt);
    out.add(nonce);
    out.add(meta);
    out.add(box.cipherText);
    out.add(box.mac.bytes);
    return base64.encode(out.toBytes());
  }

  /// Sifreli blogu parola ile cozer.
  ///
  /// Hatalar (FormatException mesaji):
  ///   invalid_base64 / too_short / bad_magic — blok bozuk veya taninmiyor
  ///   expired — SVT2 blogunun suresi dolmus (icerik GOSTERILMEZ)
  /// Yanlis parola -> cryptography paketinin SecretBoxAuthenticationError'u.
  static Future<String> decrypt(String encoded, String password) async {
    final Uint8List raw;
    try {
      raw = base64.decode(base64.normalize(encoded.trim()));
    } catch (_) {
      throw const FormatException('invalid_base64');
    }
    if (raw.length < 4) throw const FormatException('too_short');

    bool isV1 = true, isV2 = true;
    for (var i = 0; i < 4; i++) {
      if (raw[i] != _magicV1[i]) isV1 = false;
      if (raw[i] != _magicV2[i]) isV2 = false;
    }
    if (!isV1 && !isV2) throw const FormatException('bad_magic');

    final headLen = 4 + _saltLen + _nonceLen + (isV2 ? _metaLen : 0);
    if (raw.length < headLen + 16) throw const FormatException('too_short');

    final salt = raw.sublist(4, 4 + _saltLen);
    final nonce = raw.sublist(4 + _saltLen, 4 + _saltLen + _nonceLen);

    List<int>? meta;
    if (isV2) {
      meta = raw.sublist(4 + _saltLen + _nonceLen, headLen);
      final bd = ByteData.sublistView(Uint8List.fromList(meta));
      final createdMs = bd.getUint64(0, Endian.big);
      final ttlSeconds = bd.getUint32(8, Endian.big);
      if (ttlSeconds > 0) {
        final expiresMs = createdMs + ttlSeconds * 1000;
        if (DateTime.now().toUtc().millisecondsSinceEpoch > expiresMs) {
          throw const FormatException('expired');
        }
      }
    }

    final rest = raw.sublist(headLen);
    final ct = rest.sublist(0, rest.length - 16);
    final mac = Mac(rest.sublist(rest.length - 16));
    final key = await _deriveKey(password, salt);
    final clear = await _algo.decrypt(
      SecretBox(ct, nonce: nonce, mac: mac),
      secretKey: key,
      aad: meta ?? const <int>[],
    );
    return utf8.decode(clear);
  }

  /// Bloktan (cozmeden) sure bilgisini okur. SVT1 veya taninmayan blokta null.
  /// UI'da "bu mesaj X tarihinde gecerliligini yitirir" gostermek icin.
  static ({DateTime createdAt, int ttlSeconds, DateTime expiresAt})? peekExpiry(
      String encoded) {
    try {
      final raw = base64.decode(base64.normalize(encoded.trim()));
      if (raw.length < 4 + _saltLen + _nonceLen + _metaLen + 16) return null;
      for (var i = 0; i < 4; i++) {
        if (raw[i] != _magicV2[i]) return null;
      }
      final bd = ByteData.sublistView(
          raw, 4 + _saltLen + _nonceLen, 4 + _saltLen + _nonceLen + _metaLen);
      final createdMs = bd.getUint64(0, Endian.big);
      final ttl = bd.getUint32(8, Endian.big);
      if (ttl <= 0) return null;
      return (
        createdAt: DateTime.fromMillisecondsSinceEpoch(createdMs, isUtc: true)
            .toLocal(),
        ttlSeconds: ttl,
        expiresAt: DateTime.fromMillisecondsSinceEpoch(
                createdMs + ttl * 1000,
                isUtc: true)
            .toLocal(),
      );
    } catch (_) {
      return null;
    }
  }
}

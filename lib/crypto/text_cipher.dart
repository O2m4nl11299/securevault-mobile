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
/// Format (Base64'e cevrilmeden once ham bayt):
///   [MAGIC 4B "SVT1"] [SALT 16B] [NONCE 12B] [CIPHERTEXT + 16B GCM tag]
///
/// Anahtar turetme: PBKDF2-HMAC-SHA256, 100k iterasyon, 32 byte (AES-256).
class TextCipher {
  static const List<int> _magic = [0x53, 0x56, 0x54, 0x31]; // "SVT1"
  static const int _saltLen = 16;
  static const int _nonceLen = 12;
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

  /// Metni parola ile sifreler, kopyalanabilir tek satir Base64 blok dondurur.
  static Future<String> encrypt(String plainText, String password) async {
    final salt = List<int>.generate(_saltLen, (_) => _rnd.nextInt(256));
    final nonce = List<int>.generate(_nonceLen, (_) => _rnd.nextInt(256));
    final key = await _deriveKey(password, salt);

    final box = await _algo.encrypt(
      utf8.encode(plainText),
      secretKey: key,
      nonce: nonce,
    );

    final out = BytesBuilder();
    out.add(_magic);
    out.add(salt);
    out.add(nonce);
    out.add(box.cipherText);
    out.add(box.mac.bytes); // 16B tag sona ekli
    return base64.encode(out.toBytes());
  }

  /// Sifreli blogu parola ile cozer. Yanlis parola/bozuk blok -> exception.
  static Future<String> decrypt(String encoded, String password) async {
    final Uint8List raw;
    try {
      raw = base64.decode(base64.normalize(encoded.trim()));
    } catch (_) {
      throw const FormatException('invalid_base64');
    }

    if (raw.length < 4 + _saltLen + _nonceLen + 16) {
      throw const FormatException('too_short');
    }
    for (var i = 0; i < 4; i++) {
      if (raw[i] != _magic[i]) throw const FormatException('bad_magic');
    }

    final salt = raw.sublist(4, 4 + _saltLen);
    final nonce = raw.sublist(4 + _saltLen, 4 + _saltLen + _nonceLen);
    final rest = raw.sublist(4 + _saltLen + _nonceLen);
    final ct = rest.sublist(0, rest.length - 16);
    final mac = Mac(rest.sublist(rest.length - 16));

    final key = await _deriveKey(password, salt);
    final clear = await _algo.decrypt(
      SecretBox(ct, nonce: nonce, mac: mac),
      secretKey: key,
    );
    return utf8.decode(clear);
  }
}

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:cryptography/cryptography.dart';

/// Iki Anahtarli Kasa (XOR 2/2) — web'deki app.js implementasyonu ile
/// BIREBIR ayni format: parca = "k1.b64url.kontrol" / "k2.b64url.kontrol"
/// kontrol = SHA-256(anahtar)[0..12) base64url (paddingsiz).
/// Iki parca olmadan anahtar matematiksel olarak birlestirilemez; kontrol
/// degeri tek yonludur, anahtar hakkinda bilgi sizdirmaz. Parcalar SUNUCUYA
/// HICBIR ZAMAN GONDERILMEZ.
class VaultShares {
  final String p1; // aliciya giden parca
  final String p2; // gonderende kalan parca
  VaultShares(this.p1, this.p2);
}

class VaultSplit {
  static final RegExp shareRe =
      RegExp(r'k[12]\.[A-Za-z0-9\-_]+\.[A-Za-z0-9\-_]+');

  /// Serbest metinden (link veya ham parca) parcayi ayiklar; yoksa null.
  static String? extractShare(String input) =>
      shareRe.firstMatch(input.trim())?.group(0);

  static bool isShare(String s) => s.startsWith('k1.') || s.startsWith('k2.');

  static Uint8List _b64urlDecode(String s) {
    var std = s.replaceAll('-', '+').replaceAll('_', '/');
    while (std.length % 4 != 0) {
      std += '=';
    }
    return Uint8List.fromList(base64Decode(std));
  }

  static String _b64urlEncode(List<int> bytes) =>
      base64UrlEncode(bytes).replaceAll('=', '');

  static Future<String> _checksum(List<int> keyBytes) async {
    final h = await Sha256().hash(keyBytes);
    return _b64urlEncode(h.bytes.sublist(0, 12));
  }

  /// 32-bayt anahtari (base64url) iki parcaya boler.
  static Future<VaultShares> split(String keyB64url) async {
    final key = _b64urlDecode(keyB64url);
    if (key.length != 32) {
      throw ArgumentError('Anahtar 32 bayt olmali');
    }
    final rnd = Random.secure();
    final r =
        Uint8List.fromList(List<int>.generate(32, (_) => rnd.nextInt(256)));
    final x = Uint8List(32);
    for (var i = 0; i < 32; i++) {
      x[i] = key[i] ^ r[i];
    }
    final check = await _checksum(key);
    return VaultShares(
      'k1.${_b64urlEncode(r)}.$check',
      'k2.${_b64urlEncode(x)}.$check',
    );
  }

  /// Iki parcayi birlestirir. Kontrol tutmazsa null doner — bu durumda
  /// INDIRME BASLATILMAMALIDIR (tek kullanimlik hak korunur).
  static Future<String?> combine(String shareA, String shareB) async {
    final a = shareA.split('.');
    final b = shareB.split('.');
    if (a.length != 3 || b.length != 3) return null;
    if (a[0] == b[0]) return null; // ayni parca iki kez
    if (a[2] != b[2]) return null; // farkli dosyalarin parcalari
    final Uint8List ba, bb;
    try {
      ba = _b64urlDecode(a[1]);
      bb = _b64urlDecode(b[1]);
    } catch (_) {
      return null;
    }
    if (ba.length != 32 || bb.length != 32) return null;
    final key = Uint8List(32);
    for (var i = 0; i < 32; i++) {
      key[i] = ba[i] ^ bb[i];
    }
    if (await _checksum(key) != a[2]) return null;
    return _b64urlEncode(key); // Sv02Codec.keyFromBase64Url ile uyumlu
  }
}

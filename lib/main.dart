import 'package:flutter/material.dart';
import 'package:cryptography_flutter/cryptography_flutter.dart';
import 'services/api_client.dart';
import 'services/secure_storage_service.dart';
import 'services/auth_service.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

/// ApiClient gibi widget aÄŸacÄ±nÄ±n dÄ±ÅŸÄ±ndaki kodun (interceptor) BuildContext
/// olmadan navigasyon yapabilmesi iÃ§in global anahtar.
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

void main() {
  // KRÄ°TÄ°K: bu satÄ±r olmadan Sv02Codec saf-Dart'a dÃ¼ÅŸer (spike'ta ~18 MB/s
  // Ã¶lÃ§Ã¼ldÃ¼ â€” 2GB dosyada ~2 dakika). Bu satÄ±rla native AES-256-GCM
  // (CryptoKit/Conscrypt) kullanÄ±lÄ±r, saniyeler mertebesine iner.
  FlutterCryptography.enable();
  ApiClient.instance.onSessionExpired = _handleSessionExpired;
  runApp(const SecureVaultApp());
}

/// ApiClient'in 401+sessionExpired:true sinyaliyle tespit ettigi "oturum
/// suresi doldu" durumunda cagrilir: yerel oturumu temizler, kullaniciyi
/// nazik bir mesajla giris ekranina dondurur.
Future<void> _handleSessionExpired() async {
  await SecureStorageService.clear();
  rootNavigatorKey.currentState?.pushAndRemoveUntil(
    MaterialPageRoute(
      builder: (_) => const LoginScreen(
        expiredMessage: 'Oturumun sÃ¼resi doldu, lÃ¼tfen tekrar giriÅŸ yap.',
      ),
    ),
    (route) => false,
  );
}

class SecureVaultApp extends StatelessWidget {
  const SecureVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: rootNavigatorKey,
      title: 'SecureVault',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF00E0A4), // web sitesindeki teal/cyberpunk vurgu
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const _StartupGate(),
    );
  }
}

/// AÃ§Ä±lÄ±ÅŸta diskte kayÄ±tlÄ± bir oturum token'Ä± var mÄ± bakar, varsa direkt
/// HomeScreen'e, yoksa LoginScreen'e yÃ¶nlendirir.
///
/// NOT: Token'Ä±n sunucuda hÃ¢lÃ¢ geÃ§erli olduÄŸu DOÄRULANMAZ (session 24 saatte
/// dÃ¼ÅŸer). SÃ¼resi dolmuÅŸsa HomeScreen'deki ilk yetkili istek 401 dÃ¶ner â€”
/// bu durumu sÄ±radaki adÄ±mda merkezi bir interceptor ile yakalayÄ±p otomatik
/// logout+yÃ¶nlendirme ekleyeceÄŸiz.
class _StartupGate extends StatefulWidget {
  const _StartupGate();

  @override
  State<_StartupGate> createState() => _StartupGateState();
}

class _StartupGateState extends State<_StartupGate> {
  bool _checking = true;
  bool _loggedIn = false;

  @override
  void initState() {
    super.initState();
    _check();
  }

  Future<void> _check() async {
    // Tek kaynak: remember kontrolu + token geri yukleme AuthService'te.
    _loggedIn = await AuthService().tryAutoLogin();
    if (!mounted) return;
    setState(() => _checking = false);
  }

  @override
  Widget build(BuildContext context) {
    if (_checking) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return _loggedIn ? const HomeScreen() : const LoginScreen();
  }
}



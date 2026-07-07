import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import '../services/auth_service.dart';
import '../services/secure_storage_service.dart';
import 'login_screen.dart';
import 'upload_screen.dart';
import 'folder_upload_screen.dart';
import 'text_encrypt_screen.dart';
import 'text_cipher_screen.dart';
import 'cert_query_screen.dart';
import 'download_screen.dart';
import 'delete_account_screen.dart';
import 'info_screen.dart';
import 'premium_screen.dart';

/// GiriÅŸ sonrasÄ± ana ekran â€” ÅŸimdilik yer tutucu.
/// SÄ±radaki adÄ±mda buraya dosya yÃ¼kleme akÄ±ÅŸÄ± eklenecek.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _authService = AuthService();
  String? _username;
  String? _plan;

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    final username = await SecureStorageService.readUsername();
    final plan = await SecureStorageService.readPlan();
    if (!mounted) return;
    setState(() {
      _username = username;
      _plan = plan;
    });
  }

  Future<void> _openWebsite() async {
    final uri = Uri.parse('https://sifreliveritransferi.com');
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context).homeSiteError)),
      );
    }
  }

  Future<void> _logout() async {
    await _authService.logout();
    if (!mounted) return;
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const LoginScreen()),
      (route) => false,
    );
  }

  // Cevrimdisi Sifreli Mesaj — YALNIZCA Premium. Ozellik tamamen cihazda
  // calistigi icin kontrol istemci tarafindadir; plan her tiklamada
  // SecureStorage'dan taze okunur (satin alma sonrasi donuste guncel olsun).
  Future<void> _openTextCipher() async {
    final plan = await SecureStorageService.readPlan();
    final isAdmin = await SecureStorageService.readIsAdmin();
    if (!mounted) return;
    // Premium uyelere VE admin hesabina (test/yonetim) acik.
    if (plan == 'premium' || isAdmin) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const TextCipherScreen()),
      );
      return;
    }
    final l = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Row(
          children: [
            const Icon(Icons.workspace_premium, color: Colors.amber),
            const SizedBox(width: 8),
            Expanded(child: Text(l.cphPremiumTitle)),
          ],
        ),
        content: Text(l.cphPremiumBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l.cphPremiumCancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const PremiumScreen()),
              );
            },
            child: Text(l.cphPremiumGo),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('SecureVault'),
            Text(
              l.appSlogan,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.normal,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const PremiumScreen()),
            ),
            icon: const Icon(Icons.workspace_premium, color: Colors.amber),
            tooltip: l.homeTooltipPremium,
          ),
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const InfoScreen()),
            ),
            icon: const Icon(Icons.info_outline),
            tooltip: l.homeTooltipInfo,
          ),
          IconButton(
            onPressed: _logout,
            icon: const Icon(Icons.logout),
            tooltip: l.homeTooltipLogout,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check_circle, color: Colors.greenAccent, size: 56),
            const SizedBox(height: 16),
            Text(
              l.homeLoggedInAs(_username ?? "..."),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(
              l.homePlan(_plan ?? "..."),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const UploadScreen()),
              ),
              icon: const Icon(Icons.upload_file),
              label: Text(l.homeSendFile),
            ),
            const SizedBox(height: 12),
            FilledButton.icon(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const FolderUploadScreen()),
              ),
              icon: const Icon(Icons.drive_folder_upload),
              label: Text(l.homeSendFolder),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const TextEncryptScreen()),
              ),
              icon: const Icon(Icons.text_fields),
              label: Text(l.homeEncryptText),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: _openTextCipher,
              icon: const Icon(Icons.enhanced_encryption),
              label: Text(l.cphTitle),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const CertQueryScreen()),
              ),
              icon: const Icon(Icons.verified_outlined),
              label: Text(l.certHomeButton),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const DownloadScreen()),
              ),
              icon: const Icon(Icons.download),
              label: Text(l.homeDownloadFile),
            ),
            const SizedBox(height: 32),
            TextButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const DeleteAccountScreen()),
              ),
              style: TextButton.styleFrom(foregroundColor: Colors.redAccent),
              child: Text(l.homeDeleteAccount),
            ),
            const SizedBox(height: 24),
            TextButton.icon(
              onPressed: _openWebsite,
              icon: const Icon(Icons.language, size: 18),
              label: const Text('sifreliveritransferi.com'),
            ),
          ],
        ),
      ),
    );
  }
}



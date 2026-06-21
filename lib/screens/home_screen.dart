import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../services/secure_storage_service.dart';
import 'login_screen.dart';
import 'upload_screen.dart';
import 'text_encrypt_screen.dart';
import 'download_screen.dart';
import 'delete_account_screen.dart';

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

  Future<void> _logout() async {
    await _authService.logout();
    if (!mounted) return;
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const LoginScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecureVault'),
        actions: [
          IconButton(
            onPressed: _logout,
            icon: const Icon(Icons.logout),
            tooltip: 'Ã‡Ä±kÄ±ÅŸ yap',
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
              'GiriÅŸ yapÄ±ldÄ±: ${_username ?? "..."}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(
              'Plan: ${_plan ?? "..."}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const UploadScreen()),
              ),
              icon: const Icon(Icons.upload_file),
              label: const Text('Dosya GÃ¶nder'),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const TextEncryptScreen()),
              ),
              icon: const Icon(Icons.text_fields),
              label: const Text('Metin Sifrele'),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const DownloadScreen()),
              ),
              icon: const Icon(Icons.download),
              label: const Text('Dosya Ä°ndir'),
            ),
            const SizedBox(height: 32),
            TextButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const DeleteAccountScreen()),
              ),
              style: TextButton.styleFrom(foregroundColor: Colors.redAccent),
              child: const Text('HesabÄ±mÄ± Sil'),
            ),
          ],
        ),
      ),
    );
  }
}



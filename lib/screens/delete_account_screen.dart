import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../services/auth_service.dart';
import 'login_screen.dart';

/// Hesap silme ekranı — POST /api/delete-account (KVKK uyumlu, kalıcı silme).
/// AuthService.deleteAccount zaten auth milestone'ında yazılmıştı, burada
/// sadece arayüzü ekliyoruz.
class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});

  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
  final _passwordCtrl = TextEditingController();
  final _authService = AuthService();

  bool _confirmed = false;
  bool _loading = false;
  String? _error;

  Future<void> _submit() async {
    if (!_confirmed) {
      setState(() => _error = AppLocalizations.of(context).delErrConfirm);
      return;
    }
    if (_passwordCtrl.text.isEmpty) {
      setState(() => _error = AppLocalizations.of(context).delErrPwd);
      return;
    }

    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      // AuthService.deleteAccount başarıda zaten ApiClient + yerel depoyu
      // temizliyor (bkz. auth_service.dart — logout() çağrısı).
      await _authService.deleteAccount(password: _passwordCtrl.text);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context).delDeleted)),
      );
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const LoginScreen()),
        (route) => false,
      );
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  @override
  void dispose() {
    _passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.delTitle)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(Icons.warning_amber_rounded,
                  color: Colors.orangeAccent, size: 56),
              const SizedBox(height: 12),
              Text(
                l.delIrreversible,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                l.delExplanation,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: _passwordCtrl,
                obscureText: true,
                enabled: !_loading,
                decoration: InputDecoration(
                  labelText: l.delPwdLabel,
                  border: const OutlineInputBorder(),
                ),
                onSubmitted: (_) => _submit(),
              ),
              const SizedBox(height: 8),
              CheckboxListTile(
                value: _confirmed,
                onChanged: _loading
                    ? null
                    : (v) => setState(() => _confirmed = v ?? false),
                title: Text(
                  l.delConfirmCheck,
                  style: const TextStyle(fontSize: 14),
                ),
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
              ),
              if (_error != null) ...[
                const SizedBox(height: 8),
                Text(_error!, style: const TextStyle(color: Colors.redAccent)),
              ],
              const SizedBox(height: 16),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                onPressed: _loading ? null : _submit,
                child: _loading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : Text(l.delButton),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

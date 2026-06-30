import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../l10n/app_localizations.dart';

/// Sifremi Unuttum ekrani. Sunucudaki /auth/recover ile calisir:
/// kullanici adi + kayitta verilen kurtarma kodu + yeni sifre.
/// E-posta tabanli DEGILDIR; kurtarma kodu kullaniciya kayitta gosterilmistir.
class RecoverScreen extends StatefulWidget {
  const RecoverScreen({super.key});

  @override
  State<RecoverScreen> createState() => _RecoverScreenState();
}

class _RecoverScreenState extends State<RecoverScreen> {
  final _authService = AuthService();
  final _usernameCtrl = TextEditingController();
  final _tokenCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  String? _error;
  bool _busy = false;
  bool _done = false;

  Future<void> _submit() async {
    final l = AppLocalizations.of(context);
    final username = _usernameCtrl.text.trim();
    final token = _tokenCtrl.text.trim();
    final pwd = _passwordCtrl.text;

    if (username.isEmpty || token.isEmpty || pwd.isEmpty) {
      setState(() => _error = l.recoverErrEmpty);
      return;
    }
    if (pwd.length < 8) {
      setState(() => _error = l.recoverErrShortPwd);
      return;
    }

    setState(() {
      _busy = true;
      _error = null;
    });

    try {
      await _authService.recover(
        username: username,
        recoveryToken: token,
        newPassword: pwd,
      );
      if (!mounted) return;
      setState(() => _done = true);
    } catch (e) {
      if (!mounted) return;
      setState(() => _error = e.toString());
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  void dispose() {
    _usernameCtrl.dispose();
    _tokenCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.recoverTitle)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: _done ? _buildSuccess(l) : _buildForm(l),
        ),
      ),
    );
  }

  Widget _buildSuccess(AppLocalizations l) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 40),
        const Icon(Icons.check_circle_outline, size: 64, color: Colors.green),
        const SizedBox(height: 24),
        Text(
          l.recoverSuccess,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, height: 1.5),
        ),
        const SizedBox(height: 32),
        FilledButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l.recoverBackToLogin),
        ),
      ],
    );
  }

  Widget _buildForm(AppLocalizations l) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l.recoverIntro,
          style: const TextStyle(fontSize: 13, color: Colors.grey, height: 1.5),
        ),
        const SizedBox(height: 24),
        TextField(
          controller: _usernameCtrl,
          enabled: !_busy,
          decoration: InputDecoration(
            labelText: l.recoverUsername,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.person_outline),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _tokenCtrl,
          enabled: !_busy,
          decoration: InputDecoration(
            labelText: l.recoverToken,
            hintText: l.recoverTokenHint,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.vpn_key_outlined),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _passwordCtrl,
          enabled: !_busy,
          obscureText: true,
          decoration: InputDecoration(
            labelText: l.recoverNewPassword,
            hintText: l.recoverNewPasswordHint,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.lock_outline),
          ),
        ),
        if (_error != null) ...[
          const SizedBox(height: 16),
          Text(_error!, style: const TextStyle(color: Colors.redAccent)),
        ],
        const SizedBox(height: 24),
        FilledButton.icon(
          onPressed: _busy ? null : _submit,
          icon: _busy
              ? const SizedBox(
                  height: 18, width: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Icon(Icons.lock_reset),
          label: Text(l.recoverButton),
        ),
      ],
    );
  }
}

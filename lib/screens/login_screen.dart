import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../main.dart';
import '../services/secure_storage_service.dart';
import '../services/auth_service.dart';
import 'home_screen.dart';
import 'register_screen.dart';
import 'recover_screen.dart';

class LoginScreen extends StatefulWidget {
  /// Oturum süresi dolduğu için buraya yönlendirildiğinde gösterilecek mesaj
  /// (ApiClient'ın session-expiry interceptor'ı tarafından set edilir).
  final String? expiredMessage;

  const LoginScreen({super.key, this.expiredMessage});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _authService = AuthService();

  bool _loading = false;
  bool _remember = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    final msg = widget.expiredMessage;
    if (msg != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
      });
    }
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      await _authService.login(
        username: _usernameCtrl.text.trim(),
        password: _passwordCtrl.text,
        remember: _remember,
      );
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    } catch (e) {
      setState(() => _error = e.toString());
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _usernameCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(Icons.lock_outline, size: 56),
                  const SizedBox(height: 12),
                  Text(
                    'SecureVault',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    l.appSlogan,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _LanguageSelector(),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _usernameCtrl,
                    autofillHints: const [AutofillHints.username],
                    decoration: InputDecoration(
                      labelText: l.loginUsername,
                      border: const OutlineInputBorder(),
                    ),
                    validator: (v) =>
                        (v == null || v.trim().length < 3) ? l.loginMin3 : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _passwordCtrl,
                    obscureText: true,
                    autofillHints: const [AutofillHints.password],
                    decoration: InputDecoration(
                      labelText: l.loginPassword,
                      border: const OutlineInputBorder(),
                    ),
                    validator: (v) =>
                        (v == null || v.length < 8) ? l.loginMin8 : null,
                    onFieldSubmitted: (_) => _submit(),
                  ),
                  const SizedBox(height: 4),
                  CheckboxListTile(
                    value: _remember,
                    onChanged: _loading
                        ? null
                        : (v) => setState(() => _remember = v ?? true),
                    title: Text(l.loginRemember),
                    subtitle: Text(
                      l.loginRememberSub,
                      style: TextStyle(fontSize: 12),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                  ),
                  if (_error != null) ...[
                    const SizedBox(height: 12),
                    Text(_error!, style: const TextStyle(color: Colors.redAccent)),
                  ],
                  const SizedBox(height: 24),
                  FilledButton(
                    onPressed: _loading ? null : _submit,
                    child: _loading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : Text(l.loginButton),
                  ),
                  const SizedBox(height: 4),
                  TextButton(
                    onPressed: _loading
                        ? null
                        : () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => const RecoverScreen()),
                            ),
                    child: Text(l.recoverLink),
                  ),
                  TextButton(
                    onPressed: _loading
                        ? null
                        : () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => const RegisterScreen()),
                            ),
                    child: Text(l.loginNoAccount),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Giris ekraninda dil secimi. Secilen dil kaydedilir ve aninda uygulanir.
class _LanguageSelector extends StatelessWidget {
  static const _langs = [
    ('tr', 'Türkçe'),
    ('en', 'English'),
    ('de', 'Deutsch'),
    ('ru', 'Русский'),
  ];

  @override
  Widget build(BuildContext context) {
    final current = localeNotifier.value?.languageCode ??
        Localizations.localeOf(context).languageCode;
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 8,
      children: _langs.map((lang) {
        final selected = lang.$1 == current;
        return ChoiceChip(
          label: Text(lang.$2, style: const TextStyle(fontSize: 12)),
          selected: selected,
          onSelected: (_) async {
            localeNotifier.value = Locale(lang.$1);
            await SecureStorageService.saveLocale(lang.$1);
          },
        );
      }).toList(),
    );
  }
}

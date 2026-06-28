import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../services/auth_service.dart';
import 'terms_screen.dart';
import 'kvkk_screen.dart';
import 'sozlesme_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _authService = AuthService();
  bool _loading = false;
  bool _kvkkAccepted = false;
  bool _termsAccepted = false;
  String? _error;
  String? _recoveryToken; // basarili kayittan sonra TEK SEFER gosterilir

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    if (!_kvkkAccepted) {
      setState(() => _error = AppLocalizations.of(context).regErrKvkk);
      return;
    }
    if (!_termsAccepted) {
      setState(() => _error = AppLocalizations.of(context).regErrTerms);
      return;
    }
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final token = await _authService.register(
        username: _usernameCtrl.text.trim(),
        password: _passwordCtrl.text,
      );
      setState(() => _recoveryToken = token);
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
    // Kayit basariliysa, kurtarma kodunu goster. Sunucu bu kodu BIR DAHA
    // gondermez - kullanici kaydetmeden ekrandan cikarsa kod kaybolur.
    if (_recoveryToken != null) {
      return Scaffold(
        appBar: AppBar(title: Text(l.regAccountCreated)),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l.regRecoveryInfo,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).colorScheme.outline),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SelectableText(
                  _recoveryToken!,
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 14),
                ),
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () => Navigator.of(context).popUntil((r) => r.isFirst),
                child: Text(l.regSavedReturnLogin),
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(l.regTitle)),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _usernameCtrl,
                  decoration: InputDecoration(
                    labelText: l.regUsernameLabel,
                    border: const OutlineInputBorder(),
                  ),
                  validator: (v) {
                    final t = v?.trim() ?? '';
                    if (t.length < 3 || t.length > 32) return l.regUsernameError;
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordCtrl,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: l.regPasswordLabel,
                    border: const OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.length < 8) ? l.regPasswordError : null,
                ),
                const SizedBox(height: 16),
                // KVKK + Kullanim Sozlesmesi onayi
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _kvkkAccepted,
                      onChanged: (v) => setState(() {
                        _kvkkAccepted = v ?? false;
                        if (_kvkkAccepted) _error = null;
                      }),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Wrap(
                          children: [
                            Text(l.regIReadAccept),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => const KvkkScreen()),
                              ),
                              child: Text(
                                l.regKvkkText,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            Text(l.regAnd),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => const SozlesmeScreen()),
                              ),
                              child: Text(
                                l.regAgreementText,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Kullanim Sartlari ve Sorumluluk Reddi onayi (uygulama ici ekran)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _termsAccepted,
                      onChanged: (v) => setState(() {
                        _termsAccepted = v ?? false;
                        if (_termsAccepted) _error = null;
                      }),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Wrap(
                          children: [
                            Text(l.regIReadAccept),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => const TermsScreen()),
                              ),
                              child: Text(
                                l.regTermsText,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                      : Text(l.regButton),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

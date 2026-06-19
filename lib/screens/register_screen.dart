import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../services/auth_service.dart';

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
  String? _error;
  String? _recoveryToken; // basarili kayittan sonra TEK SEFER gosterilir

  Future<void> _openLink(String path) async {
    final uri = Uri.parse('https://sifreliveritransferi.com/$path');
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sayfa acilamadi.')),
        );
      }
    }
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    if (!_kvkkAccepted) {
      setState(() => _error = 'Devam etmek icin KVKK Aydinlatma Metni ve Kullanim Sozlesmesi\'ni onaylamaniz gerekiyor.');
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
    // Kayit basariliysa, kurtarma kodunu goster. Sunucu bu kodu BIR DAHA
    // gondermez - kullanici kaydetmeden ekrandan cikarsa kod kaybolur.
    if (_recoveryToken != null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Hesap Olusturuldu')),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Kurtarma kodunuz - bunu guvenli bir yere kaydedin. '
                'Sifrenizi unutursaniz hesabiniza sadece bu kodla geri '
                'donebilirsiniz ve bu kod bir daha gosterilmeyecek.',
                style: TextStyle(fontWeight: FontWeight.bold),
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
                child: const Text('Kaydettim, giris ekranina don'),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Kayit Ol')),
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
                  decoration: const InputDecoration(
                    labelText: 'Kullanici adi (3-32 karakter)',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) {
                    final t = v?.trim() ?? '';
                    if (t.length < 3 || t.length > 32) return '3-32 karakter olmali';
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordCtrl,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Sifre (en az 8 karakter)',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.length < 8) ? 'En az 8 karakter olmali' : null,
                ),
                const SizedBox(height: 16),
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
                            const Text('Okudum, onayliyorum: '),
                            GestureDetector(
                              onTap: () => _openLink('kvkk.html'),
                              child: Text(
                                'KVKK Aydinlatma Metni',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            const Text(' ve '),
                            GestureDetector(
                              onTap: () => _openLink('sozlesme.html'),
                              child: Text(
                                'Kullanim Sozlesmesi',
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
                      : const Text('Kayit Ol'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

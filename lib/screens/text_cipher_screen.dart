import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../crypto/text_cipher.dart';
import '../l10n/app_localizations.dart';

/// Tamamen cihazda calisan parola tabanli mesaj sifreleme ekrani.
/// Sunucuya HIC dokunmaz: sifrele -> kopyala -> ilet -> yapistir -> coz.
class TextCipherScreen extends StatefulWidget {
  const TextCipherScreen({super.key});

  @override
  State<TextCipherScreen> createState() => _TextCipherScreenState();
}

class _TextCipherScreenState extends State<TextCipherScreen> {
  bool _encryptMode = true; // true = sifrele, false = coz

  final _inputCtrl = TextEditingController();
  final _pwdCtrl = TextEditingController();
  String? _output;
  String? _error;
  bool _busy = false;
  int _ttlSeconds = 0; // 0 = suresiz (varsayilan, eski davranis)

  void _switchMode(bool encrypt) {
    if (_encryptMode == encrypt) return;
    setState(() {
      _encryptMode = encrypt;
      _inputCtrl.clear();
      _pwdCtrl.clear();
      _output = null;
      _error = null;
      _ttlSeconds = 0;
    });
  }

  Future<void> _run() async {
    final l = AppLocalizations.of(context);
    final input = _inputCtrl.text.trim();
    final pwd = _pwdCtrl.text;

    if (input.isEmpty) {
      setState(() => _error =
          _encryptMode ? l.cphErrEmptyText : l.cphErrEmptyEncrypted);
      return;
    }
    if (pwd.isEmpty) {
      setState(() => _error = l.cphErrEmptyPwd);
      return;
    }

    setState(() {
      _busy = true;
      _error = null;
      _output = null;
    });

    try {
      final result = _encryptMode
          ? await TextCipher.encrypt(_inputCtrl.text, pwd,
              ttlSeconds: _ttlSeconds)
          : await TextCipher.decrypt(input, pwd);
      if (!mounted) return;
      setState(() => _output = result);
    } on FormatException catch (e) {
      if (!mounted) return;
      // Suresi dolmus SVT2 blogu — icerik GOSTERILMEZ.
      setState(() => _error =
          e.message == 'expired' ? l.cphExpiredError : l.cphErrDecrypt);
    } catch (e) {
      if (!mounted) return;
      setState(() => _error = l.cphErrDecrypt);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _copyOutput() async {
    final l = AppLocalizations.of(context);
    if (_output == null) return;
    await Clipboard.setData(ClipboardData(text: _output!));
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l.cphCopied)),
    );
  }

  Future<void> _pasteInput() async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    if (data?.text != null && mounted) {
      setState(() => _inputCtrl.text = data!.text!);
    }
  }

  @override
  void dispose() {
    _inputCtrl.dispose();
    _pwdCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.cphTitle)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Mod secici
              SegmentedButton<bool>(
                segments: [
                  ButtonSegment(
                    value: true,
                    icon: const Icon(Icons.lock_outline),
                    label: Text(l.cphModeEncrypt),
                  ),
                  ButtonSegment(
                    value: false,
                    icon: const Icon(Icons.lock_open_outlined),
                    label: Text(l.cphModeDecrypt),
                  ),
                ],
                selected: {_encryptMode},
                onSelectionChanged: (s) => _switchMode(s.first),
              ),
              const SizedBox(height: 16),
              Text(
                l.cphIntro,
                style: const TextStyle(fontSize: 12, color: Colors.grey, height: 1.4),
              ),
              const SizedBox(height: 20),
              // Girdi alani
              TextField(
                controller: _inputCtrl,
                enabled: !_busy,
                maxLines: _encryptMode ? 6 : 5,
                minLines: 3,
                decoration: InputDecoration(
                  labelText: _encryptMode ? l.cphPlainLabel : l.cphPasteLabel,
                  hintText: _encryptMode ? l.cphPlainHint : l.cphPasteHint,
                  border: const OutlineInputBorder(),
                  alignLabelWithHint: true,
                  suffixIcon: _encryptMode
                      ? null
                      : IconButton(
                          onPressed: _busy ? null : _pasteInput,
                          icon: const Icon(Icons.paste),
                          tooltip: l.cphPaste,
                        ),
                ),
              ),
              const SizedBox(height: 16),
              // Parola
              TextField(
                controller: _pwdCtrl,
                enabled: !_busy,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: l.cphPassword,
                  hintText: l.cphPasswordHint,
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.key),
                ),
              ),
              if (_encryptMode) ...[
                const SizedBox(height: 8),
                Text(
                  l.cphPwdWarning,
                  style: const TextStyle(fontSize: 11, color: Colors.amber, height: 1.4),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<int>(
                  initialValue: _ttlSeconds,
                  decoration: InputDecoration(
                    labelText: l.cphTtlLabel,
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.timer_outlined),
                  ),
                  items: [
                    DropdownMenuItem(value: 0, child: Text(l.cphTtlNone)),
                    DropdownMenuItem(value: 3600, child: Text(l.cphTtl1h)),
                    DropdownMenuItem(value: 86400, child: Text(l.cphTtl24h)),
                    DropdownMenuItem(value: 604800, child: Text(l.cphTtl7d)),
                  ],
                  onChanged: _busy
                      ? null
                      : (v) => setState(() => _ttlSeconds = v ?? 0),
                ),
                if (_ttlSeconds > 0) ...[
                  const SizedBox(height: 8),
                  Text(
                    l.cphTtlNote,
                    style: const TextStyle(
                        fontSize: 11, color: Colors.grey, height: 1.4),
                  ),
                ],
              ],
              if (_error != null) ...[
                const SizedBox(height: 12),
                Text(_error!, style: const TextStyle(color: Colors.redAccent)),
              ],
              const SizedBox(height: 20),
              FilledButton.icon(
                onPressed: _busy ? null : _run,
                icon: _busy
                    ? const SizedBox(
                        height: 18, width: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Icon(_encryptMode ? Icons.lock : Icons.lock_open),
                label: Text(_encryptMode ? l.cphEncryptBtn : l.cphDecryptBtn),
              ),
              // Sonuc
              if (_output != null) ...[
                const SizedBox(height: 24),
                Text(
                  _encryptMode ? l.cphEncryptedLabel : l.cphResultLabel,
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).colorScheme.outline),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black.withValues(alpha: 0.25),
                  ),
                  child: SelectableText(
                    _output!,
                    style: TextStyle(
                      fontFamily: _encryptMode ? 'monospace' : null,
                      fontSize: _encryptMode ? 12 : 14,
                    ),
                  ),
                ),
                if (_encryptMode && _ttlSeconds > 0) ...[
                  const SizedBox(height: 8),
                  Builder(builder: (_) {
                    final info = TextCipher.peekExpiry(_output!);
                    if (info == null) return const SizedBox.shrink();
                    final d = info.expiresAt;
                    String p(int n) => n.toString().padLeft(2, '0');
                    final txt =
                        '${p(d.day)}.${p(d.month)}.${d.year} ${p(d.hour)}:${p(d.minute)}';
                    return Text(
                      l.cphExpiresAt(txt),
                      style: const TextStyle(
                          fontSize: 12, color: Colors.amber, height: 1.4),
                    );
                  }),
                ],
                const SizedBox(height: 12),
                FilledButton.icon(
                  onPressed: _copyOutput,
                  icon: const Icon(Icons.copy),
                  label: Text(l.cphCopy),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

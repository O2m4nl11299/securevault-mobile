import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../services/upload_service.dart';

enum _Phase { idle, working, done }

class TextEncryptScreen extends StatefulWidget {
  const TextEncryptScreen({super.key});
  @override
  State<TextEncryptScreen> createState() => _TextEncryptScreenState();
}

class _TextEncryptScreenState extends State<TextEncryptScreen> {
  final _textCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _extraPwdCtrl = TextEditingController();
  final _uploadService = UploadService();
  _Phase _phase = _Phase.idle;
  String? _error;
  UploadResult? _result;
  int _charCount = 0;
  final List<_LogLine> _logs = [];

  void _addLog(String type, String msg) {
    if (!mounted) return;
    setState(() => _logs.add(_LogLine(type, msg, DateTime.now())));
  }

  @override
  void initState() {
    super.initState();
    _textCtrl.addListener(() {
      setState(() => _charCount = _textCtrl.text.length);
    });
  }

  bool _isValidEmail(String v) =>
      RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(v);

  Future<void> _start() async {
    final text = _textCtrl.text;
    if (text.trim().isEmpty) {
      setState(() => _error = 'Sifrelenecek metni girin.');
      return;
    }
    final email = _emailCtrl.text.trim();
    if (!_isValidEmail(email)) {
      setState(() => _error = 'Gecerli bir e-posta adresi girin.');
      return;
    }
    setState(() {
      _phase = _Phase.working;
      _error = null;
      _logs.clear();
    });
    try {
      final result = await _uploadService.uploadText(
        text: text,
        recipientEmail: email,
        extraPassword: _extraPwdCtrl.text.trim().isEmpty
            ? null
            : _extraPwdCtrl.text.trim(),
        onLog: _addLog,
      );
      if (!mounted) return;
      setState(() {
        _result = result;
        _phase = _Phase.done;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = e.toString();
        _phase = _Phase.idle;
      });
    }
  }

  void _reset() {
    setState(() {
      _result = null;
      _error = null;
      _phase = _Phase.idle;
      _textCtrl.clear();
      _emailCtrl.clear();
      _extraPwdCtrl.clear();
    });
  }

  Future<void> _share(String url) async {
    await SharePlus.instance.share(
      ShareParams(text: url, subject: 'Sifreli metin - SecureVault'),
    );
  }

  @override
  void dispose() {
    _textCtrl.dispose();
    _emailCtrl.dispose();
    _extraPwdCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Metin Sifrele')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: _phase == _Phase.done && _result != null
              ? _buildSuccess(context, _result!)
              : _buildForm(context),
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    final busy = _phase == _Phase.working;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _textCtrl,
          enabled: !busy,
          maxLines: 8,
          minLines: 5,
          decoration: const InputDecoration(
            labelText: 'Sifrelenecek metin',
            hintText: 'Sifrelemek istediginiz metni buraya yazin veya yapistirin...',
            border: OutlineInputBorder(),
            alignLabelWithHint: true,
          ),
        ),
        const SizedBox(height: 4),
        Align(
          alignment: Alignment.centerRight,
          child: Text('$_charCount karakter',
              style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _emailCtrl,
          enabled: !busy,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: 'Alicinin e-posta adresi',
            helperText: 'Kayit amacli - linki bir sonraki ekranda paylasirsiniz.',
            helperMaxLines: 2,
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _extraPwdCtrl,
          enabled: !busy,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Ek sifre korumasi (opsiyonel)',
            helperText: 'Belirlerseniz, aliciya bu sifreyi ayrica iletmeniz gerekir.',
            helperMaxLines: 2,
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.lock_outline),
          ),
        ),
        if (_error != null) ...[
          const SizedBox(height: 12),
          Text(_error!, style: const TextStyle(color: Colors.redAccent)),
        ],
        const SizedBox(height: 24),
        if (busy) ...[
          const LinearProgressIndicator(),
          const SizedBox(height: 12),
          _buildLogBox(context),
        ] else
          FilledButton(
            onPressed: _start,
            child: const Text('Sifrele ve Yukle'),
          ),
      ],
    );
  }

  Widget _buildSuccess(BuildContext context, UploadResult result) {
    final ttlText = result.ttlSeconds < 3600
        ? '${(result.ttlSeconds / 60).round()} dakika'
        : '${(result.ttlSeconds / 3600).round()} saat';
    final hasPwd = _extraPwdCtrl.text.trim().isNotEmpty;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Icon(Icons.check_circle, color: Colors.greenAccent, size: 56),
        const SizedBox(height: 12),
        Text(
          'Metin sifrelenip yuklendi.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 6),
        Text(
          result.emailSent
              ? '📧 İndirme linki ${_emailCtrl.text.trim()} adresine gönderildi.'
              : '⚠ E-posta gönderilemedi. Linki aşağıdan paylaşabilirsiniz.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: result.emailSent ? Colors.greenAccent : Colors.amber,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Bu link $ttlText icinde gecersiz olur ve sadece BIR KEZ kullanilabilir.',
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.grey),
        ),
        if (hasPwd) ...[
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Ek sifre belirlediniz. Aliciya bu sifreyi ayrica iletmeyi unutmayin.',
              style: TextStyle(color: Colors.amber, fontSize: 12),
            ),
          ),
        ],
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.outline),
            borderRadius: BorderRadius.circular(8),
          ),
          child: SelectableText(
            result.downloadUrl,
            style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
          ),
        ),
        const SizedBox(height: 16),
        FilledButton.icon(
          onPressed: () => _share(result.downloadUrl),
          icon: const Icon(Icons.share),
          label: const Text('Linki Paylas'),
        ),
        const SizedBox(height: 8),
        OutlinedButton(
          onPressed: _reset,
          child: const Text('Baska bir metin sifrele'),
        ),
      ],
    );
  }

  Widget _buildLogBox(BuildContext context) {
    if (_logs.isEmpty) return const SizedBox.shrink();
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxHeight: 180),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.35),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).colorScheme.outline),
      ),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _logs.map((l) {
            final color = l.type == 'ok'
                ? Colors.greenAccent
                : l.type == 'err'
                    ? Colors.redAccent
                    : Colors.grey.shade400;
            final ts =
                '${l.time.hour.toString().padLeft(2, '0')}:${l.time.minute.toString().padLeft(2, '0')}:${l.time.second.toString().padLeft(2, '0')}';
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(
                '$ts  ${l.msg}',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 11,
                  color: color,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _LogLine {
  final String type;
  final String msg;
  final DateTime time;
  _LogLine(this.type, this.msg, this.time);
}

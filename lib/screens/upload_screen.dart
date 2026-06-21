import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../services/upload_service.dart';

enum _Phase { idle, working, done, error }

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});
  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  final _emailCtrl = TextEditingController();
  final _extraPwdCtrl = TextEditingController();
  final _uploadService = UploadService();
  PlatformFile? _pickedFile;
  _Phase _phase = _Phase.idle;
  double _progress = 0;
  String? _error;
  UploadResult? _result;

  Future<void> _pickFile() async {
    final result = await FilePicker.pickFiles();
    if (result == null || result.files.isEmpty) return;
    setState(() {
      _pickedFile = result.files.single;
      _result = null;
      _error = null;
      _phase = _Phase.idle;
    });
  }

  bool _isValidEmail(String v) =>
      RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(v);

  Future<void> _startUpload() async {
    final file = _pickedFile;
    final path = file?.path;
    if (file == null || path == null) {
      setState(() => _error = 'Once bir dosya secin.');
      return;
    }
    final email = _emailCtrl.text.trim();
    if (!_isValidEmail(email)) {
      setState(() => _error = 'Gecerli bir e-posta adresi girin.');
      return;
    }
    setState(() {
      _phase = _Phase.working;
      _progress = 0;
      _error = null;
    });
    try {
      final result = await _uploadService.uploadFile(
        filePath: path,
        originalName: file.name,
        recipientEmail: email,
        extraPassword: _extraPwdCtrl.text.trim().isEmpty
            ? null
            : _extraPwdCtrl.text.trim(),
        onProgress: (sent, total) {
          if (!mounted) return;
          setState(() => _progress = total > 0 ? sent / total : 0);
        },
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
        _phase = _Phase.error;
      });
    }
  }

  void _reset() {
    setState(() {
      _pickedFile = null;
      _result = null;
      _error = null;
      _phase = _Phase.idle;
      _progress = 0;
      _emailCtrl.clear();
      _extraPwdCtrl.clear();
    });
  }

  Future<void> _share(String url) async {
    await SharePlus.instance.share(
      ShareParams(text: url, subject: 'Sifreli dosya - SecureVault'),
    );
  }

  String _formatSize(int bytes) {
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(0)} KB';
    return '${(bytes / 1024 / 1024).toStringAsFixed(1)} MB';
  }

  @override
  void dispose() {
    _emailCtrl.dispose();
    _extraPwdCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dosya Gonder')),
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
        OutlinedButton.icon(
          onPressed: busy ? null : _pickFile,
          icon: const Icon(Icons.attach_file),
          label: Text(
            _pickedFile == null
                ? 'Dosya Sec'
                : '${_pickedFile!.name} (${_formatSize(_pickedFile!.size)})',
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _emailCtrl,
          enabled: !busy,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: 'Alicinin e-posta adresi',
            helperText: 'Kayit amacli - dosya bu adrese otomatik gonderilmez,\n'
                'linki bir sonraki ekranda istediginiz uygulamadan paylasirsiniz.',
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
            helperText: 'Belirlerseniz, aliciya bu sifreyi ayrica iletmeniz\n'
                'gerekir. Dosya, sifre girilmeden indirilemez.',
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
          LinearProgressIndicator(value: _progress == 0 ? null : _progress),
          const SizedBox(height: 8),
          Text(
            'Sifreleniyor ve yukleniyor... %${(_progress * 100).toStringAsFixed(0)}',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey),
          ),
        ] else
          FilledButton(
            onPressed: _startUpload,
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
          'Dosya sifrelenip yuklendi.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
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
              'Ek sifre belirlediniz. Aliciya bu sifreyi ayrica (linkten farkli bir kanaldan) iletmeyi unutmayin.',
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
          child: const Text('Baska bir dosya gonder'),
        ),
      ],
    );
  }
}


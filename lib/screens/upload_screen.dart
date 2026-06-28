import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
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
  final List<_LogLine> _logs = [];

  void _addLog(String type, String msg) {
    if (!mounted) return;
    setState(() => _logs.add(_LogLine(type, msg, DateTime.now())));
  }

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
      setState(() => _error = AppLocalizations.of(context).upErrPickFile);
      return;
    }
    final email = _emailCtrl.text.trim();
    if (!_isValidEmail(email)) {
      setState(() => _error = AppLocalizations.of(context).upErrEmail);
      return;
    }
    setState(() {
      _phase = _Phase.working;
      _progress = 0;
      _error = null;
      _logs.clear();
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
      ShareParams(text: url, subject: AppLocalizations.of(context).upShareSubject),
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
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.upTitle)),
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
    final l = AppLocalizations.of(context);
    final busy = _phase == _Phase.working;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        OutlinedButton.icon(
          onPressed: busy ? null : _pickFile,
          icon: const Icon(Icons.attach_file),
          label: Text(
            _pickedFile == null
                ? l.upPickFile
                : '${_pickedFile!.name} (${_formatSize(_pickedFile!.size)})',
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _emailCtrl,
          enabled: !busy,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: l.upRecipientEmail,
            helperText: l.upRecipientHelper,
            helperMaxLines: 2,
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _extraPwdCtrl,
          enabled: !busy,
          obscureText: true,
          decoration: InputDecoration(
            labelText: l.upExtraPwd,
            helperText: l.upExtraPwdHelper,
            helperMaxLines: 2,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.lock_outline),
          ),
        ),
        if (_error != null) ...[
          const SizedBox(height: 12),
          Text(_error!, style: const TextStyle(color: Colors.redAccent)),
        ],
        const SizedBox(height: 24),
        if (busy) ...[
          LinearProgressIndicator(value: _progress == 0 ? null : _progress),
          const SizedBox(height: 4),
          Text(
            '%${(_progress * 100).toStringAsFixed(0)}',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(height: 12),
          _buildLogBox(context),
        ] else
          FilledButton(
            onPressed: _startUpload,
            child: Text(l.upEncryptUpload),
          ),
      ],
    );
  }

  Widget _buildSuccess(BuildContext context, UploadResult result) {
    final l = AppLocalizations.of(context);
    final ttlText = result.ttlSeconds < 3600
        ? l.upMinutes((result.ttlSeconds / 60).round())
        : l.upHours((result.ttlSeconds / 3600).round());
    final hasPwd = _extraPwdCtrl.text.trim().isNotEmpty;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Icon(Icons.check_circle, color: Colors.greenAccent, size: 56),
        const SizedBox(height: 12),
        Text(
          l.upSuccess,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 6),
        Text(
          result.emailSent
              ? l.upEmailSent(_emailCtrl.text.trim())
              : l.upEmailFailed,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: result.emailSent ? Colors.greenAccent : Colors.amber,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          l.upLinkExpiry(ttlText),
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
            child: Text(
              l.upExtraPwdWarning,
              style: const TextStyle(color: Colors.amber, fontSize: 12),
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
          label: Text(l.upShareLink),
        ),
        const SizedBox(height: 8),
        OutlinedButton(
          onPressed: _reset,
          child: Text(l.upSendAnother),
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


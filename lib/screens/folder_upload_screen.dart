import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:share_plus/share_plus.dart';
import '../services/upload_service.dart';
import '../services/secure_storage_service.dart';
import 'premium_screen.dart';

enum _Phase { idle, working, done, error }

class FolderUploadScreen extends StatefulWidget {
  const FolderUploadScreen({super.key});
  @override
  State<FolderUploadScreen> createState() => _FolderUploadScreenState();
}

class _FolderUploadScreenState extends State<FolderUploadScreen> {
  final _emailCtrl = TextEditingController();
  final _extraPwdCtrl = TextEditingController();
  final _uploadService = UploadService();
  String? _folderPath;
  String? _folderName;
  _Phase _phase = _Phase.idle;
  double _progress = 0;
  String? _error;
  UploadResult? _result;
  bool _vaultMode = false;
  final List<_LogLine> _logs = [];

  void _addLog(String type, String msg) {
    if (!mounted) return;
    setState(() => _logs.add(_LogLine(type, msg, DateTime.now())));
  }

  Future<void> _pickFolder() async {
    final path = await FilePicker.getDirectoryPath();
    if (path == null) return;
    final parts = path.split(RegExp(r'[\\/]')).where((s) => s.isNotEmpty).toList();
    setState(() {
      _folderPath = path;
      _folderName = parts.isNotEmpty ? parts.last : AppLocalizations.of(context).fldDefaultName;
      _result = null;
      _error = null;
      _phase = _Phase.idle;
    });
  }

  bool _isValidEmail(String v) =>
      RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(v);

  Future<void> _start() async {
    final path = _folderPath;
    if (path == null) {
      setState(() => _error = AppLocalizations.of(context).fldErrPick);
      return;
    }
    final email = _emailCtrl.text.trim();
    if (!_isValidEmail(email)) {
      setState(() => _error = AppLocalizations.of(context).upErrEmail);
      return;
    }
    if (_vaultMode) {
      final plan = await SecureStorageService.readPlan();
      final isAdmin = await SecureStorageService.readIsAdmin();
      if (!mounted) return;
      if (plan != 'premium' && !isAdmin) {
        _showVaultPremiumDialog();
        return;
      }
    }
    setState(() {
      _phase = _Phase.working;
      _progress = 0;
      _error = null;
      _logs.clear();
    });
    try {
      final result = await _uploadService.uploadFolder(
        l: AppLocalizations.of(context),
        folderPath: path,
        recipientEmail: email,
        vaultMode: _vaultMode,
        extraPassword: _extraPwdCtrl.text.trim().isEmpty
            ? null
            : _extraPwdCtrl.text.trim(),
        onLog: _addLog,
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
      _folderPath = null;
      _folderName = null;
      _result = null;
      _error = null;
      _phase = _Phase.idle;
      _progress = 0;
      _emailCtrl.clear();
      _extraPwdCtrl.clear();
      _vaultMode = false;
    });
  }

  Future<void> _share(String url) async {
    await SharePlus.instance.share(
      ShareParams(text: url, subject: AppLocalizations.of(context).fldShareSubject),
    );
  }

  void _showVaultPremiumDialog() {
    final l = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Row(children: [
          const Icon(Icons.workspace_premium, color: Colors.amber),
          const SizedBox(width: 8),
          Expanded(child: Text(l.cphPremiumTitle)),
        ]),
        content: Text(l.upVaultHint),
        actions: [
          TextButton(onPressed: () => Navigator.of(ctx).pop(), child: Text(l.cphPremiumCancel)),
          FilledButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PremiumScreen()));
            },
            child: Text(l.cphPremiumGo),
          ),
        ],
      ),
    );
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
      appBar: AppBar(title: Text(l.fldTitle)),
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
          onPressed: busy ? null : _pickFolder,
          icon: const Icon(Icons.folder_open),
          label: Text(
            _folderName == null ? l.fldPick : _folderName!,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          l.fldDescription,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _emailCtrl,
          enabled: !busy,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: l.upRecipientEmail,
            helperText: l.fldRecipientHelper,
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
            helperText: l.txtExtraPwdHelper,
            helperMaxLines: 2,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.lock_outline),
          ),
        ),
        const SizedBox(height: 8),
        CheckboxListTile(
          value: _vaultMode,
          onChanged: busy ? null : (v) => setState(() => _vaultMode = v ?? false),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          title: Row(children: [
            const Icon(Icons.workspace_premium, color: Colors.amber, size: 18),
            const SizedBox(width: 6),
            Expanded(child: Text(l.upVaultLabel, style: const TextStyle(fontSize: 14))),
          ]),
          subtitle: Text(l.upVaultHint, style: const TextStyle(fontSize: 11, color: Colors.grey)),
        ),
        if (_error != null) ...[
          const SizedBox(height: 12),
          Text(_error!, style: const TextStyle(color: Colors.redAccent)),
        ],
        const SizedBox(height: 24),
        if (busy) ...[
          Text(
            l.fldPackaging,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(value: _progress == 0 ? null : _progress),
          const SizedBox(height: 12),
          _buildLogBox(context),
        ] else
          FilledButton(
            onPressed: _start,
            child: Text(l.fldPackButton),
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
          l.fldSuccess,
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
              l.txtExtraPwdWarning,
              style: const TextStyle(color: Colors.amber, fontSize: 12),
            ),
          ),
        ],
        const SizedBox(height: 16),
        if (result.vaultLink1 != null && result.vaultLink2 != null) ...[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(l.upVaultSaveWarning,
                style: const TextStyle(
                    fontSize: 12, color: Colors.amber, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blueGrey.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(l.upVaultEmailSkipped,
                style: const TextStyle(fontSize: 12, color: Colors.blueGrey)),
          ),
          const SizedBox(height: 12),
          Text(l.upVaultLink1,
              style: const TextStyle(
                  fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey)),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.outline),
              borderRadius: BorderRadius.circular(8),
            ),
            child: SelectableText(result.vaultLink1!,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12)),
          ),
          const SizedBox(height: 8),
          FilledButton.icon(
            onPressed: () => _share(result.vaultLink1!),
            icon: const Icon(Icons.share),
            label: Text(l.upVaultShare1),
          ),
          const SizedBox(height: 16),
          Text(l.upVaultLink2,
              style: const TextStyle(
                  fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey)),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.outline),
              borderRadius: BorderRadius.circular(8),
            ),
            child: SelectableText(result.vaultLink2!,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12)),
          ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: () => _share(result.vaultLink2!),
            icon: const Icon(Icons.share),
            label: Text(l.upVaultShare2),
          ),
        ] else ...[
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
        ],
        const SizedBox(height: 8),
        OutlinedButton(
          onPressed: _reset,
          child: Text(l.fldSendAnother),
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

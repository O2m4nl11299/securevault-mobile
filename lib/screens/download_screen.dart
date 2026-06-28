import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import '../services/download_service.dart';

enum _Phase { idle, working, done, error }

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  // Bu eşiğin altındaki dosyalarda native "Farklı Kaydet" diyalogu sunulur
  // (file_picker.saveFile tüm baytı tek seferde bellekte istiyor — bu yüzden
  // büyük dosyalarda RAM riskine girmemek için sadece Paylaş yolunu sunuyoruz).
  static const int _directSaveMaxBytes = 100 * 1024 * 1024; // 100 MB

  final _linkCtrl = TextEditingController();
  final _service = DownloadService();

  _Phase _phase = _Phase.idle;
  double _progress = 0;
  String? _error;
  DownloadResult? _result;

  Future<void> _pasteFromClipboard() async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    if (data?.text != null && mounted) {
      setState(() => _linkCtrl.text = data!.text!);
    }
  }

  Future<void> _startDownload() async {
    final input = _linkCtrl.text.trim();
    final parsed = DownloadService.parseLink(input);
    if (parsed == null) {
      setState(() => _error = AppLocalizations.of(context).dlErrInvalid);
      return;
    }
    if (parsed.pwdHash != null) {
      setState(() => _error = AppLocalizations.of(context).dlErrPwdProtected);
      return;
    }

    setState(() {
      _phase = _Phase.working;
      _progress = 0;
      _error = null;
    });

    try {
      final result = await _service.downloadAndDecrypt(
        token: parsed.token,
        keyB64: parsed.keyB64,
        onProgress: (received, total) {
          if (!mounted) return;
          setState(() => _progress = total > 0 ? received / total : 0);
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
      _linkCtrl.clear();
      _result = null;
      _error = null;
      _phase = _Phase.idle;
      _progress = 0;
    });
  }

  Future<void> _saveToDevice(DownloadResult result) async {
    try {
      final bytes = await File(result.filePath).readAsBytes();
      final savedPath = await FilePicker.saveFile(
        fileName: result.fileName,
        bytes: bytes,
      );
      if (!mounted) return;
      if (savedPath != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context).dlSaved(savedPath))),
        );
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context).dlSaveFailed(e.toString()))),
      );
    }
  }

  Future<void> _shareFile(String path) async {
    // NOT: share_plus 13.x'in dosya paylaşımı için ShareParams(files: ...)
    // kullanıyoruz — text paylaşımında (upload_screen) bu API doğrulandı,
    // dosya paylaşımı bu oturumda ilk kez test ediliyor. Hata verirse
    // çıktıyı paylaş, düzeltelim.
    await SharePlus.instance.share(
      ShareParams(files: [XFile(path)]),
    );
  }

  @override
  void dispose() {
    _linkCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.dlTitle)),
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
        TextField(
          controller: _linkCtrl,
          enabled: !busy,
          minLines: 2,
          maxLines: 4,
          decoration: InputDecoration(
            labelText: l.dlLinkLabel,
            hintText: 'https://sifreliveritransferi.com/dl/...#...',
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              onPressed: busy ? null : _pasteFromClipboard,
              icon: const Icon(Icons.paste),
              tooltip: l.dlPasteTooltip,
            ),
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
            l.dlDownloading((_progress * 100).toStringAsFixed(0)),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey),
          ),
        ] else
          FilledButton(
            onPressed: _startDownload,
            child: Text(l.dlButton),
          ),
        const SizedBox(height: 16),
        Text(
          l.dlNote,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildSuccess(BuildContext context, DownloadResult result) {
    final l = AppLocalizations.of(context);
    final canDirectSave = result.fileSizeBytes > 0 &&
        result.fileSizeBytes <= _directSaveMaxBytes;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Icon(Icons.check_circle, color: Colors.greenAccent, size: 56),
        const SizedBox(height: 12),
        Text(
          l.dlSuccess(result.fileName),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        if (canDirectSave) ...[
          FilledButton.icon(
            onPressed: () => _saveToDevice(result),
            icon: const Icon(Icons.save_alt),
            label: Text(l.dlSaveToDevice),
          ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: () => _shareFile(result.filePath),
            icon: const Icon(Icons.share),
            label: Text(l.dlShare),
          ),
        ] else ...[
          FilledButton.icon(
            onPressed: () => _shareFile(result.filePath),
            icon: const Icon(Icons.share),
            label: const Text('Paylaş'),
          ),
          const SizedBox(height: 8),
          Text(
            l.dlLargeFileNote,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
        const SizedBox(height: 8),
        OutlinedButton(
          onPressed: _reset,
          child: Text(l.dlDownloadAnother),
        ),
      ],
    );
  }
}

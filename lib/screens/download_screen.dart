import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import '../services/download_service.dart';
import '../crypto/vault_split.dart';

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
  final _vaultShare2Ctrl = TextEditingController();
  bool _vaultNeeded = false; // link'te k1./k2. parcasi algilandi

  Future<void> _pasteFromClipboard() async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    if (data?.text != null && mounted) {
      setState(() => _linkCtrl.text = data!.text!);
    }
  }

  Future<void> _startDownload() async {
    final l0 = AppLocalizations.of(context);
    final input = _linkCtrl.text.trim();

    // ── Iki Anahtarli Kasa akisi ──
    // Link'te bir parca (k1./k2.) var mi? Fragment'i ayikla.
    String? shareInLink;
    final hashIdx = input.indexOf('#');
    if (hashIdx >= 0) {
      final frag = Uri.decodeComponent(input.substring(hashIdx + 1));
      if (VaultSplit.isShare(frag)) shareInLink = VaultSplit.extractShare(frag);
    }
    if (shareInLink != null) {
      // Bu bir kasa linki. Token'i cikar.
      final tok = RegExp(r'/dl/([0-9a-fA-F-]{36})').firstMatch(input)?.group(1);
      if (tok == null) {
        setState(() => _error = l0.dlErrInvalid);
        return;
      }
      final share2Raw = _vaultShare2Ctrl.text.trim();
      if (share2Raw.isEmpty) {
        // Ikinci parca henuz girilmedi — alani goster.
        setState(() {
          _vaultNeeded = true;
          _error = null;
        });
        return;
      }
      final share2 = VaultSplit.extractShare(share2Raw);
      if (share2 == null) {
        setState(() => _error = l0.dlVaultInvalid);
        return;
      }
      final combinedKey = await VaultSplit.combine(shareInLink, share2);
      if (combinedKey == null) {
        setState(() => _error = l0.dlVaultMismatch);
        return;
      }
      // Parca dogrulandi — normal indirmeye birlestirilmis anahtarla devam.
      setState(() {
        _phase = _Phase.working;
        _progress = 0;
        _error = null;
      });
      try {
        final result = await _service.downloadAndDecrypt(
          l: l0,
          token: tok,
          keyB64: combinedKey,
          onProgress: (received, total) {
            if (!mounted) return;
            setState(() => _progress = total > 0 ? received / total : 0);
          },
        );
        if (!mounted) return;
        setState(() { _result = result; _phase = _Phase.done; });
      } catch (e) {
        if (!mounted) return;
        setState(() { _error = e.toString(); _phase = _Phase.error; });
      }
      return;
    }

    // ── Normal (tek link) akis ──
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
        l: AppLocalizations.of(context),
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
      _vaultShare2Ctrl.clear();
      _vaultNeeded = false;
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
    _vaultShare2Ctrl.dispose();
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
        if (_vaultNeeded) ...[
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(l.dlVaultNeeded, style: const TextStyle(fontSize: 12, color: Colors.amber)),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _vaultShare2Ctrl,
            enabled: !busy,
            minLines: 1,
            maxLines: 3,
            decoration: InputDecoration(
              labelText: l.dlVaultShareLabel,
              hintText: l.dlVaultShareHint,
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(Icons.vpn_key_outlined),
            ),
          ),
        ],
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
            label: Text(l.dlShare),
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

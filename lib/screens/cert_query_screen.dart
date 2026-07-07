import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../services/api_client.dart';

/// Imha Sertifikasi sorgulama ekrani. Sunucudaki /certificate/:token ile
/// calisir; dosyanin gercekten imha edildigini Ed25519 imzali sertifika ile
/// gosterir. Herkese aciktir (premium/oturum gerektirmez) — token'i bilen
/// sorgulayabilir. Icerik bilgisi icermez (zero-knowledge korunur).
class CertQueryScreen extends StatefulWidget {
  const CertQueryScreen({super.key});

  @override
  State<CertQueryScreen> createState() => _CertQueryScreenState();
}

class _CertQueryScreenState extends State<CertQueryScreen> {
  final _inputCtrl = TextEditingController();
  bool _busy = false;
  String? _error;
  String? _statusMessage; // pending/notFound mesaji
  IconData? _statusIcon;
  Color? _statusColor;
  Map<String, dynamic>? _cert; // destroyed ise sertifika detaylari
  String? _signature;

  static final _tokenRe = RegExp(
      r'[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}',
      caseSensitive: false);

  Future<void> _query() async {
    final l = AppLocalizations.of(context);
    final m = _tokenRe.firstMatch(_inputCtrl.text.trim());
    setState(() {
      _error = null;
      _statusMessage = null;
      _cert = null;
      _signature = null;
    });
    if (m == null) {
      setState(() => _error = l.certErrInvalid);
      return;
    }
    setState(() => _busy = true);
    try {
      final res =
          await ApiClient.instance.dio.get('/certificate/${m.group(0)}');
      final data = res.data;
      if (!mounted) return;
      if (data is Map && data['status'] == 'pending') {
        setState(() {
          _statusMessage = l.certPending;
          _statusIcon = Icons.hourglass_top;
          _statusColor = Colors.orange;
        });
      } else if (data is Map && data['status'] == 'destroyed') {
        setState(() {
          _cert = Map<String, dynamic>.from(data['certificate'] as Map);
          _signature = data['signature'] as String?;
        });
      } else {
        setState(() {
          _statusMessage = l.certNotFound;
          _statusIcon = Icons.search_off;
          _statusColor = Colors.grey;
        });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() => _error = l.certErrNetwork);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  String _fmtDate(String? iso) {
    if (iso == null) return '—';
    try {
      final d = DateTime.parse(iso).toLocal();
      String p(int n) => n.toString().padLeft(2, '0');
      return '${p(d.day)}.${p(d.month)}.${d.year} ${p(d.hour)}:${p(d.minute)}:${p(d.second)}';
    } catch (_) {
      return iso;
    }
  }

  @override
  void dispose() {
    _inputCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.certTitle)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Text(
              l.certIntro,
              style: const TextStyle(
                  fontSize: 13, color: Colors.grey, height: 1.5),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _inputCtrl,
              enabled: !_busy,
              decoration: InputDecoration(
                labelText: l.certInputLabel,
                hintText: l.certInputHint,
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.link),
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: _busy ? null : _query,
              icon: _busy
                  ? const SizedBox(
                      height: 18,
                      width: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.shield_outlined),
              label: Text(l.certQueryButton),
            ),
            if (_error != null) ...[
              const SizedBox(height: 16),
              Text(_error!, style: const TextStyle(color: Colors.redAccent)),
            ],
            if (_statusMessage != null) ...[
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(_statusIcon, color: _statusColor, size: 28),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(_statusMessage!,
                        style: const TextStyle(fontSize: 14, height: 1.5)),
                  ),
                ],
              ),
            ],
            if (_cert != null) ...[
              const SizedBox(height: 24),
              Row(
                children: [
                  const Icon(Icons.verified, color: Colors.green, size: 28),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      l.certDestroyed,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          height: 1.4),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.outline),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _row(
                        l.certFieldReason,
                        _cert!['reason'] == 'downloaded'
                            ? l.certReasonDownloaded
                            : l.certReasonExpired),
                    _row(l.certFieldUploaded,
                        _fmtDate(_cert!['uploadedAt'] as String?)),
                    _row(l.certFieldDeleted,
                        _fmtDate(_cert!['deletedAt'] as String?)),
                    _row(
                        l.certFieldSize,
                        _cert!['sizeBytes'] != null
                            ? '${_cert!['sizeBytes']} B'
                            : '—'),
                    _row('SHA-256',
                        '${(_cert!['tokenHash'] as String? ?? '').substring(0, 24)}...'),
                    if (_signature != null)
                      _row(l.certFieldSignature,
                          '${_signature!.substring(0, 24)}...'),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _row(String k, String v) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(k,
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            SelectableText(v,
                style:
                    const TextStyle(fontFamily: 'monospace', fontSize: 13)),
          ],
        ),
      );
}

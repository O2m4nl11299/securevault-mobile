import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../services/secure_storage_service.dart';
import 'terms_screen.dart';

/// Web sitesindeki bilgi panellerinin mobil karsiligi. Dosya limiti,
/// oturum acan kullanicinin planina gore (sade, sadece deger) gosterilir.
class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  String _fileLimit = '...';

  @override
  void initState() {
    super.initState();
    _loadLimit();
  }

  Future<void> _loadLimit() async {
    final plan = (await SecureStorageService.readPlan()) ?? 'free';
    String limit;
    switch (plan) {
      case 'admin':
        limit = '20 GB';
        break;
      case 'premium':
        limit = '2 GB';
        break;
      default:
        limit = '250 MB';
    }
    if (!mounted) return;
    setState(() => _fileLimit = limit);
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.infoTitle)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _section(context, l.infoFeatures),
            _bullet(context, '🔐', l.infoFeatCipherTitle, l.infoFeatCipherDesc),
            _bullet(context, '📎', l.infoFeatFileTitle, l.infoFeatFileDesc),
            _bullet(context, '📝', l.infoFeatTextTitle, l.infoFeatTextDesc),
            _bullet(context, '🌍', l.infoFeatLangTitle, l.infoFeatLangDesc),
            const SizedBox(height: 24),
            _section(context, l.infoSecFlow),
            _numbered(context, 1, l.infoFlow1),
            _numbered(context, 2, l.infoFlow2),
            _numbered(context, 3, l.infoFlow3),
            _numbered(context, 4, l.infoFlow4),
            _numbered(context, 5, l.infoFlow5),
            _numbered(context, 6, l.infoFlow6),

            const SizedBox(height: 24),
            _section(context, l.infoCrypto),
            _kv(context, l.infoKeyAlgo, 'AES-256-GCM'),
            _kv(context, l.infoKeyQuantum, l.infoValYes, highlight: true),
            _kv(context, l.infoKeyKey, '256-bit CSPRNG'),
            _kv(context, l.infoKeyNonce, l.infoValNonce),
            _kv(context, l.infoKeyAuthTag, l.infoValAuthTag),
            _kv(context, l.infoKeyTransport, 'TLS 1.3'),
            _kv(context, l.infoKeyFileLimit, _fileLimit),
            _kv(context, l.infoKeyTokenLife, l.infoValTokenLife),
            _kv(context, l.infoKeyUsage, l.infoValOnce, highlight: true),
            _kv(context, l.infoKeyServerKey, l.infoValNever, highlight: true),

            const SizedBox(height: 24),
            _section(context, l.infoWhy),
            _bullet(context, '🔐', l.infoWhy1Title, l.infoWhy1Desc),
            _bullet(context, '🗑️', l.infoWhy2Title, l.infoWhy2Desc),
            _bullet(context, '🔑', l.infoWhy3Title, l.infoWhy3Desc),
            _bullet(context, '☁️', l.infoWhy4Title, l.infoWhy4Desc),
            _bullet(context, '🔬', l.infoWhy5Title, l.infoWhy5Desc),

            const SizedBox(height: 24),
            _section(context, l.infoVirus),
            _bullet(context, '🛡️', l.infoVirus1Title, l.infoVirus1Desc),
            _bullet(context, '✅', l.infoVirus2Title, l.infoVirus2Desc),

            const SizedBox(height: 24),
            _section(context, l.infoWhoFor),
            _bullet(context, '⚖️', l.infoWho1Title, l.infoWho1Desc),
            _bullet(context, '💰', l.infoWho2Title, l.infoWho2Desc),
            _bullet(context, '👥', l.infoWho3Title, l.infoWho3Desc),
            _bullet(context, '🏥', l.infoWho4Title, l.infoWho4Desc),
            _bullet(context, '🚀', l.infoWho5Title, l.infoWho5Desc),
            _bullet(context, '👤', l.infoWho6Title, l.infoWho6Desc),

            const SizedBox(height: 24),
            _section(context, l.infoDisclaimer),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                l.infoDisclaimerText,
                style: const TextStyle(fontSize: 13, height: 1.5, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const TermsScreen()),
              ),
              icon: const Icon(Icons.gavel, size: 18),
              label: Text(l.infoReadTerms),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _section(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }

  Widget _numbered(BuildContext context, int n, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 13,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            child: Text('$n', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 13, height: 1.4))),
        ],
      ),
    );
  }

  Widget _kv(BuildContext context, String k, String v, {bool highlight = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(k, style: const TextStyle(fontSize: 13, color: Colors.grey)),
          Flexible(
            child: Text(
              v,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                fontFamily: 'monospace',
                color: highlight ? Colors.redAccent : null,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bullet(BuildContext context, String emoji, String title, String desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 18)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                const SizedBox(height: 2),
                Text(desc, style: const TextStyle(fontSize: 12, color: Colors.grey, height: 1.4)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
/// Sorumluluk Reddi (Disclaimer) Beyani — web'deki /sartlar sayfasiyla ayni
/// icerik, uygulama ici. Turk Borclar Kanunu m.115 kapsaminda hazirlanmis
/// hukuki bir metindir.
class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.termsTitle)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(l.termsHeader,
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 4),
            Text(l.sozLastUpdate,
                style: const TextStyle(color: Colors.grey, fontSize: 12)),
            const SizedBox(height: 12),
            Text(l.termsIntro,
                style: const TextStyle(fontSize: 13, height: 1.6, color: Colors.grey)),
            const SizedBox(height: 12),
            _h(l.termsH1),
            _p(l.termsP1),
            _h(l.termsH2),
            _p(l.termsP2),
            _h(l.termsH3),
            _p(l.termsP3),
            _h(l.termsH4),
            _p(l.termsP4),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            Text(l.termsFooter,
                style: const TextStyle(
                    color: Colors.grey, fontSize: 12, fontStyle: FontStyle.italic)),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
  Widget _h(String t) => Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 6),
        child: Text(t,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold)),
      );
  Widget _p(String t) => Text(t,
      style: const TextStyle(fontSize: 13, height: 1.6, color: Colors.grey));
}

import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

/// KVKK Aydınlatma Metni — web'deki /kvkk sayfasıyla aynı içerik, uygulama içi.
class KvkkScreen extends StatelessWidget {
  const KvkkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.kvkkTitle)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(l.kvkkTitle,
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 4),
            Text(l.sozLastUpdate,
                style: const TextStyle(color: Colors.grey, fontSize: 12)),
            const SizedBox(height: 20),
            _h(l.kvkkH1),
            _p(l.kvkkP1),
            _h(l.kvkkH2),
            _p(l.kvkkP2a),
            _p(l.kvkkP2b),
            _h(l.kvkkH3),
            _p(l.kvkkP3),
            _h(l.kvkkH4),
            _p(l.kvkkP4),
            _h(l.kvkkH5),
            _p(l.kvkkP5),
            _h(l.kvkkH6),
            _p(l.kvkkP6),
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

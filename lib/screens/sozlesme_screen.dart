import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

/// Kullanım Sözleşmesi — web'deki /sozlesme sayfasıyla aynı içerik, uygulama içi.
class SozlesmeScreen extends StatelessWidget {
  const SozlesmeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.sozTitle)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(l.sozTitle,
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 4),
            Text(l.sozLastUpdate,
                style: const TextStyle(color: Colors.grey, fontSize: 12)),
            const SizedBox(height: 20),
            _h(l.sozH1),
            _p(l.sozP1),
            _h(l.sozH2),
            _p(l.sozP2),
            _h(l.sozH3),
            _p(l.sozP3),
            _h(l.sozH4),
            _p(l.sozP4),
            _h(l.sozH5),
            _p(l.sozP5),
            _h(l.sozH6),
            _p(l.sozP6),
            _h(l.sozH7),
            _p(l.sozP7),
            _h(l.sozH8),
            _p(l.sozP8),
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

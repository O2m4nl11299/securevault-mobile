import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

/// Kullanim Sartlari ve Sorumluluk Reddi. Hukuki bir metin olmaktan cok,
/// hizmetin nasil calistigini ve sinirlarini kullaniciya net anlatan bir
/// bilgilendirme ekranidir. (Ticari kullanim icin bir hukukcuya danisilmasi
/// onerilir.)
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
            Text(
              l.termsHeader,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 4),
            Text(
              l.termsIntro,
              style: const TextStyle(color: Colors.grey, fontSize: 13),
            ),
            const SizedBox(height: 24),

            _item(
              context,
              '🔐',
              l.terms1Title,
              l.terms1Body,
            ),
            _item(
              context,
              '⏳',
              l.terms2Title,
              l.terms2Body,
            ),
            _item(
              context,
              '💾',
              l.terms3Title,
              l.terms3Body,
            ),
            _item(
              context,
              '☁️',
              l.terms4Title,
              l.terms4Body,
            ),
            _item(
              context,
              '⚖️',
              l.terms5Title,
              l.terms5Body,
            ),
            _item(
              context,
              '🛠️',
              l.terms6Title,
              l.terms6Body,
            ),

            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            Text(
              l.termsFooter,
              style: const TextStyle(color: Colors.grey, fontSize: 12, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _item(BuildContext context, String emoji, String title, String body) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(emoji, style: const TextStyle(fontSize: 18)),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Text(
              body,
              style: const TextStyle(fontSize: 13, height: 1.5, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

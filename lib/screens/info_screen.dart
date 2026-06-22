import 'package:flutter/material.dart';
import '../services/secure_storage_service.dart';

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
    return Scaffold(
      appBar: AppBar(title: const Text('Bilgi ve Güvenlik')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _section(context, 'GÜVENLİK AKIŞI'),
            _numbered(context, 1, 'Dosya cihazınızda AES-256-GCM ile parçalar halinde şifrelenir.'),
            _numbered(context, 2, 'Şifreli veri TLS üzerinden sunucuya yüklenir — anahtar gönderilmez.'),
            _numbered(context, 3, 'Sunucu token üretir, indirme linki cihazda oluşturulur.'),
            _numbered(context, 4, 'Alıcı linke tıklar — anahtar (#KEY) asla sunucuya gitmez.'),
            _numbered(context, 5, 'Şifreli dosya stream olarak indirilir, anında çözülür — düşük RAM.'),
            _numbered(context, 6, 'Token atomik olarak silinir, dosya tek kullanımlıktır.'),

            const SizedBox(height: 24),
            _section(context, 'KRİPTOGRAFİ'),
            _kv(context, 'Algoritma', 'AES-256-GCM'),
            _kv(context, 'Anahtar', '256-bit CSPRNG'),
            _kv(context, 'Nonce / IV', '96-bit CSPRNG (her parça)'),
            _kv(context, 'Auth Tag', '128-bit (her parça)'),
            _kv(context, 'Transport', 'TLS 1.3'),
            _kv(context, 'Dosya Limitiniz', _fileLimit),
            _kv(context, 'Token Ömrü', '1 saat'),
            _kv(context, 'Kullanım', 'Tek sefer', highlight: true),
            _kv(context, 'Sunucu Anahtar Erişimi', 'Asla', highlight: true),

            const SizedBox(height: 24),
            _section(context, 'NEDEN SECUREVAULT?'),
            _bullet(context, '🔐', 'Sıfır Bilgi', 'Dosya cihazınızda şifrelenir. Sunucu içeriği asla görmez.'),
            _bullet(context, '🗑️', 'Tek Kullanım', 'İndirildikten sonra token atomik olarak silinir.'),
            _bullet(context, '🔑', 'Ek Şifre', 'İkinci güvenlik katmanı — alıcıya ayrı kanaldan iletin.'),
            _bullet(context, '☁️', 'Cloudflare R2', 'Küresel CDN altyapısı, sıfır egress ücreti.'),

            const SizedBox(height: 24),
            _section(context, 'VİRÜS TARAMASI HAKKINDA'),
            _bullet(context, '🛡️', 'Neden Tarama Yok?', 'Zero-knowledge mimarisi gereği sunucu şifreli dosyanın içeriğini göremez, bu yüzden virüs taraması yapamaz.'),
            _bullet(context, '✅', 'Önerimiz', 'İndirdiğiniz dosyaları kendi antivirüs yazılımınızla taramanızı öneririz.'),

            const SizedBox(height: 24),
            _section(context, 'KİMLER İÇİN?'),
            _bullet(context, '⚖️', 'Avukatlar ve Noterler', 'Müvekkil belgelerini güvenle gönderin.'),
            _bullet(context, '💰', 'Muhasebeciler', 'Finansal dökümanları güvenli paylaşın.'),
            _bullet(context, '👥', 'İnsan Kaynakları', 'Maaş bordrosu ve sözleşmeler.'),
            _bullet(context, '🏥', 'Sağlık Profesyonelleri', 'Hasta raporu ve test sonuçları.'),
            _bullet(context, '🚀', 'Girişimler', 'Yatırımcıya sunulan gizli dokümanlar.'),
            _bullet(context, '👤', 'Bireyler', 'Kimlik fotokopisi, pasaport, banka belgesi.'),

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

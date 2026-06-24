import 'package:flutter/material.dart';

/// Kullanım Sözleşmesi — web'deki /sozlesme sayfasıyla aynı içerik, uygulama içi.
class SozlesmeScreen extends StatelessWidget {
  const SozlesmeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kullanım Sözleşmesi')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text('Kullanım Sözleşmesi',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 4),
            const Text('Son güncelleme: Haziran 2026',
                style: TextStyle(color: Colors.grey, fontSize: 12)),
            const SizedBox(height: 20),
            _h('1. KABUL'),
            _p('SecureVault hizmetini kullanarak bu sözleşmeyi kabul etmiş '
                'sayılırsınız.'),
            _h('2. HİZMET TANIMI'),
            _p('SecureVault, istemci tarafı AES-256-GCM şifreleme kullanan, '
                'sıfır bilgi mimarisine sahip bir dosya paylaşım hizmetidir. '
                'Dosyalar sunucuda şifreli saklanır ve şifre anahtarı sunucuya '
                'iletilmez.'),
            _h('3. KULLANIM KOŞULLARI'),
            _p('Aşağıdaki içerikleri paylaşmak kesinlikle yasaktır:\n'
                '• Yasadışı içerik\n'
                '• Telif hakkı ihlali\n'
                '• Kötü amaçlı yazılım\n'
                '• Kişisel verilerin izinsiz paylaşımı'),
            _h('4. HİZMET SINIRLARI'),
            _p('• Üye olmayanlar: 5 MB dosya limiti, günde 3 gönderim\n'
                '• Üyeler: 250 MB dosya limiti\n'
                '• Tüm dosyalar: 1 saat TTL (indirilmezse otomatik silinir)'),
            _h('5. SORUMLULUK REDDİ'),
            _p('SecureVault, paylaşılan dosyaların içeriğinden sorumlu '
                'değildir. Sıfır bilgi mimarisi gereği dosya içeriğine '
                'erişilememektedir. Daha kapsamlı bilgi için Kullanım Şartları '
                've Sorumluluk Reddi ekranını inceleyebilirsiniz.'),
            _h('6. HİZMET DEĞİŞİKLİKLERİ'),
            _p('SecureVault, hizmet koşullarını önceden bildirimde bulunmaksızın '
                'değiştirme hakkını saklı tutar.'),
            _h('7. HESAP SİLME'),
            _p('Hesabınızı istediğiniz zaman silebilirsiniz. Silme işlemi tüm '
                'verilerinizi kalıcı olarak kaldırır.'),
            _h('8. İLETİŞİM'),
            _p('Sorularınız için: no-reply@sifreliveritransferi.com'),
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

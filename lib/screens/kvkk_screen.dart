import 'package:flutter/material.dart';

/// KVKK Aydınlatma Metni — web'deki /kvkk sayfasıyla aynı içerik, uygulama içi.
class KvkkScreen extends StatelessWidget {
  const KvkkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KVKK Aydınlatma Metni')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text('KVKK Aydınlatma Metni',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 4),
            const Text('Son güncelleme: Haziran 2026',
                style: TextStyle(color: Colors.grey, fontSize: 12)),
            const SizedBox(height: 20),
            _h('1. VERİ SORUMLUSU'),
            _p('SecureVault (sifreliveritransferi.com) olarak, 6698 sayılı '
                'Kişisel Verilerin Korunması Kanunu kapsamında veri sorumlusu '
                'sıfatıyla hareket etmekteyiz.'),
            _h('2. İŞLENEN KİŞİSEL VERİLER'),
            _p('Sistemimiz sıfır bilgi (zero-knowledge) mimarisi ile '
                'tasarlanmıştır. İşlenen veriler:'),
            _p('• Kullanıcı adı: SHA-256 hash olarak saklanır. Orijinal '
                'kullanıcı adı sunucuda tutulmaz.\n'
                '• Şifre: Argon2id algoritması ile hash\'lenerek saklanır. '
                'Düz metin şifre asla tutulmaz.\n'
                '• IP adresi: SHA-256 hash olarak kısa süreli (24 saat) '
                'Redis\'te tutulur.\n'
                '• E-posta adresi (alıcı): Yalnızca link gönderimi için '
                'kullanılır, saklanmaz.\n'
                '• Dosya içeriği: Sunucuya şifreli olarak ulaşır. Şifre '
                'anahtarı sunucuya hiçbir zaman gönderilmez.'),
            _h('3. VERİLERİN İŞLENME AMACI'),
            _p('• Kullanıcı hesabının oluşturulması ve yönetimi\n'
                '• Güvenli dosya paylaşımı hizmetinin sunulması\n'
                '• Hizmet kötüye kullanımının önlenmesi'),
            _h('4. VERİLERİN SAKLANMA SÜRESİ'),
            _p('• Kullanıcı hesabı: 90 gün aktif kullanım olmaması halinde '
                'otomatik silinir.\n'
                '• Dosyalar: İndirildikten sonra anında, indirilmezse 1 saat '
                'içinde silinir.\n'
                '• IP hash: 24 saat sonra otomatik silinir.'),
            _h('5. VERİ SAHİBİNİN HAKLARI'),
            _p('KVKK madde 11 kapsamında;\n'
                '• Verilerinizin işlenip işlenmediğini öğrenme\n'
                '• Verilerinizin silinmesini talep etme\n'
                '• Hesabınızı "Hesabımı Sil" seçeneğinden silebilirsiniz.'),
            _h('6. İLETİŞİM'),
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

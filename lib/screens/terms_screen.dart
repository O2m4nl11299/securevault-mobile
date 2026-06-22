import 'package:flutter/material.dart';

/// Kullanim Sartlari ve Sorumluluk Reddi. Hukuki bir metin olmaktan cok,
/// hizmetin nasil calistigini ve sinirlarini kullaniciya net anlatan bir
/// bilgilendirme ekranidir. (Ticari kullanim icin bir hukukcuya danisilmasi
/// onerilir.)
class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kullanım Şartları')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Kullanım Şartları ve Sorumluluk Reddi',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 4),
            const Text(
              'SecureVault hizmetini kullanarak aşağıdaki şartları kabul etmiş olursunuz.',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            const SizedBox(height: 24),

            _item(
              context,
              '🔐',
              'Uçtan Uca Şifreleme — İçeriğe Erişemeyiz',
              'Dosyalarınız ve metinleriniz, sunucuya yüklenmeden ÖNCE kendi '
              'cihazınızda AES-256-GCM ile şifrelenir. Şifre çözme anahtarı '
              'hiçbir zaman sunucularımıza gönderilmez. Bu nedenle biz, hizmet '
              'sağlayıcı olarak, gönderdiğiniz dosyaların içeriğini görüntüleyemez, '
              'okuyamaz veya kurtaramayız (zero-knowledge mimarisi).',
            ),
            _item(
              context,
              '⏳',
              'Geçici Aktarım Aracı — Kalıcı Depolama Değildir',
              'SecureVault bir dosya SAKLAMA / yedekleme hizmeti DEĞİLDİR. '
              'Yüklenen dosyalar yalnızca kısa bir süre (varsayılan 1 saat) '
              'veya ilk indirme gerçekleştiğinde, hangisi önce olursa, otomatik '
              've kalıcı olarak silinir. Dosyalarınızın asıl kopyasını her zaman '
              'kendi cihazınızda saklayın.',
            ),
            _item(
              context,
              '💾',
              'Veri Kaybından Sorumluluk Kabul Edilmez',
              'Hizmetin doğası gereği dosyalar otomatik silindiği için, bir '
              'dosyanın süresi dolması, indirilememesi veya herhangi bir teknik '
              'nedenle kaybolmasından doğabilecek zararlardan SecureVault sorumlu '
              'tutulamaz. Önemli verilerinizin yedeğini almak tamamen sizin '
              'sorumluluğunuzdadır.',
            ),
            _item(
              context,
              '☁️',
              'Üçüncü Taraf Altyapı',
              'Şifreli veriler, Cloudflare R2 bulut altyapısında geçici olarak '
              'barındırılır. Veriler şifreli olduğu için bu sağlayıcı da içeriği '
              'göremez. Altyapı sağlayıcısının hizmet kesintileri veya politika '
              'değişiklikleri kontrolümüz dışındadır.',
            ),
            _item(
              context,
              '⚖️',
              'Yasal Kullanım — Sorumluluk Kullanıcıdadır',
              'SecureVault yalnızca yasal amaçlarla kullanılabilir. Gönderdiğiniz '
              'içeriğin yasalara uygunluğundan tamamen siz sorumlusunuz. İçerik '
              'şifreli olduğu için denetlenemez; bu nedenle hizmetin kötüye '
              'kullanımından doğan her türlü hukuki ve cezai sorumluluk gönderen '
              'kullanıcıya aittir.',
            ),
            _item(
              context,
              '🛠️',
              'Hizmet "Olduğu Gibi" Sunulur',
              'SecureVault, herhangi bir garanti verilmeksizin "olduğu gibi" '
              'sunulur. Hizmette kesinti, gecikme veya hata olabilir. Hizmetin '
              'kesintisiz veya hatasız çalışacağı garanti edilmez.',
            ),

            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            const Text(
              'Bu metin genel bir bilgilendirme niteliğindedir ve hukuki tavsiye '
              'yerine geçmez.',
              style: TextStyle(color: Colors.grey, fontSize: 12, fontStyle: FontStyle.italic),
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

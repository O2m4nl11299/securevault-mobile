import 'package:flutter/material.dart';
import '../services/purchase_service.dart';

/// Premium abonelik satin alma ekrani.
/// PurchaseService uzerinden Play Store akisini yonetir.
class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  final _ps = PurchaseService.instance;
  bool _busy = false;
  String? _message;
  bool _ready = false;

  @override
  void initState() {
    super.initState();
    _ps.onBusyChanged = (b) {
      if (mounted) setState(() => _busy = b);
    };
    _ps.onPurchaseSuccess = () {
      if (!mounted) return;
      setState(() {
        _busy = false;
        _message = '🎉 Premium aktif edildi! Tekrar giriş yaparak yeni '
            'limitlerinizi görebilirsiniz.';
      });
    };
    _ps.onPurchaseError = (msg) {
      if (mounted) {
        setState(() {
          _busy = false;
          _message = '⚠ $msg';
        });
      }
    };
    _initStore();
  }

  Future<void> _initStore() async {
    await _ps.init();
    if (mounted) setState(() => _ready = true);
  }

  @override
  void dispose() {
    // Callback'leri temizle (ekran kapaninca eski state'e yazmasin).
    _ps.onBusyChanged = null;
    _ps.onPurchaseSuccess = null;
    _ps.onPurchaseError = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final product = _ps.premiumProduct;
    final priceText = product?.price ?? '—';

    return Scaffold(
      appBar: AppBar(title: const Text('Premium')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(Icons.workspace_premium,
                  size: 64, color: Colors.amber),
              const SizedBox(height: 16),
              Text(
                'SecureVault Premium',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              const Text(
                'Aylık yenilenen abonelik',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              _benefit('2 GB dosya boyutu limiti'),
              _benefit('Günde 20 gönderim'),
              _benefit('Uçtan uca şifreli, sınırsız güvenlik'),
              _benefit('Öncelikli destek'),
              const SizedBox(height: 24),
              if (!_ready) ...[
                const Center(child: CircularProgressIndicator()),
                const SizedBox(height: 12),
                const Text('Mağaza bilgileri yükleniyor...',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey)),
              ] else if (!_ps.isAvailable) ...[
                const Text(
                  'Mağaza şu an kullanılamıyor. Lütfen daha sonra tekrar deneyin.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber),
                ),
              ] else if (product == null) ...[
                const Text(
                  'Premium ürün henüz hazır değil. Lütfen daha sonra tekrar deneyin.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber),
                ),
              ] else ...[
                FilledButton(
                  onPressed: _busy ? null : _ps.buyPremium,
                  child: _busy
                      ? const SizedBox(
                          height: 20, width: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text('$priceText / ay - Premium Ol'),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: _busy ? null : _ps.restorePurchases,
                  child: const Text('Satın alımları geri yükle'),
                ),
              ],
              if (_message != null) ...[
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.06),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _message!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 13),
                  ),
                ),
              ],
              const SizedBox(height: 24),
              const Text(
                'Abonelik, dönem sonunda otomatik yenilenir. Google Play '
                'hesabınızdan istediğiniz zaman iptal edebilirsiniz.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _benefit(String text) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.greenAccent, size: 20),
            const SizedBox(width: 10),
            Expanded(child: Text(text)),
          ],
        ),
      );
}

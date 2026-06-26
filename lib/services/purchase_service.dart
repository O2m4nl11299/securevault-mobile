import 'dart:async';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'api_client.dart';

/// Premium abonelik satin alma servisi.
///
/// Akis:
///   1. Play Store'dan 'premium_monthly' abonelik urununu sorgula
///   2. Kullanici satin almak isterse Google odeme akisini baslat
///   3. Satin alma tamamlaninca, dogrulama tokenini SUNUCUYA gonder
///      (POST /billing/verify) - sunucu Google'a dogrulatip kullaniciyi
///      premium yapar. Anahtar: ISTEMCIYE GUVENME, her zaman sunucu dogrular.
///
/// NOT: Tam uctan uca test, Play Console'da abonelik urunu olusturulup
/// Google Cloud dogrulama hesabi baglandiktan SONRA mumkundur.
class PurchaseService {
  PurchaseService._internal();
  static final PurchaseService instance = PurchaseService._internal();

  /// Play Console'da olusturulacak abonelik urun ID'si (AYNISI olmali).
  static const String premiumProductId = 'premium_monthly';

  final InAppPurchase _iap = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _sub;

  /// Satin alma akisi sonuclarini disari bildirmek icin callback'ler.
  void Function()? onPurchaseSuccess;
  void Function(String message)? onPurchaseError;
  void Function(bool busy)? onBusyChanged;

  bool _available = false;
  ProductDetails? _premiumProduct;

  bool get isAvailable => _available;
  ProductDetails? get premiumProduct => _premiumProduct;

  /// main()'de ya da premium ekrani acilirken bir kez cagrilir.
  /// Store baglantisini kurar, urun bilgisini ceker, satin alma akisini dinler.
  Future<void> init() async {
    _available = await _iap.isAvailable();
    if (!_available) return;

    // Satin alma guncellemelerini dinle (akis tamamlaninca burasi tetiklenir).
    _sub ??= _iap.purchaseStream.listen(
      _onPurchaseUpdate,
      onError: (e) => onPurchaseError?.call('Satin alma hatasi: $e'),
    );

    // Urun bilgisini cek (fiyat, baslik vb. Play Console'dan gelir).
    final resp = await _iap.queryProductDetails({premiumProductId});
    if (resp.productDetails.isNotEmpty) {
      _premiumProduct = resp.productDetails.first;
    }
  }

  /// Premium satin alma akisini baslatir (Google odeme ekrani acilir).
  Future<void> buyPremium() async {
    if (!_available) {
      onPurchaseError?.call('Magaza su an kullanilamiyor.');
      return;
    }
    final product = _premiumProduct;
    if (product == null) {
      onPurchaseError?.call('Premium urun bulunamadi. Daha sonra tekrar deneyin.');
      return;
    }
    onBusyChanged?.call(true);
    final param = PurchaseParam(productDetails: product);
    // Abonelik -> buyNonConsumable (abonelikler de bu metodla baslatilir).
    await _iap.buyNonConsumable(purchaseParam: param);
  }

  /// Onceki satin almalari geri yukler (kullanici cihaz degistirirse vb.).
  Future<void> restorePurchases() async {
    if (!_available) return;
    onBusyChanged?.call(true);
    await _iap.restorePurchases();
  }

  Future<void> _onPurchaseUpdate(List<PurchaseDetails> purchases) async {
    for (final p in purchases) {
      switch (p.status) {
        case PurchaseStatus.pending:
          onBusyChanged?.call(true);
          break;
        case PurchaseStatus.error:
          onBusyChanged?.call(false);
          onPurchaseError?.call(p.error?.message ?? 'Satin alma basarisiz.');
          break;
        case PurchaseStatus.canceled:
          onBusyChanged?.call(false);
          onPurchaseError?.call('Satin alma iptal edildi.');
          break;
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          // SUNUCU DOGRULAMASI - istemciye guvenme.
          final ok = await _verifyOnServer(p);
          if (ok) {
            onPurchaseSuccess?.call();
          } else {
            onPurchaseError?.call('Satin alma dogrulanamadi. Destek ile iletisime gecin.');
          }
          break;
      }
      // Akisi tamamla (Google'a "isledim" bildirimi - SART, yoksa iade edilir).
      if (p.pendingCompletePurchase) {
        await _iap.completePurchase(p);
      }
    }
    onBusyChanged?.call(false);
  }

  /// Satin alma dogrulama tokenini sunucuya gonderir.
  /// Sunucu (POST /billing/verify) Google Play Developer API ile dogrular,
  /// gecerliyse kullaniciyi premium yapar.
  Future<bool> _verifyOnServer(PurchaseDetails p) async {
    try {
      final dio = ApiClient.instance.dio;
      final resp = await dio.post('/billing/verify', data: {
        'productId': premiumProductId,
        'purchaseToken': p.verificationData.serverVerificationData,
        'source': p.verificationData.source,
      });
      if (resp.statusCode == 200 && resp.data is Map) {
        return resp.data['success'] == true;
      }
      return false;
    } catch (_) {
      return false;
    }
  }

  void dispose() {
    _sub?.cancel();
    _sub = null;
  }
}

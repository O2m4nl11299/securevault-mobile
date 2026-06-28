import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
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
  String? _msgType; // 'success' veya 'error'
  String? _msgArg;  // error mesaji
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
        _msgType = 'success';
        _msgArg = null;
      });
    };
    _ps.onPurchaseError = (msg) {
      if (mounted) {
        setState(() {
          _busy = false;
          _msgType = 'error';
          _msgArg = msg;
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
    final l = AppLocalizations.of(context);
    final product = _ps.premiumProduct;
    final priceText = product?.price ?? '—';

    return Scaffold(
      appBar: AppBar(title: Text(l.premTitle)),
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
                l.premHeader,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                l.premMonthlySub,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              _benefit(l.premBenefit1),
              _benefit(l.premBenefit2),
              _benefit(l.premBenefit3),
              _benefit(l.premBenefit4),
              const SizedBox(height: 24),
              if (!_ready) ...[
                const Center(child: CircularProgressIndicator()),
                const SizedBox(height: 12),
                Text(l.premLoadingStore,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.grey)),
              ] else if (!_ps.isAvailable) ...[
                Text(
                  l.premStoreUnavailable,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.amber),
                ),
              ] else if (product == null) ...[
                Text(
                  l.premProductUnavailable,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.amber),
                ),
              ] else ...[
                FilledButton(
                  onPressed: _busy ? null : _ps.buyPremium,
                  child: _busy
                      ? const SizedBox(
                          height: 20, width: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(l.premBuyButton(priceText)),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: _busy ? null : _ps.restorePurchases,
                  child: Text(l.premRestore),
                ),
              ],
              if (_msgType != null) ...[
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.06),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _msgType == 'success'
                        ? l.premSuccess
                        : '⚠ ${_msgArg ?? ''}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 13),
                  ),
                ),
              ],
              const SizedBox(height: 24),
              Text(
                l.premAutoRenewInfo,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 11, color: Colors.grey),
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

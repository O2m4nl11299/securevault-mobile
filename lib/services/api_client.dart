import 'package:dio/dio.dart';
import '../config/app_config.dart';

/// Tum backend isteklerinin gectigi tek Dio ornegi.
/// Oturum token'i `x-session-token` header'inda tasinir (server.js'in
/// bekledigi format - Bearer DEGIL, ozel header).
class ApiClient {
  ApiClient._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 30),
        headers: {'Content-Type': 'application/json'},
        // 4xx'lerde DioException firlatma - body'deki {error: "..."} alanini
        // kendimiz okuyup kullaniciya Turkce mesaji dogrudan gosterebilelim.
        validateStatus: (status) => status != null && status < 500,
      ),
    );
    _dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) {
          _checkSessionExpiry(response.statusCode, response.data);
          handler.next(response);
        },
        onError: (error, handler) {
          _checkSessionExpiry(
            error.response?.statusCode,
            error.response?.data,
          );
          handler.next(error);
        },
      ),
    );
  }

  static final ApiClient instance = ApiClient._internal();

  late final Dio _dio;
  String? _sessionToken;
  bool _handlingExpiry = false;

  /// main()'de bir kez atanir. Sunucu, sakladigimiz token'i artik tanimadigini
  /// bildirdiginde (401 + sessionExpired:true) cagrilir - uygulama bunu
  /// "tekrar giris yap" ekranina yonlendirmek icin kullanir.
  void Function()? onSessionExpired;

  /// Sunucu, gecerli bir kimlikle (anon ya da free) kota/boyut sinirinin
  /// asildigini bildirdiginde (403 + upgrade:true) cagrilir. Oturumu
  /// ETKILEMEZ - sadece premium upsell mesaji/ekrani gostermek icin kullanilir.
  void Function(String message)? onUpgradeRequired;

  Dio get dio => _dio;
  String? get sessionToken => _sessionToken;

  void setSessionToken(String? token) {
    _sessionToken = token;
    if (token != null) {
      _dio.options.headers['x-session-token'] = token;
      _handlingExpiry = false; // yeni oturum - bayragi sifirla
    } else {
      _dio.options.headers.remove('x-session-token');
    }
  }

  /// 18 Haziran 2026 sunucu duzeltmesiyle bu iki sinyal artik AYRI:
  /// - 401 + {sessionExpired:true} -> token gonderilmis ama gecersiz/suresi
  ///   dolmus. KESIN "tekrar giris yap" sinyali -> force-logout.
  /// - 403 + {upgrade:true} -> kimlik gecerli (anon veya free), sadece kota/
  ///   boyut siniri asildi. Cikis YAPILMAZ, sadece upsell bildirimi verilir.
  void _checkSessionExpiry(int? statusCode, dynamic data) {
    final isSessionExpired =
        statusCode == 401 && data is Map && data['sessionExpired'] == true;
    if (isSessionExpired && !_handlingExpiry) {
      _handlingExpiry = true;
      setSessionToken(null);
      onSessionExpired?.call();
      return;
    }

    final isUpgradeRequired =
        statusCode == 403 && data is Map && data['upgrade'] == true;
    if (isUpgradeRequired) {
      final message = (data['error'] is String)
          ? data['error'] as String
          : 'Plan limitine ulasildi.';
      onUpgradeRequired?.call(message);
    }
  }
}

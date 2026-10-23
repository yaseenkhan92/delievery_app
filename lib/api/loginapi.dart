import 'package:deleivery_app/api/baseapi.dart';
import 'package:deleivery_app/api/auth_api.dart'; // for normalizePkPhone

import 'package:deleivery_app/api/tokenstorage.dart';
import 'package:deleivery_app/auth/guest/guest_Session.dart';

/// What the screen needs to know after a login attempt.
class LoginResult {
  /// true when login worked and a token was saved (go Home).
  final bool isProfileComplete;

  /// JWT from data.token.
  final String? token;

  /// Full `data` object from the server, in case you need user info.
  final Map<String, dynamic> data;

  LoginResult({
    required this.isProfileComplete,
    required this.token,
    required this.data,
  });
}

/// Login endpoint + logout.
class LoginApi {
  LoginApi._();

  /// POST /consumer/login  (manual login)
  /// [fieldType] is 'phone' or 'email'. For phone, the number is normalized
  /// to +92... automatically. [guestId] is optional (merges the guest cart).
  static Future<LoginResult> login({
    required String emailOrPhone,
    required String password,
    String fieldType = 'phone',
    int? guestId,
  }) async {
    final gid = guestId ?? GuestSession.guestId; // merges the guest cart

    final res = await ApiClient.instance.post('/consumer/login', {
      'login_type': 'manual',
      'field_type': fieldType,
      'email_or_phone': fieldType == 'phone'
          ? AuthApi.normalizePkPhone(emailOrPhone)
          : emailOrPhone.trim(),
      'password': password,
      if (gid != null) 'guest_id': gid,
    });

    final raw = res['data'];
    final data = raw is Map<String, dynamic> ? raw : <String, dynamic>{};

    final token = data['token'] as String?;

    // A token means login worked. Only treat the profile as incomplete when
    // the server explicitly says is_personal_info is 0.
    final personalInfo = data['is_personal_info'];
    final isComplete =
        token != null &&
        token.isNotEmpty &&
        (personalInfo == null || personalInfo == 1);

    if (isComplete) {
      await TokenStorage.save(token); // replaces any guest token
      await GuestSession.clear(); // no longer a guest
    }

    return LoginResult(isProfileComplete: isComplete, token: token, data: data);
  }

  /// Logout: remove the token from the phone and from Dio.
  static Future<void> logout() async {
    await TokenStorage.clear();
    await GuestSession.clear();
  }
}

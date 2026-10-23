import 'package:deleivery_app/api/baseapi.dart';

/// One function per endpoint. Screens call these; they never touch Dio.
class AuthApi {
  AuthApi._();

  /// Turns "300 1234567", "0300 1234567" or "+92 300 1234567"
  /// into "+923001234567" (the format the server expects).
  static String normalizePkPhone(String input) {
    final p = input.replaceAll(RegExp(r'[\s-]'), '');
    if (p.startsWith('+')) return p;
    if (p.startsWith('92')) return '+$p';
    if (p.startsWith('0')) return '+92${p.substring(1)}';
    return '+92$p';
  }

  /// POST /consumer/register
  /// Body: f_name, l_name, phone, email, password (ref_code is optional).
  static Future<Map<String, dynamic>> register({
    required String fullName,
    required String phone,
    required String email,
    required String password,
    String? refCode,
  }) {
    // The form has one "Full Name" box, the API wants two fields.
    final parts = fullName.trim().split(RegExp(r'\s+'));
    final firstName = parts.first;
    final lastName = parts.length > 1 ? parts.sublist(1).join(' ') : '';

    return ApiClient.instance.post('/consumer/register', {
      'f_name': firstName,
      'l_name': lastName,
      'phone': normalizePkPhone(phone),
      'email': email.trim(),
      'password': password,
      if (refCode != null && refCode.isNotEmpty) 'ref_code': refCode,
    });
  }
}

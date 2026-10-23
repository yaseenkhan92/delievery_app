import 'package:deleivery_app/api/baseapi.dart';
import 'package:dio/dio.dart';

/// Profile endpoints. Screens never call Dio directly.
class ProfileApi {
  ProfileApi._();

  /// GET /consumer/whoami  (needs the Bearer token, which TokenStorage
  /// already puts on every request).
  /// Returns the profile map (f_name, l_name, phone, email, image,
  /// loyalty_point, order_count, ...).
  /// Throws [ApiException]; statusCode 401 means the token is expired/invalid.
  static Future<Map<String, dynamic>> whoami() async {
    try {
      final res = await ApiClient.instance.dio.get('/consumer/whoami');
      final body = res.data;
      if (body is! Map) return <String, dynamic>{};

      // The server may wrap the profile in "data" (like the login response).
      final data = body['data'];
      return Map<String, dynamic>.from(data is Map ? data : body);
    } on DioException catch (e) {
      throw ApiException(_readError(e), statusCode: e.response?.statusCode);
    }
  }

  static String _readError(DioException e) {
    final data = e.response?.data;
    if (data is Map) {
      if (data['msg'] != null) return data['msg'].toString();
      if (data['message'] != null) return data['message'].toString();
    }
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionError:
        return 'Cannot reach the server. Check your internet connection.';
      default:
        return 'Something went wrong. Please try again.';
    }
  }
}

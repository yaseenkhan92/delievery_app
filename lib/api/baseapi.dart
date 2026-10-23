import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// 1) Put your server address here (same host your Swagger page uses).
///    No trailing slash.
const String kBaseUrl = 'https://voice-shortcut-customs.ngrok-free.dev/api';

/// A simple error type the screens can catch and show to the user.
class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, {this.statusCode});

  @override
  String toString() => message;
}

/// 2) One Dio object for the whole app. It holds the base URL, timeouts
///    and default headers so you never repeat them.
class ApiClient {
  ApiClient._() {
    dio = Dio(
      BaseOptions(
        baseUrl: kBaseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: const {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Prints every request/response in the debug console (debug mode only).
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(requestBody: true, responseBody: true),
      );
    }
  }

  static final ApiClient instance = ApiClient._();

  late final Dio dio;

  /// Call this after login to send the token with every later request.
  void setToken(String token) {
    dio.options.headers['Authorization'] = 'Bearer $token';
  }

  void clearToken() {
    dio.options.headers.remove('Authorization');
  }

  /// POST helper: sends [body] as JSON, returns the decoded JSON map,
  /// and converts any failure into an [ApiException] with a readable message.
  Future<Map<String, dynamic>> post(
    String path,
    Map<String, dynamic> body,
  ) async {
    try {
      final res = await dio.post(path, data: body);
      final data = res.data;
      return data is Map<String, dynamic> ? data : <String, dynamic>{};
    } on DioException catch (e) {
      throw ApiException(_readError(e), statusCode: e.response?.statusCode);
    }
  }

  /// Extracts the best error text from the server reply.
  String _readError(DioException e) {
    final data = e.response?.data;

    if (data is Map) {
      if (data['message'] != null) return data['message'].toString();
      final errors = data['errors'];
      if (errors is List && errors.isNotEmpty) {
        final first = errors.first;
        if (first is Map && first['message'] != null) {
          return first['message'].toString();
        }
        return first.toString();
      }
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

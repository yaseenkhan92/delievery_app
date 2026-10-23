import 'package:deleivery_app/api/baseapi.dart';
import 'package:dio/dio.dart';

/// Shared GET helper: returns the decoded JSON body (Map or List) and turns
/// any failure into an [ApiException] with a readable message.
Future<dynamic> apiGet(String path, {Map<String, dynamic>? query}) async {
  try {
    final res = await ApiClient.instance.dio.get(path, queryParameters: query);
    return res.data;
  } on DioException catch (e) {
    throw ApiException(_readError(e), statusCode: e.response?.statusCode);
  }
}

String _readError(DioException e) {
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

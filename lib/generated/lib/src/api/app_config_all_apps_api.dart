//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/model/app_configuration_response.dart';

class AppConfigAllAppsApi {
  final Dio _dio;

  final Serializers _serializers;

  const AppConfigAllAppsApi(this._dio, this._serializers);

  /// App configuration (all apps)
  /// Legacy PHP **GET /api/v1/config** — flat JSON (no &#x60;status&#x60;/&#x60;data&#x60; wrapper). Customer, vendor, and driver apps call this on launch for **terms_and_conditions**, **privacy_policy**, **about_us**, refund/cancellation/shipping policies (+ &#x60;*_status&#x60; flags), **cookies_text**, payment/wallet/loyalty toggles, map keys, and **app_minimum_version_*** / store URLs per app.  Optional header **&#x60;X-localization&#x60;** (e.g. &#x60;en&#x60;, &#x60;he&#x60;) returns translated legal HTML from &#x60;data_settings&#x60; + &#x60;translations&#x60;.  Same body as **GET /consumer/config**.
  ///
  /// Parameters:
  /// * [xLocalization] - Locale for terms/privacy/about/policy HTML (legacy PHP localization)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AppConfigurationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AppConfigurationResponse>> configGet({
    String? xLocalization,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/config/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (xLocalization != null) r'X-localization': xLocalization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AppConfigurationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(AppConfigurationResponse),
            ) as AppConfigurationResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AppConfigurationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// App configuration (all apps)
  /// Legacy PHP **GET /api/v1/config** — flat JSON (no &#x60;status&#x60;/&#x60;data&#x60; wrapper). Customer, vendor, and driver apps call this on launch for **terms_and_conditions**, **privacy_policy**, **about_us**, refund/cancellation/shipping policies (+ &#x60;*_status&#x60; flags), **cookies_text**, payment/wallet/loyalty toggles, map keys, and **app_minimum_version_*** / store URLs per app.  Optional header **&#x60;X-localization&#x60;** (e.g. &#x60;en&#x60;, &#x60;he&#x60;) returns translated legal HTML from &#x60;data_settings&#x60; + &#x60;translations&#x60;.  Same body as **GET /consumer/config**.
  ///
  /// Parameters:
  /// * [xLocalization] - Locale for terms/privacy/about/policy HTML (legacy PHP localization)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AppConfigurationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AppConfigurationResponse>> configGet_1({
    String? xLocalization,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/config';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (xLocalization != null) r'X-localization': xLocalization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AppConfigurationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(AppConfigurationResponse),
            ) as AppConfigurationResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AppConfigurationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// App configuration (consumer path alias)
  /// Identical to **GET /config**. Use **GET /consumer/config/zone-id** for lat/lng zone resolve.
  ///
  /// Parameters:
  /// * [xLocalization]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AppConfigurationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AppConfigurationResponse>> consumerConfigGet({
    String? xLocalization,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/config/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (xLocalization != null) r'X-localization': xLocalization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AppConfigurationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(AppConfigurationResponse),
            ) as AppConfigurationResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AppConfigurationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// App configuration (consumer path alias)
  /// Identical to **GET /config**. Use **GET /consumer/config/zone-id** for lat/lng zone resolve.
  ///
  /// Parameters:
  /// * [xLocalization]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AppConfigurationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AppConfigurationResponse>> consumerConfigGet_2({
    String? xLocalization,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/config';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (xLocalization != null) r'X-localization': xLocalization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AppConfigurationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(AppConfigurationResponse),
            ) as AppConfigurationResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AppConfigurationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}

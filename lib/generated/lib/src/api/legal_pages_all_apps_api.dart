//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/api_error.dart';
import 'package:openapi/src/model/legal_pages_bundle_response.dart';
import 'package:openapi/src/model/pages_slug_get200_response.dart';

class LegalPagesAllAppsApi {

  final Dio _dio;

  final Serializers _serializers;

  const LegalPagesAllAppsApi(this._dio, this._serializers);

  /// All legal pages (terms, privacy, policies)
  /// Returns every admin **Pages** document in one call. Keys: &#x60;terms_and_conditions&#x60;, &#x60;privacy_policy&#x60;, &#x60;about_us&#x60;, &#x60;refund_policy&#x60;, &#x60;shipping_policy&#x60;, &#x60;cancellation_policy&#x60;. Each has &#x60;title&#x60;, &#x60;content&#x60; (HTML), &#x60;active&#x60; (policy pages use &#x60;*_policy_status&#x60; in DB). Header **X-localization** for translations.
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
  /// Returns a [Future] containing a [Response] with a [LegalPagesBundleResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<LegalPagesBundleResponse>> pagesLegalGet({ 
    String? xLocalization,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pages/legal';
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

    LegalPagesBundleResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(LegalPagesBundleResponse),
      ) as LegalPagesBundleResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<LegalPagesBundleResponse>(
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

  /// Single legal page by slug
  /// Slugs: &#x60;terms-and-conditions&#x60;, &#x60;privacy-policy&#x60;, &#x60;about-us&#x60;, &#x60;refund-policy&#x60;, &#x60;shipping-policy&#x60;, &#x60;cancellation-policy&#x60; (same as PHP web routes). Default JSON: &#x60;{ status, data: { key, title, content, active } }&#x60;. **PHP parity:** &#x60;?format&#x3D;legacy&#x60; → body is JSON string of HTML only.
  ///
  /// Parameters:
  /// * [slug] 
  /// * [format] - legacy/php = raw HTML string JSON (PHP HomeController expectsJson)
  /// * [xLocalization] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PagesSlugGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PagesSlugGet200Response>> pagesSlugGet({ 
    required String slug,
    String? format,
    String? xLocalization,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pages/{slug}'.replaceAll('{' r'slug' '}', encodeQueryParameter(_serializers, slug, const FullType(String)).toString());
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

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': encodeQueryParameter(_serializers, format, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PagesSlugGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PagesSlugGet200Response),
      ) as PagesSlugGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PagesSlugGet200Response>(
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

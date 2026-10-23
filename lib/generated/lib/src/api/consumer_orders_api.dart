//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/api_error.dart';
import 'package:openapi/src/model/consumer_order_cancel_body.dart';
import 'package:openapi/src/model/consumer_order_cancel_response.dart';
import 'package:openapi/src/model/consumer_order_list_response.dart';
import 'package:openapi/src/model/consumer_order_track_response.dart';
import 'package:openapi/src/model/consumer_place_order_body.dart';
import 'package:openapi/src/model/consumer_place_order_error.dart';
import 'package:openapi/src/model/consumer_place_order_response.dart';

class ConsumerOrdersApi {

  final Dio _dio;

  final Serializers _serializers;

  const ConsumerOrdersApi(this._dio, this._serializers);

  /// consumerOrderCancelPut
  /// Cancel order while status is pending, failed, or already canceled. Sets canceled_by&#x3D;customer and emits realtime order_status_changed. Legacy PHP: PUT customer/order/cancel.
  ///
  /// Parameters:
  /// * [consumerOrderCancelBody] 
  /// * [authorization] - Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerOrderCancelResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerOrderCancelResponse>> consumerOrderCancelPut({ 
    required ConsumerOrderCancelBody consumerOrderCancelBody,
    String? authorization,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/order/cancel';
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        if (authorization != null) r'authorization': authorization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerAuth',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(ConsumerOrderCancelBody);
      _bodyData = _serializers.serialize(consumerOrderCancelBody, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsumerOrderCancelResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerOrderCancelResponse),
      ) as ConsumerOrderCancelResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerOrderCancelResponse>(
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

  /// consumerOrderHistoryGet
  /// Figma Orders — History tab. Completed/canceled/refunded orders (PHP order/list). offset is page number (1-based), same as legacy API.
  ///
  /// Parameters:
  /// * [authorization] - Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT.
  /// * [limit] - Page size (default 10)
  /// * [offset] - Page number (1-based), not row skip (default 1)
  /// * [page] - Alias for offset (page number)
  /// * [guestId] - Required when calling without JWT (with is_guest=true)
  /// * [search] - Figma search — order id or restaurant name
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerOrderListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerOrderListResponse>> consumerOrderHistoryGet({ 
    String? authorization,
    int? limit = 10,
    int? offset = 1,
    int? page,
    int? guestId,
    String? search,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/order/history';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (authorization != null) r'authorization': authorization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (offset != null) r'offset': encodeQueryParameter(_serializers, offset, const FullType(int)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (guestId != null) r'guest_id': encodeQueryParameter(_serializers, guestId, const FullType(int)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsumerOrderListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerOrderListResponse),
      ) as ConsumerOrderListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerOrderListResponse>(
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

  /// consumerOrderPlacePost
  /// Place a marketplace order (Figma checkout / legacy PHP parity). Default: line items loaded from server &#x60;carts&#x60; for the authenticated user or guest (&#x60;guest_id&#x60;). Buy-now: set &#x60;is_buy_now&#x60; true and send &#x60;cart&#x60; or &#x60;items&#x60;. Delivery requires &#x60;distance&#x60; plus either &#x60;delivery_address_id&#x60; (from GET /consumer/addresses) or inline &#x60;address&#x60;, &#x60;latitude&#x60;, &#x60;longitude&#x60;. Totals (tax, delivery, platform fee, tips) are calculated server-side. Triggers vendor FCM for Web Panel &amp; POS.
  ///
  /// Parameters:
  /// * [consumerPlaceOrderBody] 
  /// * [authorization] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerPlaceOrderResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerPlaceOrderResponse>> consumerOrderPlacePost({ 
    required ConsumerPlaceOrderBody consumerPlaceOrderBody,
    String? authorization,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/order/place';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        if (authorization != null) r'authorization': authorization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerAuth',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(ConsumerPlaceOrderBody);
      _bodyData = _serializers.serialize(consumerPlaceOrderBody, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsumerPlaceOrderResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerPlaceOrderResponse),
      ) as ConsumerPlaceOrderResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerPlaceOrderResponse>(
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

  /// consumerOrderRunningGet
  /// Figma Orders — Running tab. Active marketplace orders (not delivered/canceled/refunded). Each row includes food thumbnail, status badge label, and track_order&#x3D;true.
  ///
  /// Parameters:
  /// * [authorization] - Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT.
  /// * [limit] - Page size (default 10)
  /// * [offset] - Page number (1-based), not row skip (default 1)
  /// * [page] - Alias for offset (page number)
  /// * [guestId] - Required when calling without JWT (with is_guest=true)
  /// * [search] - Figma search — order id or restaurant name
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerOrderListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerOrderListResponse>> consumerOrderRunningGet({ 
    String? authorization,
    int? limit = 10,
    int? offset = 1,
    int? page,
    int? guestId,
    String? search,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/order/running';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (authorization != null) r'authorization': authorization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (offset != null) r'offset': encodeQueryParameter(_serializers, offset, const FullType(int)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (guestId != null) r'guest_id': encodeQueryParameter(_serializers, guestId, const FullType(int)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsumerOrderListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerOrderListResponse),
      ) as ConsumerOrderListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerOrderListResponse>(
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

  /// consumerOrderSubscriptionGet
  /// Figma Orders — Subscription tab. Orders linked to subscription_id (recurring).
  ///
  /// Parameters:
  /// * [authorization] - Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT.
  /// * [limit] - Page size (default 10)
  /// * [offset] - Page number (1-based), not row skip (default 1)
  /// * [page] - Alias for offset (page number)
  /// * [guestId] - Required when calling without JWT (with is_guest=true)
  /// * [search] - Figma search — order id or restaurant name
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerOrderListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerOrderListResponse>> consumerOrderSubscriptionGet({ 
    String? authorization,
    int? limit = 10,
    int? offset = 1,
    int? page,
    int? guestId,
    String? search,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/order/subscription';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (authorization != null) r'authorization': authorization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (offset != null) r'offset': encodeQueryParameter(_serializers, offset, const FullType(int)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (guestId != null) r'guest_id': encodeQueryParameter(_serializers, guestId, const FullType(int)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsumerOrderListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerOrderListResponse),
      ) as ConsumerOrderListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerOrderListResponse>(
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

  /// consumerOrderTrackGet
  /// Track order screen — single order with restaurant, driver, status timestamps, and delivery address. Legacy PHP: GET customer/order/track. Guest: query is_guest&#x3D;true, guest_id, contact_number (must match delivery_address.contact_person_number).
  ///
  /// Parameters:
  /// * [orderId] 
  /// * [authorization] - Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT.
  /// * [isGuest] - Pass true with guest_id when not using Bearer JWT
  /// * [guestId] - Required when calling without JWT (with is_guest=true)
  /// * [contactNumber] - Required for guest track — must match order delivery_address.contact_person_number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerOrderTrackResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerOrderTrackResponse>> consumerOrderTrackGet({ 
    required String orderId,
    String? authorization,
    bool? isGuest,
    int? guestId,
    String? contactNumber,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/order/track';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (authorization != null) r'authorization': authorization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (isGuest != null) r'is_guest': encodeQueryParameter(_serializers, isGuest, const FullType(bool)),
      r'order_id': encodeQueryParameter(_serializers, orderId, const FullType(String)),
      if (guestId != null) r'guest_id': encodeQueryParameter(_serializers, guestId, const FullType(int)),
      if (contactNumber != null) r'contact_number': encodeQueryParameter(_serializers, contactNumber, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsumerOrderTrackResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerOrderTrackResponse),
      ) as ConsumerOrderTrackResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerOrderTrackResponse>(
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

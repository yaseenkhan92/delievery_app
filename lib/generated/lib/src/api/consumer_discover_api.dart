//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/api_error.dart';
import 'package:openapi/src/model/api_response.dart';
import 'package:openapi/src/model/consumer_restaurant_list_response.dart';
import 'package:openapi/src/model/consumer_restaurants_id_foods_get200_response.dart';
import 'package:openapi/src/model/consumer_restaurants_popular_get_zone_id_parameter.dart';
import 'package:openapi/src/model/consumer_restaurants_specfic_id_get200_response.dart';

class ConsumerDiscoverApi {

  final Dio _dio;

  final Serializers _serializers;

  const ConsumerDiscoverApi(this._dio, this._serializers);

  /// What&#39;s on your mind (home categories)
  /// **What&#39;s on your mind** — top-level marketplace food categories for the customer home screen (legacy PHP &#x60;GET /api/v1/categories/&#x60;). Uses admin categories with &#x60;position&#x3D;0&#x60; (not vendor menu categories). Requires **zone_id** query (same as home slider / discover). Optional **name** filter. Each tile includes zone-scoped **products_count** and **order_count**; parent categories may include **childes**.
  ///
  /// Parameters:
  /// * [zoneId] - Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.
  /// * [name] - Filter by category name
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ApiResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ApiResponse>> consumerCategoriesGet({ 
    required ConsumerRestaurantsPopularGetZoneIdParameter zoneId,
    String? name,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/categories';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'zone_id': encodeQueryParameter(_serializers, zoneId, const FullType(ConsumerRestaurantsPopularGetZoneIdParameter)),
      if (name != null) r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ApiResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ApiResponse),
      ) as ApiResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ApiResponse>(
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

  /// Home banners (slider)
  /// Home banners for the customer zone(s). Same query **zone_id** as discover restaurant lists (e.g. ?zone_id&#x3D;2).
  ///
  /// Parameters:
  /// * [zoneId] - Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ApiResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ApiResponse>> consumerHomeSliderGet({ 
    required ConsumerRestaurantsPopularGetZoneIdParameter zoneId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/home-slider';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'zone_id': encodeQueryParameter(_serializers, zoneId, const FullType(ConsumerRestaurantsPopularGetZoneIdParameter)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ApiResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ApiResponse),
      ) as ApiResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ApiResponse>(
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

  /// consumerRestaurantsAllGet
  /// Active restaurants assigned to the customer zone(s). **Flow:** 1) GET /consumer/config/zone-id?lat&#x3D;&amp;lng&#x3D; 2) pass returned id(s) as query **zone_id** (e.g. ?zone_id&#x3D;2). Public; no Bearer token.
  ///
  /// Parameters:
  /// * [zoneId] - Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.
  /// * [page] 
  /// * [limit] 
  /// * [name] 
  /// * [veg] 
  /// * [nonVeg] 
  /// * [topRated] 
  /// * [discounted] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerRestaurantListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerRestaurantListResponse>> consumerRestaurantsAllGet({ 
    required ConsumerRestaurantsPopularGetZoneIdParameter zoneId,
    String? page,
    String? limit,
    String? name,
    String? veg,
    String? nonVeg,
    String? topRated,
    String? discounted,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/restaurants/all';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'zone_id': encodeQueryParameter(_serializers, zoneId, const FullType(ConsumerRestaurantsPopularGetZoneIdParameter)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(String)),
      if (name != null) r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
      if (veg != null) r'veg': encodeQueryParameter(_serializers, veg, const FullType(String)),
      if (nonVeg != null) r'non_veg': encodeQueryParameter(_serializers, nonVeg, const FullType(String)),
      if (topRated != null) r'top_rated': encodeQueryParameter(_serializers, topRated, const FullType(String)),
      if (discounted != null) r'discounted': encodeQueryParameter(_serializers, discounted, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsumerRestaurantListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerRestaurantListResponse),
      ) as ConsumerRestaurantListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerRestaurantListResponse>(
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

  /// consumerRestaurantsIdFoodsGet
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [page] 
  /// * [limit] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerRestaurantsIdFoodsGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerRestaurantsIdFoodsGet200Response>> consumerRestaurantsIdFoodsGet({ 
    required String id,
    String? page,
    String? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/restaurants/{id}/foods'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsumerRestaurantsIdFoodsGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerRestaurantsIdFoodsGet200Response),
      ) as ConsumerRestaurantsIdFoodsGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerRestaurantsIdFoodsGet200Response>(
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

  /// consumerRestaurantsNearbyGet
  /// **All Restaurants near you** / Find Nearby map flow. Requires customer **latitude** and **longitude** (query or headers) plus **zone_id**. Returns active restaurants in the zone with valid coordinates, sorted **open first**, then **nearest** (legacy PHP &#x60;get-restaurants&#x60; + &#x60;nearest_first&#x60;).
  ///
  /// Parameters:
  /// * [zoneId] - Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.
  /// * [latitude] - Customer latitude (or header latitude)
  /// * [longitude] - Customer longitude (or header longitude)
  /// * [page] 
  /// * [limit] - Max 50
  /// * [name] - Filter by restaurant name
  /// * [type] 
  /// * [veg] 
  /// * [nonVeg] 
  /// * [topRated] - When set, sort by rating then distance
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerRestaurantListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerRestaurantListResponse>> consumerRestaurantsNearbyGet({ 
    required ConsumerRestaurantsPopularGetZoneIdParameter zoneId,
    required String latitude,
    required String longitude,
    String? page,
    String? limit,
    String? name,
    String? type,
    String? veg,
    String? nonVeg,
    String? topRated,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/restaurants/nearby';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'zone_id': encodeQueryParameter(_serializers, zoneId, const FullType(ConsumerRestaurantsPopularGetZoneIdParameter)),
      r'latitude': encodeQueryParameter(_serializers, latitude, const FullType(String)),
      r'longitude': encodeQueryParameter(_serializers, longitude, const FullType(String)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(String)),
      if (name != null) r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
      if (veg != null) r'veg': encodeQueryParameter(_serializers, veg, const FullType(String)),
      if (nonVeg != null) r'non_veg': encodeQueryParameter(_serializers, nonVeg, const FullType(String)),
      if (topRated != null) r'top_rated': encodeQueryParameter(_serializers, topRated, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsumerRestaurantListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerRestaurantListResponse),
      ) as ConsumerRestaurantListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerRestaurantListResponse>(
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

  /// consumerRestaurantsPopularGet
  /// Popular restaurants for the home screen horizontal list. Same zone flow as GET /consumer/restaurants/all. Sorted **open first**, then **order_count** (legacy PHP &#x60;restaurants/popular&#x60;). Optional **latitude** / **longitude** (query or headers) for distance on cards.
  ///
  /// Parameters:
  /// * [zoneId] - Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.
  /// * [latitude] - Customer latitude (or send header latitude)
  /// * [longitude] - Customer longitude (or send header longitude)
  /// * [page] 
  /// * [limit] - Max 50
  /// * [type] 
  /// * [veg] 
  /// * [nonVeg] 
  /// * [topRated] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerRestaurantListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerRestaurantListResponse>> consumerRestaurantsPopularGet({ 
    required ConsumerRestaurantsPopularGetZoneIdParameter zoneId,
    String? latitude,
    String? longitude,
    String? page,
    String? limit,
    String? type,
    String? veg,
    String? nonVeg,
    String? topRated,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/restaurants/popular';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'zone_id': encodeQueryParameter(_serializers, zoneId, const FullType(ConsumerRestaurantsPopularGetZoneIdParameter)),
      if (latitude != null) r'latitude': encodeQueryParameter(_serializers, latitude, const FullType(String)),
      if (longitude != null) r'longitude': encodeQueryParameter(_serializers, longitude, const FullType(String)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(String)),
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
      if (veg != null) r'veg': encodeQueryParameter(_serializers, veg, const FullType(String)),
      if (nonVeg != null) r'non_veg': encodeQueryParameter(_serializers, nonVeg, const FullType(String)),
      if (topRated != null) r'top_rated': encodeQueryParameter(_serializers, topRated, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsumerRestaurantListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerRestaurantListResponse),
      ) as ConsumerRestaurantListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerRestaurantListResponse>(
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

  /// consumerRestaurantsSpecficIdGet
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerRestaurantsSpecficIdGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerRestaurantsSpecficIdGet200Response>> consumerRestaurantsSpecficIdGet({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/restaurants/specfic/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
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

    ConsumerRestaurantsSpecficIdGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerRestaurantsSpecficIdGet200Response),
      ) as ConsumerRestaurantsSpecficIdGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerRestaurantsSpecficIdGet200Response>(
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/api_error.dart';
import 'package:openapi/src/model/consumer_favourite_action_response.dart';
import 'package:openapi/src/model/consumer_favourite_body.dart';
import 'package:openapi/src/model/consumer_favourite_list_response.dart';
import 'package:openapi/src/model/consumer_restaurants_popular_get_zone_id_parameter.dart';

class ConsumerFavouritesApi {

  final Dio _dio;

  final Serializers _serializers;

  const ConsumerFavouritesApi(this._dio, this._serializers);

  /// consumerFavouritesAddPost
  /// Add a food OR restaurant to favourites (not both).
  ///
  /// Parameters:
  /// * [authorization] 
  /// * [consumerFavouriteBody] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerFavouriteActionResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerFavouriteActionResponse>> consumerFavouritesAddPost({ 
    required String authorization,
    required ConsumerFavouriteBody consumerFavouriteBody,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/favourites/add';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        r'authorization': authorization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(ConsumerFavouriteBody);
      _bodyData = _serializers.serialize(consumerFavouriteBody, specifiedType: _type);

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

    ConsumerFavouriteActionResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerFavouriteActionResponse),
      ) as ConsumerFavouriteActionResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerFavouriteActionResponse>(
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

  /// consumerFavouritesListGet
  /// Favorites screen: Foods tab (&#x60;type&#x3D;food&#x60;) and Restaurants tab (&#x60;type&#x3D;restaurant&#x60;). Optional &#x60;search&#x60; matches item/restaurant name. Send latitude/longitude headers for distance badge on restaurant cards.
  ///
  /// Parameters:
  /// * [authorization] 
  /// * [zoneId] - Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.
  /// * [type] - Figma tab: food = Foods, restaurant = Restaurants
  /// * [search] - Filter by name (search bar)
  /// * [latitude] - User location for distance on restaurant favourites
  /// * [longitude] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerFavouriteListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerFavouriteListResponse>> consumerFavouritesListGet({ 
    required String authorization,
    required ConsumerRestaurantsPopularGetZoneIdParameter zoneId,
    String? type = 'all',
    String? search,
    String? latitude,
    String? longitude,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/favourites/list';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        r'authorization': authorization,
        if (latitude != null) r'latitude': latitude,
        if (longitude != null) r'longitude': longitude,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
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

    ConsumerFavouriteListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerFavouriteListResponse),
      ) as ConsumerFavouriteListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerFavouriteListResponse>(
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

  /// consumerFavouritesRemoveDelete
  /// Remove a food OR restaurant from favourites (query or JSON body).
  ///
  /// Parameters:
  /// * [authorization] 
  /// * [foodId] 
  /// * [restaurantId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsumerFavouriteActionResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsumerFavouriteActionResponse>> consumerFavouritesRemoveDelete({ 
    required String authorization,
    int? foodId,
    int? restaurantId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/consumer/favourites/remove';
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        r'authorization': authorization,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (foodId != null) r'food_id': encodeQueryParameter(_serializers, foodId, const FullType(int)),
      if (restaurantId != null) r'restaurant_id': encodeQueryParameter(_serializers, restaurantId, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsumerFavouriteActionResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsumerFavouriteActionResponse),
      ) as ConsumerFavouriteActionResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsumerFavouriteActionResponse>(
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

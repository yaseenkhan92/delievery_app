//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/src/serializers.dart';
import 'package:openapi/src/auth/api_key_auth.dart';
import 'package:openapi/src/auth/basic_auth.dart';
import 'package:openapi/src/auth/bearer_auth.dart';
import 'package:openapi/src/auth/oauth.dart';
import 'package:openapi/src/api/app_config_all_apps_api.dart';
import 'package:openapi/src/api/consumer_addresses_api.dart';
import 'package:openapi/src/api/consumer_apply_api.dart';
import 'package:openapi/src/api/consumer_auth_api.dart';
import 'package:openapi/src/api/consumer_cart_api.dart';
import 'package:openapi/src/api/consumer_chat_api.dart';
import 'package:openapi/src/api/consumer_discover_api.dart';
import 'package:openapi/src/api/consumer_favourites_api.dart';
import 'package:openapi/src/api/consumer_notifications_api.dart';
import 'package:openapi/src/api/consumer_orders_api.dart';
import 'package:openapi/src/api/consumer_profile_api.dart';
import 'package:openapi/src/api/consumer_zone_api.dart';
import 'package:openapi/src/api/consumer_zones_api.dart';
import 'package:openapi/src/api/legal_pages_all_apps_api.dart';
import 'package:openapi/src/api/storage_api.dart';
import 'package:openapi/src/api/upload_api.dart';

class Openapi {
  static const String basePath = r'/api';

  final Dio dio;
  final Serializers serializers;

  Openapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the OAuth token associated with the given [name].
  ///
  /// If no [OAuthInterceptor] is registered or no token exists for the given
  /// [name], this method has no effect.
  void removeOAuthToken(String name) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens.remove(name);
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the bearer authentication token associated with the given [name].
  ///
  /// If no [BearerAuthInterceptor] is registered or no token exists for the
  /// given [name], this method has no effect.
  void removeBearerAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens.remove(name);
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  /// Removes the basic authentication credentials associated with the given [name].
  ///
  /// If no [BasicAuthInterceptor] is registered or no credentials exist for the
  /// given [name], this method has no effect.
  void removeBasicAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo.remove(name);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Removes the API key associated with the given [name].
  ///
  /// If no [ApiKeyAuthInterceptor] is registered or no API key exists for the
  /// given [name], this method has no effect.
  void removeApiKey(String name) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys.remove(name);
    }
  }

  /// Get AppConfigAllAppsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AppConfigAllAppsApi getAppConfigAllAppsApi() {
    return AppConfigAllAppsApi(dio, serializers);
  }

  /// Get ConsumerAddressesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerAddressesApi getConsumerAddressesApi() {
    return ConsumerAddressesApi(dio, serializers);
  }

  /// Get ConsumerApplyApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerApplyApi getConsumerApplyApi() {
    return ConsumerApplyApi(dio, serializers);
  }

  /// Get ConsumerAuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerAuthApi getConsumerAuthApi() {
    return ConsumerAuthApi(dio, serializers);
  }

  /// Get ConsumerCartApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerCartApi getConsumerCartApi() {
    return ConsumerCartApi(dio, serializers);
  }

  /// Get ConsumerChatApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerChatApi getConsumerChatApi() {
    return ConsumerChatApi(dio, serializers);
  }

  /// Get ConsumerDiscoverApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerDiscoverApi getConsumerDiscoverApi() {
    return ConsumerDiscoverApi(dio, serializers);
  }

  /// Get ConsumerFavouritesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerFavouritesApi getConsumerFavouritesApi() {
    return ConsumerFavouritesApi(dio, serializers);
  }

  /// Get ConsumerNotificationsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerNotificationsApi getConsumerNotificationsApi() {
    return ConsumerNotificationsApi(dio, serializers);
  }

  /// Get ConsumerOrdersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerOrdersApi getConsumerOrdersApi() {
    return ConsumerOrdersApi(dio, serializers);
  }

  /// Get ConsumerProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerProfileApi getConsumerProfileApi() {
    return ConsumerProfileApi(dio, serializers);
  }

  /// Get ConsumerZoneApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerZoneApi getConsumerZoneApi() {
    return ConsumerZoneApi(dio, serializers);
  }

  /// Get ConsumerZonesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerZonesApi getConsumerZonesApi() {
    return ConsumerZonesApi(dio, serializers);
  }

  /// Get LegalPagesAllAppsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LegalPagesAllAppsApi getLegalPagesAllAppsApi() {
    return LegalPagesAllAppsApi(dio, serializers);
  }

  /// Get StorageApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StorageApi getStorageApi() {
    return StorageApi(dio, serializers);
  }

  /// Get UploadApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UploadApi getUploadApi() {
    return UploadApi(dio, serializers);
  }
}

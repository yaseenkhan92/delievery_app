//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/app_configuration_response_centralize_login.dart';
import 'package:openapi/src/model/app_configuration_response_language_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_configuration_response.g.dart';

/// Flat bootstrap payload (legacy StackFood config). Additional keys may be present.
///
/// Properties:
/// * [businessName] 
/// * [logoFullUrl] 
/// * [termsAndConditions] - HTML or plain text from admin Pages
/// * [privacyPolicy] 
/// * [aboutUs] 
/// * [refundPolicyData] 
/// * [cancellationPolicyData] 
/// * [shippingPolicyData] 
/// * [refundPolicyStatus] - 1 = show refund policy in app
/// * [cancellationPolicyStatus] 
/// * [shippingPolicyStatus] 
/// * [cookiesText] 
/// * [footerText] 
/// * [cashOnDelivery] 
/// * [digitalPayment] 
/// * [homeDelivery] 
/// * [takeAway] 
/// * [maintenanceMode] 
/// * [orderConfirmationModel] 
/// * [appMinimumVersionAndroid] 
/// * [appMinimumVersionAndroidRestaurant] 
/// * [appMinimumVersionAndroidDeliveryman] 
/// * [appUrlAndroid] 
/// * [appUrlAndroidRestaurant] 
/// * [appUrlAndroidDeliveryman] 
/// * [centralizeLogin] 
/// * [deliverymanAdditionalJoinUsPageData] 
/// * [restaurantAdditionalJoinUsPageData] 
/// * [language] 
@BuiltValue()
abstract class AppConfigurationResponse implements Built<AppConfigurationResponse, AppConfigurationResponseBuilder> {
  @BuiltValueField(wireName: r'business_name')
  String? get businessName;

  @BuiltValueField(wireName: r'logo_full_url')
  String? get logoFullUrl;

  /// HTML or plain text from admin Pages
  @BuiltValueField(wireName: r'terms_and_conditions')
  String? get termsAndConditions;

  @BuiltValueField(wireName: r'privacy_policy')
  String? get privacyPolicy;

  @BuiltValueField(wireName: r'about_us')
  String? get aboutUs;

  @BuiltValueField(wireName: r'refund_policy_data')
  String? get refundPolicyData;

  @BuiltValueField(wireName: r'cancellation_policy_data')
  String? get cancellationPolicyData;

  @BuiltValueField(wireName: r'shipping_policy_data')
  String? get shippingPolicyData;

  /// 1 = show refund policy in app
  @BuiltValueField(wireName: r'refund_policy_status')
  int? get refundPolicyStatus;

  @BuiltValueField(wireName: r'cancellation_policy_status')
  int? get cancellationPolicyStatus;

  @BuiltValueField(wireName: r'shipping_policy_status')
  int? get shippingPolicyStatus;

  @BuiltValueField(wireName: r'cookies_text')
  String? get cookiesText;

  @BuiltValueField(wireName: r'footer_text')
  String? get footerText;

  @BuiltValueField(wireName: r'cash_on_delivery')
  bool? get cashOnDelivery;

  @BuiltValueField(wireName: r'digital_payment')
  bool? get digitalPayment;

  @BuiltValueField(wireName: r'home_delivery')
  bool? get homeDelivery;

  @BuiltValueField(wireName: r'take_away')
  bool? get takeAway;

  @BuiltValueField(wireName: r'maintenance_mode')
  bool? get maintenanceMode;

  @BuiltValueField(wireName: r'order_confirmation_model')
  String? get orderConfirmationModel;

  @BuiltValueField(wireName: r'app_minimum_version_android')
  num? get appMinimumVersionAndroid;

  @BuiltValueField(wireName: r'app_minimum_version_android_restaurant')
  num? get appMinimumVersionAndroidRestaurant;

  @BuiltValueField(wireName: r'app_minimum_version_android_deliveryman')
  num? get appMinimumVersionAndroidDeliveryman;

  @BuiltValueField(wireName: r'app_url_android')
  String? get appUrlAndroid;

  @BuiltValueField(wireName: r'app_url_android_restaurant')
  String? get appUrlAndroidRestaurant;

  @BuiltValueField(wireName: r'app_url_android_deliveryman')
  String? get appUrlAndroidDeliveryman;

  @BuiltValueField(wireName: r'centralize_login')
  AppConfigurationResponseCentralizeLogin? get centralizeLogin;

  @BuiltValueField(wireName: r'deliveryman_additional_join_us_page_data')
  JsonObject? get deliverymanAdditionalJoinUsPageData;

  @BuiltValueField(wireName: r'restaurant_additional_join_us_page_data')
  JsonObject? get restaurantAdditionalJoinUsPageData;

  @BuiltValueField(wireName: r'language')
  BuiltList<AppConfigurationResponseLanguageInner>? get language;

  AppConfigurationResponse._();

  factory AppConfigurationResponse([void updates(AppConfigurationResponseBuilder b)]) = _$AppConfigurationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppConfigurationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AppConfigurationResponse> get serializer => _$AppConfigurationResponseSerializer();
}

class _$AppConfigurationResponseSerializer implements PrimitiveSerializer<AppConfigurationResponse> {
  @override
  final Iterable<Type> types = const [AppConfigurationResponse, _$AppConfigurationResponse];

  @override
  final String wireName = r'AppConfigurationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AppConfigurationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.businessName != null) {
      yield r'business_name';
      yield serializers.serialize(
        object.businessName,
        specifiedType: const FullType(String),
      );
    }
    if (object.logoFullUrl != null) {
      yield r'logo_full_url';
      yield serializers.serialize(
        object.logoFullUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.termsAndConditions != null) {
      yield r'terms_and_conditions';
      yield serializers.serialize(
        object.termsAndConditions,
        specifiedType: const FullType(String),
      );
    }
    if (object.privacyPolicy != null) {
      yield r'privacy_policy';
      yield serializers.serialize(
        object.privacyPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.aboutUs != null) {
      yield r'about_us';
      yield serializers.serialize(
        object.aboutUs,
        specifiedType: const FullType(String),
      );
    }
    if (object.refundPolicyData != null) {
      yield r'refund_policy_data';
      yield serializers.serialize(
        object.refundPolicyData,
        specifiedType: const FullType(String),
      );
    }
    if (object.cancellationPolicyData != null) {
      yield r'cancellation_policy_data';
      yield serializers.serialize(
        object.cancellationPolicyData,
        specifiedType: const FullType(String),
      );
    }
    if (object.shippingPolicyData != null) {
      yield r'shipping_policy_data';
      yield serializers.serialize(
        object.shippingPolicyData,
        specifiedType: const FullType(String),
      );
    }
    if (object.refundPolicyStatus != null) {
      yield r'refund_policy_status';
      yield serializers.serialize(
        object.refundPolicyStatus,
        specifiedType: const FullType(int),
      );
    }
    if (object.cancellationPolicyStatus != null) {
      yield r'cancellation_policy_status';
      yield serializers.serialize(
        object.cancellationPolicyStatus,
        specifiedType: const FullType(int),
      );
    }
    if (object.shippingPolicyStatus != null) {
      yield r'shipping_policy_status';
      yield serializers.serialize(
        object.shippingPolicyStatus,
        specifiedType: const FullType(int),
      );
    }
    if (object.cookiesText != null) {
      yield r'cookies_text';
      yield serializers.serialize(
        object.cookiesText,
        specifiedType: const FullType(String),
      );
    }
    if (object.footerText != null) {
      yield r'footer_text';
      yield serializers.serialize(
        object.footerText,
        specifiedType: const FullType(String),
      );
    }
    if (object.cashOnDelivery != null) {
      yield r'cash_on_delivery';
      yield serializers.serialize(
        object.cashOnDelivery,
        specifiedType: const FullType(bool),
      );
    }
    if (object.digitalPayment != null) {
      yield r'digital_payment';
      yield serializers.serialize(
        object.digitalPayment,
        specifiedType: const FullType(bool),
      );
    }
    if (object.homeDelivery != null) {
      yield r'home_delivery';
      yield serializers.serialize(
        object.homeDelivery,
        specifiedType: const FullType(bool),
      );
    }
    if (object.takeAway != null) {
      yield r'take_away';
      yield serializers.serialize(
        object.takeAway,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maintenanceMode != null) {
      yield r'maintenance_mode';
      yield serializers.serialize(
        object.maintenanceMode,
        specifiedType: const FullType(bool),
      );
    }
    if (object.orderConfirmationModel != null) {
      yield r'order_confirmation_model';
      yield serializers.serialize(
        object.orderConfirmationModel,
        specifiedType: const FullType(String),
      );
    }
    if (object.appMinimumVersionAndroid != null) {
      yield r'app_minimum_version_android';
      yield serializers.serialize(
        object.appMinimumVersionAndroid,
        specifiedType: const FullType(num),
      );
    }
    if (object.appMinimumVersionAndroidRestaurant != null) {
      yield r'app_minimum_version_android_restaurant';
      yield serializers.serialize(
        object.appMinimumVersionAndroidRestaurant,
        specifiedType: const FullType(num),
      );
    }
    if (object.appMinimumVersionAndroidDeliveryman != null) {
      yield r'app_minimum_version_android_deliveryman';
      yield serializers.serialize(
        object.appMinimumVersionAndroidDeliveryman,
        specifiedType: const FullType(num),
      );
    }
    if (object.appUrlAndroid != null) {
      yield r'app_url_android';
      yield serializers.serialize(
        object.appUrlAndroid,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.appUrlAndroidRestaurant != null) {
      yield r'app_url_android_restaurant';
      yield serializers.serialize(
        object.appUrlAndroidRestaurant,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.appUrlAndroidDeliveryman != null) {
      yield r'app_url_android_deliveryman';
      yield serializers.serialize(
        object.appUrlAndroidDeliveryman,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.centralizeLogin != null) {
      yield r'centralize_login';
      yield serializers.serialize(
        object.centralizeLogin,
        specifiedType: const FullType(AppConfigurationResponseCentralizeLogin),
      );
    }
    if (object.deliverymanAdditionalJoinUsPageData != null) {
      yield r'deliveryman_additional_join_us_page_data';
      yield serializers.serialize(
        object.deliverymanAdditionalJoinUsPageData,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.restaurantAdditionalJoinUsPageData != null) {
      yield r'restaurant_additional_join_us_page_data';
      yield serializers.serialize(
        object.restaurantAdditionalJoinUsPageData,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(BuiltList, [FullType(AppConfigurationResponseLanguageInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AppConfigurationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AppConfigurationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'business_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.businessName = valueDes;
          break;
        case r'logo_full_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logoFullUrl = valueDes;
          break;
        case r'terms_and_conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.termsAndConditions = valueDes;
          break;
        case r'privacy_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.privacyPolicy = valueDes;
          break;
        case r'about_us':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.aboutUs = valueDes;
          break;
        case r'refund_policy_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.refundPolicyData = valueDes;
          break;
        case r'cancellation_policy_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cancellationPolicyData = valueDes;
          break;
        case r'shipping_policy_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shippingPolicyData = valueDes;
          break;
        case r'refund_policy_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.refundPolicyStatus = valueDes;
          break;
        case r'cancellation_policy_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.cancellationPolicyStatus = valueDes;
          break;
        case r'shipping_policy_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.shippingPolicyStatus = valueDes;
          break;
        case r'cookies_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cookiesText = valueDes;
          break;
        case r'footer_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.footerText = valueDes;
          break;
        case r'cash_on_delivery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.cashOnDelivery = valueDes;
          break;
        case r'digital_payment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.digitalPayment = valueDes;
          break;
        case r'home_delivery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.homeDelivery = valueDes;
          break;
        case r'take_away':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.takeAway = valueDes;
          break;
        case r'maintenance_mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.maintenanceMode = valueDes;
          break;
        case r'order_confirmation_model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderConfirmationModel = valueDes;
          break;
        case r'app_minimum_version_android':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.appMinimumVersionAndroid = valueDes;
          break;
        case r'app_minimum_version_android_restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.appMinimumVersionAndroidRestaurant = valueDes;
          break;
        case r'app_minimum_version_android_deliveryman':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.appMinimumVersionAndroidDeliveryman = valueDes;
          break;
        case r'app_url_android':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appUrlAndroid = valueDes;
          break;
        case r'app_url_android_restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appUrlAndroidRestaurant = valueDes;
          break;
        case r'app_url_android_deliveryman':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appUrlAndroidDeliveryman = valueDes;
          break;
        case r'centralize_login':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AppConfigurationResponseCentralizeLogin),
          ) as AppConfigurationResponseCentralizeLogin?;
          if (valueDes == null) continue;
          result.centralizeLogin.replace(valueDes);
          break;
        case r'deliveryman_additional_join_us_page_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.deliverymanAdditionalJoinUsPageData = valueDes;
          break;
        case r'restaurant_additional_join_us_page_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.restaurantAdditionalJoinUsPageData = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AppConfigurationResponseLanguageInner)]),
          ) as BuiltList<AppConfigurationResponseLanguageInner>?;
          if (valueDes == null) continue;
          result.language.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AppConfigurationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppConfigurationResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}



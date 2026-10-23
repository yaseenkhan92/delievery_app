//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/place_order_request_latitude.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_apply_restaurant_body.g.dart';

/// ConsumerApplyRestaurantBody
///
/// Properties:
/// * [restaurantName] 
/// * [restaurantAddress] 
/// * [lat] 
/// * [lng] 
/// * [zoneId] 
/// * [tax] 
/// * [language] 
/// * [cloudflareId] - Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
/// * [logo] - R2 path from POST /upload `path` (logo)
/// * [coverPhoto] - R2 path from POST /upload `path` (cover)
/// * [cuisines] 
@BuiltValue()
abstract class ConsumerApplyRestaurantBody implements Built<ConsumerApplyRestaurantBody, ConsumerApplyRestaurantBodyBuilder> {
  @BuiltValueField(wireName: r'restaurant_name')
  String get restaurantName;

  @BuiltValueField(wireName: r'restaurant_address')
  String get restaurantAddress;

  @BuiltValueField(wireName: r'lat')
  PlaceOrderRequestLatitude? get lat;

  @BuiltValueField(wireName: r'lng')
  PlaceOrderRequestLatitude? get lng;

  @BuiltValueField(wireName: r'zone_id')
  int get zoneId;

  @BuiltValueField(wireName: r'tax')
  num get tax;

  @BuiltValueField(wireName: r'language')
  ConsumerApplyRestaurantBodyLanguageEnum? get language;
  // enum languageEnum {  en,  he,  };

  /// Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
  @BuiltValueField(wireName: r'cloudflare_id')
  String? get cloudflareId;

  /// R2 path from POST /upload `path` (logo)
  @BuiltValueField(wireName: r'logo')
  String? get logo;

  /// R2 path from POST /upload `path` (cover)
  @BuiltValueField(wireName: r'cover_photo')
  String? get coverPhoto;

  @BuiltValueField(wireName: r'cuisines')
  BuiltList<int>? get cuisines;

  ConsumerApplyRestaurantBody._();

  factory ConsumerApplyRestaurantBody([void updates(ConsumerApplyRestaurantBodyBuilder b)]) = _$ConsumerApplyRestaurantBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerApplyRestaurantBodyBuilder b) => b
      ..language = ConsumerApplyRestaurantBodyLanguageEnum.valueOf('en');

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerApplyRestaurantBody> get serializer => _$ConsumerApplyRestaurantBodySerializer();
}

class _$ConsumerApplyRestaurantBodySerializer implements PrimitiveSerializer<ConsumerApplyRestaurantBody> {
  @override
  final Iterable<Type> types = const [ConsumerApplyRestaurantBody, _$ConsumerApplyRestaurantBody];

  @override
  final String wireName = r'ConsumerApplyRestaurantBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerApplyRestaurantBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'restaurant_name';
    yield serializers.serialize(
      object.restaurantName,
      specifiedType: const FullType(String),
    );
    yield r'restaurant_address';
    yield serializers.serialize(
      object.restaurantAddress,
      specifiedType: const FullType(String),
    );
    if (object.lat != null) {
      yield r'lat';
      yield serializers.serialize(
        object.lat,
        specifiedType: const FullType(PlaceOrderRequestLatitude),
      );
    }
    if (object.lng != null) {
      yield r'lng';
      yield serializers.serialize(
        object.lng,
        specifiedType: const FullType(PlaceOrderRequestLatitude),
      );
    }
    yield r'zone_id';
    yield serializers.serialize(
      object.zoneId,
      specifiedType: const FullType(int),
    );
    yield r'tax';
    yield serializers.serialize(
      object.tax,
      specifiedType: const FullType(num),
    );
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(ConsumerApplyRestaurantBodyLanguageEnum),
      );
    }
    if (object.cloudflareId != null) {
      yield r'cloudflare_id';
      yield serializers.serialize(
        object.cloudflareId,
        specifiedType: const FullType(String),
      );
    }
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType(String),
      );
    }
    if (object.coverPhoto != null) {
      yield r'cover_photo';
      yield serializers.serialize(
        object.coverPhoto,
        specifiedType: const FullType(String),
      );
    }
    if (object.cuisines != null) {
      yield r'cuisines';
      yield serializers.serialize(
        object.cuisines,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerApplyRestaurantBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerApplyRestaurantBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restaurant_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.restaurantName = valueDes;
          break;
        case r'restaurant_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.restaurantAddress = valueDes;
          break;
        case r'lat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceOrderRequestLatitude),
          ) as PlaceOrderRequestLatitude?;
          if (valueDes == null) continue;
          result.lat.replace(valueDes);
          break;
        case r'lng':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceOrderRequestLatitude),
          ) as PlaceOrderRequestLatitude?;
          if (valueDes == null) continue;
          result.lng.replace(valueDes);
          break;
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.zoneId = valueDes;
          break;
        case r'tax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.tax = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerApplyRestaurantBodyLanguageEnum),
          ) as ConsumerApplyRestaurantBodyLanguageEnum?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'cloudflare_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cloudflareId = valueDes;
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logo = valueDes;
          break;
        case r'cover_photo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.coverPhoto = valueDes;
          break;
        case r'cuisines':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.cuisines.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerApplyRestaurantBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerApplyRestaurantBodyBuilder();
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


class ConsumerApplyRestaurantBodyLanguageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'en')
  static const ConsumerApplyRestaurantBodyLanguageEnum en = _$consumerApplyRestaurantBodyLanguageEnum_en;
  @BuiltValueEnumConst(wireName: r'he')
  static const ConsumerApplyRestaurantBodyLanguageEnum he = _$consumerApplyRestaurantBodyLanguageEnum_he;

  static Serializer<ConsumerApplyRestaurantBodyLanguageEnum> get serializer => _$consumerApplyRestaurantBodyLanguageEnumSerializer;

  const ConsumerApplyRestaurantBodyLanguageEnum._(String name): super(name);

  static BuiltSet<ConsumerApplyRestaurantBodyLanguageEnum> get values => _$consumerApplyRestaurantBodyLanguageEnumValues;
  static ConsumerApplyRestaurantBodyLanguageEnum valueOf(String name) => _$consumerApplyRestaurantBodyLanguageEnumValueOf(name);
}


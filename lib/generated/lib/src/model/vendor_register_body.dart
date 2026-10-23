//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_register_body_lng.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/vendor_register_body_lat.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_register_body.g.dart';

/// VendorRegisterBody
///
/// Properties:
/// * [fName] - Owner first name
/// * [lName] - Owner last name
/// * [email] 
/// * [phone] 
/// * [password] 
/// * [restaurantName] 
/// * [restaurantAddress] 
/// * [lat] 
/// * [lng] 
/// * [zoneId] - From GET /consumer/config/zone-id or admin zones
/// * [tax] - Vat / Tax (Figma required)
/// * [language] - Restaurant default language (English / Hebrew toggle)
/// * [cloudflareId] - Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
/// * [logo] - R2 path from POST /upload `path` (category restaurant)
/// * [coverPhoto] - R2 path from POST /upload `path` (category restaurant)
/// * [cuisines] - Cuisine ids from cuisines table
/// * [minimumDeliveryTime] 
/// * [maximumDeliveryTime] 
/// * [deliveryTimeType] 
@BuiltValue()
abstract class VendorRegisterBody implements Built<VendorRegisterBody, VendorRegisterBodyBuilder> {
  /// Owner first name
  @BuiltValueField(wireName: r'f_name')
  String get fName;

  /// Owner last name
  @BuiltValueField(wireName: r'l_name')
  String get lName;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'restaurant_name')
  String get restaurantName;

  @BuiltValueField(wireName: r'restaurant_address')
  String get restaurantAddress;

  @BuiltValueField(wireName: r'lat')
  VendorRegisterBodyLat? get lat;

  @BuiltValueField(wireName: r'lng')
  VendorRegisterBodyLng? get lng;

  /// From GET /consumer/config/zone-id or admin zones
  @BuiltValueField(wireName: r'zone_id')
  int get zoneId;

  /// Vat / Tax (Figma required)
  @BuiltValueField(wireName: r'tax')
  num get tax;

  /// Restaurant default language (English / Hebrew toggle)
  @BuiltValueField(wireName: r'language')
  VendorRegisterBodyLanguageEnum? get language;
  // enum languageEnum {  en,  he,  };

  /// Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
  @BuiltValueField(wireName: r'cloudflare_id')
  String? get cloudflareId;

  /// R2 path from POST /upload `path` (category restaurant)
  @BuiltValueField(wireName: r'logo')
  String? get logo;

  /// R2 path from POST /upload `path` (category restaurant)
  @BuiltValueField(wireName: r'cover_photo')
  String? get coverPhoto;

  /// Cuisine ids from cuisines table
  @BuiltValueField(wireName: r'cuisines')
  BuiltList<int>? get cuisines;

  @BuiltValueField(wireName: r'minimum_delivery_time')
  String? get minimumDeliveryTime;

  @BuiltValueField(wireName: r'maximum_delivery_time')
  String? get maximumDeliveryTime;

  @BuiltValueField(wireName: r'delivery_time_type')
  String? get deliveryTimeType;

  VendorRegisterBody._();

  factory VendorRegisterBody([void updates(VendorRegisterBodyBuilder b)]) = _$VendorRegisterBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRegisterBodyBuilder b) => b
      ..language = VendorRegisterBodyLanguageEnum.valueOf('en');

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRegisterBody> get serializer => _$VendorRegisterBodySerializer();
}

class _$VendorRegisterBodySerializer implements PrimitiveSerializer<VendorRegisterBody> {
  @override
  final Iterable<Type> types = const [VendorRegisterBody, _$VendorRegisterBody];

  @override
  final String wireName = r'VendorRegisterBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRegisterBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'f_name';
    yield serializers.serialize(
      object.fName,
      specifiedType: const FullType(String),
    );
    yield r'l_name';
    yield serializers.serialize(
      object.lName,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
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
        specifiedType: const FullType(VendorRegisterBodyLat),
      );
    }
    if (object.lng != null) {
      yield r'lng';
      yield serializers.serialize(
        object.lng,
        specifiedType: const FullType(VendorRegisterBodyLng),
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
        specifiedType: const FullType(VendorRegisterBodyLanguageEnum),
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
    if (object.minimumDeliveryTime != null) {
      yield r'minimum_delivery_time';
      yield serializers.serialize(
        object.minimumDeliveryTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.maximumDeliveryTime != null) {
      yield r'maximum_delivery_time';
      yield serializers.serialize(
        object.maximumDeliveryTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryTimeType != null) {
      yield r'delivery_time_type';
      yield serializers.serialize(
        object.deliveryTimeType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRegisterBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRegisterBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'f_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fName = valueDes;
          break;
        case r'l_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lName = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
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
            specifiedType: const FullType.nullable(VendorRegisterBodyLat),
          ) as VendorRegisterBodyLat?;
          if (valueDes == null) continue;
          result.lat.replace(valueDes);
          break;
        case r'lng':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorRegisterBodyLng),
          ) as VendorRegisterBodyLng?;
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
            specifiedType: const FullType.nullable(VendorRegisterBodyLanguageEnum),
          ) as VendorRegisterBodyLanguageEnum?;
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
        case r'minimum_delivery_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.minimumDeliveryTime = valueDes;
          break;
        case r'maximum_delivery_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.maximumDeliveryTime = valueDes;
          break;
        case r'delivery_time_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deliveryTimeType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRegisterBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRegisterBodyBuilder();
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


/// Restaurant default language (English / Hebrew toggle)
class VendorRegisterBodyLanguageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'en')
  static const VendorRegisterBodyLanguageEnum en = _$vendorRegisterBodyLanguageEnum_en;
  @BuiltValueEnumConst(wireName: r'he')
  static const VendorRegisterBodyLanguageEnum he = _$vendorRegisterBodyLanguageEnum_he;

  static Serializer<VendorRegisterBodyLanguageEnum> get serializer => _$vendorRegisterBodyLanguageEnumSerializer;

  const VendorRegisterBodyLanguageEnum._(String name): super(name);

  static BuiltSet<VendorRegisterBodyLanguageEnum> get values => _$vendorRegisterBodyLanguageEnumValues;
  static VendorRegisterBodyLanguageEnum valueOf(String name) => _$vendorRegisterBodyLanguageEnumValueOf(name);
}


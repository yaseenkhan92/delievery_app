//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/delivery_man_register_body_identity_image.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_register_body.g.dart';

/// DeliveryManRegisterBody
///
/// Properties:
/// * [fName] - Step 1 — first name
/// * [lName] - Step 1 — last name
/// * [phone] - Step 1 — with country code
/// * [email] 
/// * [password] 
/// * [confirmPassword] 
/// * [cloudflareId] - Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
/// * [image] - Step 1 — portrait / identity photo path (POST /upload category=profile)
/// * [identityImage] 
/// * [zoneId] - Step 2 — city / service zone (GET /consumer/zone/list)
/// * [cityId] - Alias for zone_id
/// * [identityType] - Step 2 — ID type
/// * [identityNumber] - Step 2 — ID number
/// * [deliveryType] - Step 2 — Select Delivery Type (use with or instead of earning)
/// * [earning] - true = commission/freelance, false = salary
/// * [vehicleId] - Optional vehicle type id
/// * [fName] 
/// * [lName] 
@BuiltValue()
abstract class DeliveryManRegisterBody implements Built<DeliveryManRegisterBody, DeliveryManRegisterBodyBuilder> {
  /// Step 1 — first name
  @BuiltValueField(wireName: r'f_name')
  String get fName;

  /// Step 1 — last name
  @BuiltValueField(wireName: r'l_name')
  String get lName;

  /// Step 1 — with country code
  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'confirm_password')
  String get confirmPassword;

  /// Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
  @BuiltValueField(wireName: r'cloudflare_id')
  String? get cloudflareId;

  /// Step 1 — portrait / identity photo path (POST /upload category=profile)
  @BuiltValueField(wireName: r'image')
  String get image;

  @BuiltValueField(wireName: r'identity_image')
  DeliveryManRegisterBodyIdentityImage get identityImage;

  /// Step 2 — city / service zone (GET /consumer/zone/list)
  @BuiltValueField(wireName: r'zone_id')
  int get zoneId;

  /// Alias for zone_id
  @Deprecated('cityId has been deprecated')
  @BuiltValueField(wireName: r'city_id')
  int? get cityId;

  /// Step 2 — ID type
  @BuiltValueField(wireName: r'identity_type')
  DeliveryManRegisterBodyIdentityTypeEnum get identityType;
  // enum identityTypeEnum {  passport,  driving_license,  nid,  };

  /// Step 2 — ID number
  @BuiltValueField(wireName: r'identity_number')
  String get identityNumber;

  /// Step 2 — Select Delivery Type (use with or instead of earning)
  @BuiltValueField(wireName: r'delivery_type')
  DeliveryManRegisterBodyDeliveryTypeEnum? get deliveryType;
  // enum deliveryTypeEnum {  commission,  salary,  freelance,  };

  /// true = commission/freelance, false = salary
  @BuiltValueField(wireName: r'earning')
  bool? get earning;

  /// Optional vehicle type id
  @BuiltValueField(wireName: r'vehicle_id')
  int? get vehicleId;

  DeliveryManRegisterBody._();

  factory DeliveryManRegisterBody([void updates(DeliveryManRegisterBodyBuilder b)]) = _$DeliveryManRegisterBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManRegisterBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManRegisterBody> get serializer => _$DeliveryManRegisterBodySerializer();
}

class _$DeliveryManRegisterBodySerializer implements PrimitiveSerializer<DeliveryManRegisterBody> {
  @override
  final Iterable<Type> types = const [DeliveryManRegisterBody, _$DeliveryManRegisterBody];

  @override
  final String wireName = r'DeliveryManRegisterBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManRegisterBody object, {
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
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'confirm_password';
    yield serializers.serialize(
      object.confirmPassword,
      specifiedType: const FullType(String),
    );
    if (object.cloudflareId != null) {
      yield r'cloudflare_id';
      yield serializers.serialize(
        object.cloudflareId,
        specifiedType: const FullType(String),
      );
    }
    yield r'image';
    yield serializers.serialize(
      object.image,
      specifiedType: const FullType(String),
    );
    yield r'identity_image';
    yield serializers.serialize(
      object.identityImage,
      specifiedType: const FullType(DeliveryManRegisterBodyIdentityImage),
    );
    yield r'zone_id';
    yield serializers.serialize(
      object.zoneId,
      specifiedType: const FullType(int),
    );
    if (object.cityId != null) {
      yield r'city_id';
      yield serializers.serialize(
        object.cityId,
        specifiedType: const FullType(int),
      );
    }
    yield r'identity_type';
    yield serializers.serialize(
      object.identityType,
      specifiedType: const FullType(DeliveryManRegisterBodyIdentityTypeEnum),
    );
    yield r'identity_number';
    yield serializers.serialize(
      object.identityNumber,
      specifiedType: const FullType(String),
    );
    if (object.deliveryType != null) {
      yield r'delivery_type';
      yield serializers.serialize(
        object.deliveryType,
        specifiedType: const FullType(DeliveryManRegisterBodyDeliveryTypeEnum),
      );
    }
    if (object.earning != null) {
      yield r'earning';
      yield serializers.serialize(
        object.earning,
        specifiedType: const FullType(bool),
      );
    }
    if (object.vehicleId != null) {
      yield r'vehicle_id';
      yield serializers.serialize(
        object.vehicleId,
        specifiedType: const FullType(int),
      );
    }
    if (object.fName != null) {
      yield r'fName';
      yield serializers.serialize(
        object.fName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lName != null) {
      yield r'lName';
      yield serializers.serialize(
        object.lName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManRegisterBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManRegisterBodyBuilder result,
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
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'confirm_password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confirmPassword = valueDes;
          break;
        case r'cloudflare_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cloudflareId = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.image = valueDes;
          break;
        case r'identity_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliveryManRegisterBodyIdentityImage),
          ) as DeliveryManRegisterBodyIdentityImage;
          result.identityImage.replace(valueDes);
          break;
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.zoneId = valueDes;
          break;
        case r'city_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.cityId = valueDes;
          break;
        case r'identity_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliveryManRegisterBodyIdentityTypeEnum),
          ) as DeliveryManRegisterBodyIdentityTypeEnum;
          result.identityType = valueDes;
          break;
        case r'identity_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.identityNumber = valueDes;
          break;
        case r'delivery_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManRegisterBodyDeliveryTypeEnum),
          ) as DeliveryManRegisterBodyDeliveryTypeEnum?;
          if (valueDes == null) continue;
          result.deliveryType = valueDes;
          break;
        case r'earning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.earning = valueDes;
          break;
        case r'vehicle_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.vehicleId = valueDes;
          break;
        case r'fName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fName = valueDes;
          break;
        case r'lName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManRegisterBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManRegisterBodyBuilder();
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


/// Step 2 — ID type
class DeliveryManRegisterBodyIdentityTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'passport')
  static const DeliveryManRegisterBodyIdentityTypeEnum passport = _$deliveryManRegisterBodyIdentityTypeEnum_passport;
  @BuiltValueEnumConst(wireName: r'driving_license')
  static const DeliveryManRegisterBodyIdentityTypeEnum drivingLicense = _$deliveryManRegisterBodyIdentityTypeEnum_drivingLicense;
  @BuiltValueEnumConst(wireName: r'nid')
  static const DeliveryManRegisterBodyIdentityTypeEnum nid = _$deliveryManRegisterBodyIdentityTypeEnum_nid;

  static Serializer<DeliveryManRegisterBodyIdentityTypeEnum> get serializer => _$deliveryManRegisterBodyIdentityTypeEnumSerializer;

  const DeliveryManRegisterBodyIdentityTypeEnum._(String name): super(name);

  static BuiltSet<DeliveryManRegisterBodyIdentityTypeEnum> get values => _$deliveryManRegisterBodyIdentityTypeEnumValues;
  static DeliveryManRegisterBodyIdentityTypeEnum valueOf(String name) => _$deliveryManRegisterBodyIdentityTypeEnumValueOf(name);
}

/// Step 2 — Select Delivery Type (use with or instead of earning)
class DeliveryManRegisterBodyDeliveryTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'commission')
  static const DeliveryManRegisterBodyDeliveryTypeEnum commission = _$deliveryManRegisterBodyDeliveryTypeEnum_commission;
  @BuiltValueEnumConst(wireName: r'salary')
  static const DeliveryManRegisterBodyDeliveryTypeEnum salary = _$deliveryManRegisterBodyDeliveryTypeEnum_salary;
  @BuiltValueEnumConst(wireName: r'freelance')
  static const DeliveryManRegisterBodyDeliveryTypeEnum freelance = _$deliveryManRegisterBodyDeliveryTypeEnum_freelance;

  static Serializer<DeliveryManRegisterBodyDeliveryTypeEnum> get serializer => _$deliveryManRegisterBodyDeliveryTypeEnumSerializer;

  const DeliveryManRegisterBodyDeliveryTypeEnum._(String name): super(name);

  static BuiltSet<DeliveryManRegisterBodyDeliveryTypeEnum> get values => _$deliveryManRegisterBodyDeliveryTypeEnumValues;
  static DeliveryManRegisterBodyDeliveryTypeEnum valueOf(String name) => _$deliveryManRegisterBodyDeliveryTypeEnumValueOf(name);
}


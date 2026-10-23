//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_password_reset_body.g.dart';

/// VendorPasswordResetBody
///
/// Properties:
/// * [fieldType] 
/// * [email] 
/// * [phone] 
/// * [otp] 
/// * [password] 
/// * [confirmPassword] 
@BuiltValue()
abstract class VendorPasswordResetBody implements Built<VendorPasswordResetBody, VendorPasswordResetBodyBuilder> {
  @BuiltValueField(wireName: r'field_type')
  VendorPasswordResetBodyFieldTypeEnum? get fieldType;
  // enum fieldTypeEnum {  email,  phone,  };

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'otp')
  String get otp;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'confirm_password')
  String get confirmPassword;

  VendorPasswordResetBody._();

  factory VendorPasswordResetBody([void updates(VendorPasswordResetBodyBuilder b)]) = _$VendorPasswordResetBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorPasswordResetBodyBuilder b) => b
      ..fieldType = VendorPasswordResetBodyFieldTypeEnum.valueOf('phone');

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorPasswordResetBody> get serializer => _$VendorPasswordResetBodySerializer();
}

class _$VendorPasswordResetBodySerializer implements PrimitiveSerializer<VendorPasswordResetBody> {
  @override
  final Iterable<Type> types = const [VendorPasswordResetBody, _$VendorPasswordResetBody];

  @override
  final String wireName = r'VendorPasswordResetBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorPasswordResetBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fieldType != null) {
      yield r'field_type';
      yield serializers.serialize(
        object.fieldType,
        specifiedType: const FullType(VendorPasswordResetBodyFieldTypeEnum),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    yield r'otp';
    yield serializers.serialize(
      object.otp,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorPasswordResetBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorPasswordResetBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorPasswordResetBodyFieldTypeEnum),
          ) as VendorPasswordResetBodyFieldTypeEnum?;
          if (valueDes == null) continue;
          result.fieldType = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'otp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.otp = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorPasswordResetBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorPasswordResetBodyBuilder();
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


class VendorPasswordResetBodyFieldTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'email')
  static const VendorPasswordResetBodyFieldTypeEnum email = _$vendorPasswordResetBodyFieldTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'phone')
  static const VendorPasswordResetBodyFieldTypeEnum phone = _$vendorPasswordResetBodyFieldTypeEnum_phone;

  static Serializer<VendorPasswordResetBodyFieldTypeEnum> get serializer => _$vendorPasswordResetBodyFieldTypeEnumSerializer;

  const VendorPasswordResetBodyFieldTypeEnum._(String name): super(name);

  static BuiltSet<VendorPasswordResetBodyFieldTypeEnum> get values => _$vendorPasswordResetBodyFieldTypeEnumValues;
  static VendorPasswordResetBodyFieldTypeEnum valueOf(String name) => _$vendorPasswordResetBodyFieldTypeEnumValueOf(name);
}


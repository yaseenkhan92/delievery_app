//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_password_otp_body.g.dart';

/// VendorPasswordOtpBody
///
/// Properties:
/// * [fieldType] 
/// * [email] 
/// * [phone] 
/// * [otp] 
@BuiltValue()
abstract class VendorPasswordOtpBody implements Built<VendorPasswordOtpBody, VendorPasswordOtpBodyBuilder> {
  @BuiltValueField(wireName: r'field_type')
  VendorPasswordOtpBodyFieldTypeEnum? get fieldType;
  // enum fieldTypeEnum {  email,  phone,  };

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'otp')
  String get otp;

  VendorPasswordOtpBody._();

  factory VendorPasswordOtpBody([void updates(VendorPasswordOtpBodyBuilder b)]) = _$VendorPasswordOtpBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorPasswordOtpBodyBuilder b) => b
      ..fieldType = VendorPasswordOtpBodyFieldTypeEnum.valueOf('phone');

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorPasswordOtpBody> get serializer => _$VendorPasswordOtpBodySerializer();
}

class _$VendorPasswordOtpBodySerializer implements PrimitiveSerializer<VendorPasswordOtpBody> {
  @override
  final Iterable<Type> types = const [VendorPasswordOtpBody, _$VendorPasswordOtpBody];

  @override
  final String wireName = r'VendorPasswordOtpBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorPasswordOtpBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fieldType != null) {
      yield r'field_type';
      yield serializers.serialize(
        object.fieldType,
        specifiedType: const FullType(VendorPasswordOtpBodyFieldTypeEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorPasswordOtpBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorPasswordOtpBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorPasswordOtpBodyFieldTypeEnum),
          ) as VendorPasswordOtpBodyFieldTypeEnum?;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorPasswordOtpBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorPasswordOtpBodyBuilder();
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


class VendorPasswordOtpBodyFieldTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'email')
  static const VendorPasswordOtpBodyFieldTypeEnum email = _$vendorPasswordOtpBodyFieldTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'phone')
  static const VendorPasswordOtpBodyFieldTypeEnum phone = _$vendorPasswordOtpBodyFieldTypeEnum_phone;

  static Serializer<VendorPasswordOtpBodyFieldTypeEnum> get serializer => _$vendorPasswordOtpBodyFieldTypeEnumSerializer;

  const VendorPasswordOtpBodyFieldTypeEnum._(String name): super(name);

  static BuiltSet<VendorPasswordOtpBodyFieldTypeEnum> get values => _$vendorPasswordOtpBodyFieldTypeEnumValues;
  static VendorPasswordOtpBodyFieldTypeEnum valueOf(String name) => _$vendorPasswordOtpBodyFieldTypeEnumValueOf(name);
}


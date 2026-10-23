//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_forgot_password_body.g.dart';

/// VendorForgotPasswordBody
///
/// Properties:
/// * [fieldType] 
/// * [email] 
/// * [phone] 
@BuiltValue()
abstract class VendorForgotPasswordBody implements Built<VendorForgotPasswordBody, VendorForgotPasswordBodyBuilder> {
  @BuiltValueField(wireName: r'field_type')
  VendorForgotPasswordBodyFieldTypeEnum? get fieldType;
  // enum fieldTypeEnum {  email,  phone,  };

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  VendorForgotPasswordBody._();

  factory VendorForgotPasswordBody([void updates(VendorForgotPasswordBodyBuilder b)]) = _$VendorForgotPasswordBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorForgotPasswordBodyBuilder b) => b
      ..fieldType = VendorForgotPasswordBodyFieldTypeEnum.valueOf('phone');

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorForgotPasswordBody> get serializer => _$VendorForgotPasswordBodySerializer();
}

class _$VendorForgotPasswordBodySerializer implements PrimitiveSerializer<VendorForgotPasswordBody> {
  @override
  final Iterable<Type> types = const [VendorForgotPasswordBody, _$VendorForgotPasswordBody];

  @override
  final String wireName = r'VendorForgotPasswordBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorForgotPasswordBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fieldType != null) {
      yield r'field_type';
      yield serializers.serialize(
        object.fieldType,
        specifiedType: const FullType(VendorForgotPasswordBodyFieldTypeEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorForgotPasswordBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorForgotPasswordBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorForgotPasswordBodyFieldTypeEnum),
          ) as VendorForgotPasswordBodyFieldTypeEnum?;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorForgotPasswordBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorForgotPasswordBodyBuilder();
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


class VendorForgotPasswordBodyFieldTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'email')
  static const VendorForgotPasswordBodyFieldTypeEnum email = _$vendorForgotPasswordBodyFieldTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'phone')
  static const VendorForgotPasswordBodyFieldTypeEnum phone = _$vendorForgotPasswordBodyFieldTypeEnum_phone;

  static Serializer<VendorForgotPasswordBodyFieldTypeEnum> get serializer => _$vendorForgotPasswordBodyFieldTypeEnumSerializer;

  const VendorForgotPasswordBodyFieldTypeEnum._(String name): super(name);

  static BuiltSet<VendorForgotPasswordBodyFieldTypeEnum> get values => _$vendorForgotPasswordBodyFieldTypeEnumValues;
  static VendorForgotPasswordBodyFieldTypeEnum valueOf(String name) => _$vendorForgotPasswordBodyFieldTypeEnumValueOf(name);
}


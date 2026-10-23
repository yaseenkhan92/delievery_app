//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_forgot_password_body.g.dart';

/// ConsumerForgotPasswordBody
///
/// Properties:
/// * [fieldType] 
/// * [email] 
/// * [phone] 
@BuiltValue()
abstract class ConsumerForgotPasswordBody implements Built<ConsumerForgotPasswordBody, ConsumerForgotPasswordBodyBuilder> {
  @BuiltValueField(wireName: r'field_type')
  ConsumerForgotPasswordBodyFieldTypeEnum? get fieldType;
  // enum fieldTypeEnum {  email,  phone,  };

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  ConsumerForgotPasswordBody._();

  factory ConsumerForgotPasswordBody([void updates(ConsumerForgotPasswordBodyBuilder b)]) = _$ConsumerForgotPasswordBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerForgotPasswordBodyBuilder b) => b
      ..fieldType = ConsumerForgotPasswordBodyFieldTypeEnum.valueOf('email');

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerForgotPasswordBody> get serializer => _$ConsumerForgotPasswordBodySerializer();
}

class _$ConsumerForgotPasswordBodySerializer implements PrimitiveSerializer<ConsumerForgotPasswordBody> {
  @override
  final Iterable<Type> types = const [ConsumerForgotPasswordBody, _$ConsumerForgotPasswordBody];

  @override
  final String wireName = r'ConsumerForgotPasswordBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerForgotPasswordBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fieldType != null) {
      yield r'field_type';
      yield serializers.serialize(
        object.fieldType,
        specifiedType: const FullType(ConsumerForgotPasswordBodyFieldTypeEnum),
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
    ConsumerForgotPasswordBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerForgotPasswordBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerForgotPasswordBodyFieldTypeEnum),
          ) as ConsumerForgotPasswordBodyFieldTypeEnum?;
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
  ConsumerForgotPasswordBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerForgotPasswordBodyBuilder();
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


class ConsumerForgotPasswordBodyFieldTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'email')
  static const ConsumerForgotPasswordBodyFieldTypeEnum email = _$consumerForgotPasswordBodyFieldTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'phone')
  static const ConsumerForgotPasswordBodyFieldTypeEnum phone = _$consumerForgotPasswordBodyFieldTypeEnum_phone;

  static Serializer<ConsumerForgotPasswordBodyFieldTypeEnum> get serializer => _$consumerForgotPasswordBodyFieldTypeEnumSerializer;

  const ConsumerForgotPasswordBodyFieldTypeEnum._(String name): super(name);

  static BuiltSet<ConsumerForgotPasswordBodyFieldTypeEnum> get values => _$consumerForgotPasswordBodyFieldTypeEnumValues;
  static ConsumerForgotPasswordBodyFieldTypeEnum valueOf(String name) => _$consumerForgotPasswordBodyFieldTypeEnumValueOf(name);
}


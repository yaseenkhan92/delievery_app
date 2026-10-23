//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_password_reset_body.g.dart';

/// ConsumerPasswordResetBody
///
/// Properties:
/// * [fieldType] 
/// * [email] 
/// * [phone] 
/// * [otp] 
/// * [password] 
/// * [confirmPassword] 
@BuiltValue()
abstract class ConsumerPasswordResetBody implements Built<ConsumerPasswordResetBody, ConsumerPasswordResetBodyBuilder> {
  @BuiltValueField(wireName: r'field_type')
  ConsumerPasswordResetBodyFieldTypeEnum? get fieldType;
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

  ConsumerPasswordResetBody._();

  factory ConsumerPasswordResetBody([void updates(ConsumerPasswordResetBodyBuilder b)]) = _$ConsumerPasswordResetBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerPasswordResetBodyBuilder b) => b
      ..fieldType = ConsumerPasswordResetBodyFieldTypeEnum.valueOf('email');

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerPasswordResetBody> get serializer => _$ConsumerPasswordResetBodySerializer();
}

class _$ConsumerPasswordResetBodySerializer implements PrimitiveSerializer<ConsumerPasswordResetBody> {
  @override
  final Iterable<Type> types = const [ConsumerPasswordResetBody, _$ConsumerPasswordResetBody];

  @override
  final String wireName = r'ConsumerPasswordResetBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerPasswordResetBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fieldType != null) {
      yield r'field_type';
      yield serializers.serialize(
        object.fieldType,
        specifiedType: const FullType(ConsumerPasswordResetBodyFieldTypeEnum),
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
    ConsumerPasswordResetBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerPasswordResetBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerPasswordResetBodyFieldTypeEnum),
          ) as ConsumerPasswordResetBodyFieldTypeEnum?;
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
  ConsumerPasswordResetBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerPasswordResetBodyBuilder();
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


class ConsumerPasswordResetBodyFieldTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'email')
  static const ConsumerPasswordResetBodyFieldTypeEnum email = _$consumerPasswordResetBodyFieldTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'phone')
  static const ConsumerPasswordResetBodyFieldTypeEnum phone = _$consumerPasswordResetBodyFieldTypeEnum_phone;

  static Serializer<ConsumerPasswordResetBodyFieldTypeEnum> get serializer => _$consumerPasswordResetBodyFieldTypeEnumSerializer;

  const ConsumerPasswordResetBodyFieldTypeEnum._(String name): super(name);

  static BuiltSet<ConsumerPasswordResetBodyFieldTypeEnum> get values => _$consumerPasswordResetBodyFieldTypeEnumValues;
  static ConsumerPasswordResetBodyFieldTypeEnum valueOf(String name) => _$consumerPasswordResetBodyFieldTypeEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_password_otp_body.g.dart';

/// ConsumerPasswordOtpBody
///
/// Properties:
/// * [fieldType] 
/// * [email] 
/// * [phone] 
/// * [otp] - 6-digit OTP
@BuiltValue()
abstract class ConsumerPasswordOtpBody implements Built<ConsumerPasswordOtpBody, ConsumerPasswordOtpBodyBuilder> {
  @BuiltValueField(wireName: r'field_type')
  ConsumerPasswordOtpBodyFieldTypeEnum? get fieldType;
  // enum fieldTypeEnum {  email,  phone,  };

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// 6-digit OTP
  @BuiltValueField(wireName: r'otp')
  String get otp;

  ConsumerPasswordOtpBody._();

  factory ConsumerPasswordOtpBody([void updates(ConsumerPasswordOtpBodyBuilder b)]) = _$ConsumerPasswordOtpBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerPasswordOtpBodyBuilder b) => b
      ..fieldType = ConsumerPasswordOtpBodyFieldTypeEnum.valueOf('email');

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerPasswordOtpBody> get serializer => _$ConsumerPasswordOtpBodySerializer();
}

class _$ConsumerPasswordOtpBodySerializer implements PrimitiveSerializer<ConsumerPasswordOtpBody> {
  @override
  final Iterable<Type> types = const [ConsumerPasswordOtpBody, _$ConsumerPasswordOtpBody];

  @override
  final String wireName = r'ConsumerPasswordOtpBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerPasswordOtpBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fieldType != null) {
      yield r'field_type';
      yield serializers.serialize(
        object.fieldType,
        specifiedType: const FullType(ConsumerPasswordOtpBodyFieldTypeEnum),
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
    ConsumerPasswordOtpBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerPasswordOtpBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerPasswordOtpBodyFieldTypeEnum),
          ) as ConsumerPasswordOtpBodyFieldTypeEnum?;
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
  ConsumerPasswordOtpBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerPasswordOtpBodyBuilder();
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


class ConsumerPasswordOtpBodyFieldTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'email')
  static const ConsumerPasswordOtpBodyFieldTypeEnum email = _$consumerPasswordOtpBodyFieldTypeEnum_email;
  @BuiltValueEnumConst(wireName: r'phone')
  static const ConsumerPasswordOtpBodyFieldTypeEnum phone = _$consumerPasswordOtpBodyFieldTypeEnum_phone;

  static Serializer<ConsumerPasswordOtpBodyFieldTypeEnum> get serializer => _$consumerPasswordOtpBodyFieldTypeEnumSerializer;

  const ConsumerPasswordOtpBodyFieldTypeEnum._(String name): super(name);

  static BuiltSet<ConsumerPasswordOtpBodyFieldTypeEnum> get values => _$consumerPasswordOtpBodyFieldTypeEnumValues;
  static ConsumerPasswordOtpBodyFieldTypeEnum valueOf(String name) => _$consumerPasswordOtpBodyFieldTypeEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_login_response_data_one_of.g.dart';

/// manual login
///
/// Properties:
/// * [token] 
/// * [isPhoneVerified] 
/// * [isEmailVerified] 
/// * [loginType] 
@BuiltValue()
abstract class ConsumerLoginResponseDataOneOf implements Built<ConsumerLoginResponseDataOneOf, ConsumerLoginResponseDataOneOfBuilder> {
  @BuiltValueField(wireName: r'token')
  String? get token;

  @BuiltValueField(wireName: r'is_phone_verified')
  int? get isPhoneVerified;

  @BuiltValueField(wireName: r'is_email_verified')
  int? get isEmailVerified;

  @BuiltValueField(wireName: r'login_type')
  String? get loginType;

  ConsumerLoginResponseDataOneOf._();

  factory ConsumerLoginResponseDataOneOf([void updates(ConsumerLoginResponseDataOneOfBuilder b)]) = _$ConsumerLoginResponseDataOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerLoginResponseDataOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerLoginResponseDataOneOf> get serializer => _$ConsumerLoginResponseDataOneOfSerializer();
}

class _$ConsumerLoginResponseDataOneOfSerializer implements PrimitiveSerializer<ConsumerLoginResponseDataOneOf> {
  @override
  final Iterable<Type> types = const [ConsumerLoginResponseDataOneOf, _$ConsumerLoginResponseDataOneOf];

  @override
  final String wireName = r'ConsumerLoginResponseDataOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerLoginResponseDataOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.isPhoneVerified != null) {
      yield r'is_phone_verified';
      yield serializers.serialize(
        object.isPhoneVerified,
        specifiedType: const FullType(int),
      );
    }
    if (object.isEmailVerified != null) {
      yield r'is_email_verified';
      yield serializers.serialize(
        object.isEmailVerified,
        specifiedType: const FullType(int),
      );
    }
    if (object.loginType != null) {
      yield r'login_type';
      yield serializers.serialize(
        object.loginType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerLoginResponseDataOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerLoginResponseDataOneOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'is_phone_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.isPhoneVerified = valueDes;
          break;
        case r'is_email_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.isEmailVerified = valueDes;
          break;
        case r'login_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.loginType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerLoginResponseDataOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerLoginResponseDataOneOfBuilder();
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



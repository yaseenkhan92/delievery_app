//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_social_login_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_social_login_response.g.dart';

/// ConsumerSocialLoginResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class ConsumerSocialLoginResponse implements Built<ConsumerSocialLoginResponse, ConsumerSocialLoginResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  ConsumerSocialLoginData? get data;

  ConsumerSocialLoginResponse._();

  factory ConsumerSocialLoginResponse([void updates(ConsumerSocialLoginResponseBuilder b)]) = _$ConsumerSocialLoginResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerSocialLoginResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerSocialLoginResponse> get serializer => _$ConsumerSocialLoginResponseSerializer();
}

class _$ConsumerSocialLoginResponseSerializer implements PrimitiveSerializer<ConsumerSocialLoginResponse> {
  @override
  final Iterable<Type> types = const [ConsumerSocialLoginResponse, _$ConsumerSocialLoginResponse];

  @override
  final String wireName = r'ConsumerSocialLoginResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerSocialLoginResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.msg != null) {
      yield r'msg';
      yield serializers.serialize(
        object.msg,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ConsumerSocialLoginData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerSocialLoginResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerSocialLoginResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'msg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.msg = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerSocialLoginData),
          ) as ConsumerSocialLoginData?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerSocialLoginResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerSocialLoginResponseBuilder();
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



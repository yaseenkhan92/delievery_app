//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_login_send_otp_post_request.g.dart';

/// ConsumerLoginSendOtpPostRequest
///
/// Properties:
/// * [phone] 
@BuiltValue()
abstract class ConsumerLoginSendOtpPostRequest implements Built<ConsumerLoginSendOtpPostRequest, ConsumerLoginSendOtpPostRequestBuilder> {
  @BuiltValueField(wireName: r'phone')
  String get phone;

  ConsumerLoginSendOtpPostRequest._();

  factory ConsumerLoginSendOtpPostRequest([void updates(ConsumerLoginSendOtpPostRequestBuilder b)]) = _$ConsumerLoginSendOtpPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerLoginSendOtpPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerLoginSendOtpPostRequest> get serializer => _$ConsumerLoginSendOtpPostRequestSerializer();
}

class _$ConsumerLoginSendOtpPostRequestSerializer implements PrimitiveSerializer<ConsumerLoginSendOtpPostRequest> {
  @override
  final Iterable<Type> types = const [ConsumerLoginSendOtpPostRequest, _$ConsumerLoginSendOtpPostRequest];

  @override
  final String wireName = r'ConsumerLoginSendOtpPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerLoginSendOtpPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerLoginSendOtpPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerLoginSendOtpPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  ConsumerLoginSendOtpPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerLoginSendOtpPostRequestBuilder();
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



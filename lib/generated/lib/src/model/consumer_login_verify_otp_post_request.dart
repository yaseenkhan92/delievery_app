//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_login_verify_otp_post_request.g.dart';

/// ConsumerLoginVerifyOtpPostRequest
///
/// Properties:
/// * [phone] 
/// * [otp] 
/// * [guestId] 
@BuiltValue()
abstract class ConsumerLoginVerifyOtpPostRequest implements Built<ConsumerLoginVerifyOtpPostRequest, ConsumerLoginVerifyOtpPostRequestBuilder> {
  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'otp')
  String get otp;

  @BuiltValueField(wireName: r'guest_id')
  int? get guestId;

  ConsumerLoginVerifyOtpPostRequest._();

  factory ConsumerLoginVerifyOtpPostRequest([void updates(ConsumerLoginVerifyOtpPostRequestBuilder b)]) = _$ConsumerLoginVerifyOtpPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerLoginVerifyOtpPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerLoginVerifyOtpPostRequest> get serializer => _$ConsumerLoginVerifyOtpPostRequestSerializer();
}

class _$ConsumerLoginVerifyOtpPostRequestSerializer implements PrimitiveSerializer<ConsumerLoginVerifyOtpPostRequest> {
  @override
  final Iterable<Type> types = const [ConsumerLoginVerifyOtpPostRequest, _$ConsumerLoginVerifyOtpPostRequest];

  @override
  final String wireName = r'ConsumerLoginVerifyOtpPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerLoginVerifyOtpPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    yield r'otp';
    yield serializers.serialize(
      object.otp,
      specifiedType: const FullType(String),
    );
    if (object.guestId != null) {
      yield r'guest_id';
      yield serializers.serialize(
        object.guestId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerLoginVerifyOtpPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerLoginVerifyOtpPostRequestBuilder result,
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
        case r'otp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.otp = valueDes;
          break;
        case r'guest_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.guestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerLoginVerifyOtpPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerLoginVerifyOtpPostRequestBuilder();
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



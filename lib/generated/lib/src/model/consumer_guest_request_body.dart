//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_guest_request_body.g.dart';

/// ConsumerGuestRequestBody
///
/// Properties:
/// * [fcmToken] - Optional Firebase device token (stored on guest record for push)
@BuiltValue()
abstract class ConsumerGuestRequestBody implements Built<ConsumerGuestRequestBody, ConsumerGuestRequestBodyBuilder> {
  /// Optional Firebase device token (stored on guest record for push)
  @BuiltValueField(wireName: r'fcm_token')
  String? get fcmToken;

  ConsumerGuestRequestBody._();

  factory ConsumerGuestRequestBody([void updates(ConsumerGuestRequestBodyBuilder b)]) = _$ConsumerGuestRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerGuestRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerGuestRequestBody> get serializer => _$ConsumerGuestRequestBodySerializer();
}

class _$ConsumerGuestRequestBodySerializer implements PrimitiveSerializer<ConsumerGuestRequestBody> {
  @override
  final Iterable<Type> types = const [ConsumerGuestRequestBody, _$ConsumerGuestRequestBody];

  @override
  final String wireName = r'ConsumerGuestRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerGuestRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fcmToken != null) {
      yield r'fcm_token';
      yield serializers.serialize(
        object.fcmToken,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerGuestRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerGuestRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fcm_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fcmToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerGuestRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerGuestRequestBodyBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_update_firebase_token_put_request.g.dart';

/// ConsumerUpdateFirebaseTokenPutRequest
///
/// Properties:
/// * [cmFirebaseToken] 
@BuiltValue()
abstract class ConsumerUpdateFirebaseTokenPutRequest implements Built<ConsumerUpdateFirebaseTokenPutRequest, ConsumerUpdateFirebaseTokenPutRequestBuilder> {
  @BuiltValueField(wireName: r'cm_firebase_token')
  String get cmFirebaseToken;

  ConsumerUpdateFirebaseTokenPutRequest._();

  factory ConsumerUpdateFirebaseTokenPutRequest([void updates(ConsumerUpdateFirebaseTokenPutRequestBuilder b)]) = _$ConsumerUpdateFirebaseTokenPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerUpdateFirebaseTokenPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerUpdateFirebaseTokenPutRequest> get serializer => _$ConsumerUpdateFirebaseTokenPutRequestSerializer();
}

class _$ConsumerUpdateFirebaseTokenPutRequestSerializer implements PrimitiveSerializer<ConsumerUpdateFirebaseTokenPutRequest> {
  @override
  final Iterable<Type> types = const [ConsumerUpdateFirebaseTokenPutRequest, _$ConsumerUpdateFirebaseTokenPutRequest];

  @override
  final String wireName = r'ConsumerUpdateFirebaseTokenPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerUpdateFirebaseTokenPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cm_firebase_token';
    yield serializers.serialize(
      object.cmFirebaseToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerUpdateFirebaseTokenPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerUpdateFirebaseTokenPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cm_firebase_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cmFirebaseToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerUpdateFirebaseTokenPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerUpdateFirebaseTokenPutRequestBuilder();
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



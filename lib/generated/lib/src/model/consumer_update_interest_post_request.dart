//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_update_interest_post_request.g.dart';

/// ConsumerUpdateInterestPostRequest
///
/// Properties:
/// * [interest] 
@BuiltValue()
abstract class ConsumerUpdateInterestPostRequest implements Built<ConsumerUpdateInterestPostRequest, ConsumerUpdateInterestPostRequestBuilder> {
  @BuiltValueField(wireName: r'interest')
  BuiltList<int> get interest;

  ConsumerUpdateInterestPostRequest._();

  factory ConsumerUpdateInterestPostRequest([void updates(ConsumerUpdateInterestPostRequestBuilder b)]) = _$ConsumerUpdateInterestPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerUpdateInterestPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerUpdateInterestPostRequest> get serializer => _$ConsumerUpdateInterestPostRequestSerializer();
}

class _$ConsumerUpdateInterestPostRequestSerializer implements PrimitiveSerializer<ConsumerUpdateInterestPostRequest> {
  @override
  final Iterable<Type> types = const [ConsumerUpdateInterestPostRequest, _$ConsumerUpdateInterestPostRequest];

  @override
  final String wireName = r'ConsumerUpdateInterestPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerUpdateInterestPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'interest';
    yield serializers.serialize(
      object.interest,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerUpdateInterestPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerUpdateInterestPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'interest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.interest.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerUpdateInterestPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerUpdateInterestPostRequestBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/consumer_suggested_foods_response_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_suggested_foods_response.g.dart';

/// ConsumerSuggestedFoodsResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class ConsumerSuggestedFoodsResponse implements Built<ConsumerSuggestedFoodsResponse, ConsumerSuggestedFoodsResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  BuiltList<ConsumerSuggestedFoodsResponseDataInner>? get data;

  ConsumerSuggestedFoodsResponse._();

  factory ConsumerSuggestedFoodsResponse([void updates(ConsumerSuggestedFoodsResponseBuilder b)]) = _$ConsumerSuggestedFoodsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerSuggestedFoodsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerSuggestedFoodsResponse> get serializer => _$ConsumerSuggestedFoodsResponseSerializer();
}

class _$ConsumerSuggestedFoodsResponseSerializer implements PrimitiveSerializer<ConsumerSuggestedFoodsResponse> {
  @override
  final Iterable<Type> types = const [ConsumerSuggestedFoodsResponse, _$ConsumerSuggestedFoodsResponse];

  @override
  final String wireName = r'ConsumerSuggestedFoodsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerSuggestedFoodsResponse object, {
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
        specifiedType: const FullType(BuiltList, [FullType(ConsumerSuggestedFoodsResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerSuggestedFoodsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerSuggestedFoodsResponseBuilder result,
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
            specifiedType: const FullType.nullable(BuiltList, [FullType(ConsumerSuggestedFoodsResponseDataInner)]),
          ) as BuiltList<ConsumerSuggestedFoodsResponseDataInner>?;
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
  ConsumerSuggestedFoodsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerSuggestedFoodsResponseBuilder();
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



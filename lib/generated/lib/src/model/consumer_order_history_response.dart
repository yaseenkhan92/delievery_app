//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_order_list_response.dart';
import 'package:openapi/src/model/consumer_order_list_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_order_history_response.g.dart';

/// Use ConsumerOrderListResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@Deprecated('ConsumerOrderHistoryResponse has been deprecated')
@BuiltValue()
abstract class ConsumerOrderHistoryResponse implements ConsumerOrderListResponse, Built<ConsumerOrderHistoryResponse, ConsumerOrderHistoryResponseBuilder> {
  ConsumerOrderHistoryResponse._();

  factory ConsumerOrderHistoryResponse([void updates(ConsumerOrderHistoryResponseBuilder b)]) = _$ConsumerOrderHistoryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerOrderHistoryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerOrderHistoryResponse> get serializer => _$ConsumerOrderHistoryResponseSerializer();
}

class _$ConsumerOrderHistoryResponseSerializer implements PrimitiveSerializer<ConsumerOrderHistoryResponse> {
  @override
  final Iterable<Type> types = const [ConsumerOrderHistoryResponse, _$ConsumerOrderHistoryResponse];

  @override
  final String wireName = r'ConsumerOrderHistoryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerOrderHistoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(ConsumerOrderListData),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerOrderHistoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerOrderHistoryResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType.nullable(ConsumerOrderListData),
          ) as ConsumerOrderListData?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerOrderHistoryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerOrderHistoryResponseBuilder();
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



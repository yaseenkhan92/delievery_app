//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_order_cancel_response.g.dart';

/// ConsumerOrderCancelResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [message] 
@BuiltValue()
abstract class ConsumerOrderCancelResponse implements Built<ConsumerOrderCancelResponse, ConsumerOrderCancelResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ConsumerOrderCancelResponse._();

  factory ConsumerOrderCancelResponse([void updates(ConsumerOrderCancelResponseBuilder b)]) = _$ConsumerOrderCancelResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerOrderCancelResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerOrderCancelResponse> get serializer => _$ConsumerOrderCancelResponseSerializer();
}

class _$ConsumerOrderCancelResponseSerializer implements PrimitiveSerializer<ConsumerOrderCancelResponse> {
  @override
  final Iterable<Type> types = const [ConsumerOrderCancelResponse, _$ConsumerOrderCancelResponse];

  @override
  final String wireName = r'ConsumerOrderCancelResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerOrderCancelResponse object, {
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
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerOrderCancelResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerOrderCancelResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerOrderCancelResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerOrderCancelResponseBuilder();
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



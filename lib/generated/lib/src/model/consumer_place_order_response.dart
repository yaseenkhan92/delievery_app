//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_place_order_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_place_order_response.g.dart';

/// ConsumerPlaceOrderResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [message] 
/// * [orderId] 
/// * [totalAmmount] - Legacy PHP field name (subtotal + tax + delivery before tips in response helper)
/// * [data] 
@BuiltValue()
abstract class ConsumerPlaceOrderResponse implements Built<ConsumerPlaceOrderResponse, ConsumerPlaceOrderResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'order_id')
  String? get orderId;

  /// Legacy PHP field name (subtotal + tax + delivery before tips in response helper)
  @BuiltValueField(wireName: r'total_ammount')
  num? get totalAmmount;

  @BuiltValueField(wireName: r'data')
  ConsumerPlaceOrderData? get data;

  ConsumerPlaceOrderResponse._();

  factory ConsumerPlaceOrderResponse([void updates(ConsumerPlaceOrderResponseBuilder b)]) = _$ConsumerPlaceOrderResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerPlaceOrderResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerPlaceOrderResponse> get serializer => _$ConsumerPlaceOrderResponseSerializer();
}

class _$ConsumerPlaceOrderResponseSerializer implements PrimitiveSerializer<ConsumerPlaceOrderResponse> {
  @override
  final Iterable<Type> types = const [ConsumerPlaceOrderResponse, _$ConsumerPlaceOrderResponse];

  @override
  final String wireName = r'ConsumerPlaceOrderResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerPlaceOrderResponse object, {
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
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalAmmount != null) {
      yield r'total_ammount';
      yield serializers.serialize(
        object.totalAmmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ConsumerPlaceOrderData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerPlaceOrderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerPlaceOrderResponseBuilder result,
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
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderId = valueDes;
          break;
        case r'total_ammount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.totalAmmount = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerPlaceOrderData),
          ) as ConsumerPlaceOrderData?;
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
  ConsumerPlaceOrderResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerPlaceOrderResponseBuilder();
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



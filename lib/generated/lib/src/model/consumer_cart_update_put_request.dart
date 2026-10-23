//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_cart_update_put_request.g.dart';

/// ConsumerCartUpdatePutRequest
///
/// Properties:
/// * [cartId] 
/// * [quantity] 
@BuiltValue()
abstract class ConsumerCartUpdatePutRequest implements Built<ConsumerCartUpdatePutRequest, ConsumerCartUpdatePutRequestBuilder> {
  @BuiltValueField(wireName: r'cart_id')
  JsonObject? get cartId;

  @BuiltValueField(wireName: r'quantity')
  JsonObject? get quantity;

  ConsumerCartUpdatePutRequest._();

  factory ConsumerCartUpdatePutRequest([void updates(ConsumerCartUpdatePutRequestBuilder b)]) = _$ConsumerCartUpdatePutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerCartUpdatePutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerCartUpdatePutRequest> get serializer => _$ConsumerCartUpdatePutRequestSerializer();
}

class _$ConsumerCartUpdatePutRequestSerializer implements PrimitiveSerializer<ConsumerCartUpdatePutRequest> {
  @override
  final Iterable<Type> types = const [ConsumerCartUpdatePutRequest, _$ConsumerCartUpdatePutRequest];

  @override
  final String wireName = r'ConsumerCartUpdatePutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerCartUpdatePutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cartId != null) {
      yield r'cart_id';
      yield serializers.serialize(
        object.cartId,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerCartUpdatePutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerCartUpdatePutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cart_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.cartId = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.quantity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerCartUpdatePutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerCartUpdatePutRequestBuilder();
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



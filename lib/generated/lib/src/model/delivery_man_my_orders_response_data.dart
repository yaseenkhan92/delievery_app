//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/delivery_man_my_order_card.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_my_orders_response_data.g.dart';

/// DeliveryManMyOrdersResponseData
///
/// Properties:
/// * [totalSize] 
/// * [limit] 
/// * [offset] - Current page
/// * [orders] 
@BuiltValue()
abstract class DeliveryManMyOrdersResponseData implements Built<DeliveryManMyOrdersResponseData, DeliveryManMyOrdersResponseDataBuilder> {
  @BuiltValueField(wireName: r'total_size')
  int? get totalSize;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  /// Current page
  @BuiltValueField(wireName: r'offset')
  int? get offset;

  @BuiltValueField(wireName: r'orders')
  BuiltList<DeliveryManMyOrderCard>? get orders;

  DeliveryManMyOrdersResponseData._();

  factory DeliveryManMyOrdersResponseData([void updates(DeliveryManMyOrdersResponseDataBuilder b)]) = _$DeliveryManMyOrdersResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManMyOrdersResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManMyOrdersResponseData> get serializer => _$DeliveryManMyOrdersResponseDataSerializer();
}

class _$DeliveryManMyOrdersResponseDataSerializer implements PrimitiveSerializer<DeliveryManMyOrdersResponseData> {
  @override
  final Iterable<Type> types = const [DeliveryManMyOrdersResponseData, _$DeliveryManMyOrdersResponseData];

  @override
  final String wireName = r'DeliveryManMyOrdersResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManMyOrdersResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalSize != null) {
      yield r'total_size';
      yield serializers.serialize(
        object.totalSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.offset != null) {
      yield r'offset';
      yield serializers.serialize(
        object.offset,
        specifiedType: const FullType(int),
      );
    }
    if (object.orders != null) {
      yield r'orders';
      yield serializers.serialize(
        object.orders,
        specifiedType: const FullType(BuiltList, [FullType(DeliveryManMyOrderCard)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManMyOrdersResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManMyOrdersResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalSize = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.offset = valueDes;
          break;
        case r'orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(DeliveryManMyOrderCard)]),
          ) as BuiltList<DeliveryManMyOrderCard>?;
          if (valueDes == null) continue;
          result.orders.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManMyOrdersResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManMyOrdersResponseDataBuilder();
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



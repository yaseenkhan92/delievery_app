//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_order_list_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_order_history_item.g.dart';

/// Use ConsumerOrderListItem
///
/// Properties:
/// * [id] 
/// * [orderId] 
/// * [orderNumber] 
/// * [restaurantId] 
/// * [restaurantName] 
/// * [restaurantLogo] 
/// * [image] - First line item image (Figma card thumbnail)
/// * [orderAmount] 
/// * [orderStatus] 
/// * [statusLabel] - Badge text — e.g. Confirmed, Handover, Completed
/// * [paymentStatus] 
/// * [createdAt] 
/// * [orderDate] 
/// * [orderTime] 
/// * [trackOrder] - true on Running tab — show Track Order CTA
@Deprecated('ConsumerOrderHistoryItem has been deprecated')
@BuiltValue()
abstract class ConsumerOrderHistoryItem implements ConsumerOrderListItem, Built<ConsumerOrderHistoryItem, ConsumerOrderHistoryItemBuilder> {
  ConsumerOrderHistoryItem._();

  factory ConsumerOrderHistoryItem([void updates(ConsumerOrderHistoryItemBuilder b)]) = _$ConsumerOrderHistoryItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerOrderHistoryItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerOrderHistoryItem> get serializer => _$ConsumerOrderHistoryItemSerializer();
}

class _$ConsumerOrderHistoryItemSerializer implements PrimitiveSerializer<ConsumerOrderHistoryItem> {
  @override
  final Iterable<Type> types = const [ConsumerOrderHistoryItem, _$ConsumerOrderHistoryItem];

  @override
  final String wireName = r'ConsumerOrderHistoryItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerOrderHistoryItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderNumber != null) {
      yield r'order_number';
      yield serializers.serialize(
        object.orderNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.trackOrder != null) {
      yield r'track_order';
      yield serializers.serialize(
        object.trackOrder,
        specifiedType: const FullType(bool),
      );
    }
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderStatus != null) {
      yield r'order_status';
      yield serializers.serialize(
        object.orderStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurant_id';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.statusLabel != null) {
      yield r'status_label';
      yield serializers.serialize(
        object.statusLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.orderAmount != null) {
      yield r'order_amount';
      yield serializers.serialize(
        object.orderAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.orderTime != null) {
      yield r'order_time';
      yield serializers.serialize(
        object.orderTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurantLogo != null) {
      yield r'restaurant_logo';
      yield serializers.serialize(
        object.restaurantLogo,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurantName != null) {
      yield r'restaurant_name';
      yield serializers.serialize(
        object.restaurantName,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderDate != null) {
      yield r'order_date';
      yield serializers.serialize(
        object.orderDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.paymentStatus != null) {
      yield r'payment_status';
      yield serializers.serialize(
        object.paymentStatus,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerOrderHistoryItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerOrderHistoryItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'order_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderNumber = valueDes;
          break;
        case r'track_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.trackOrder = valueDes;
          break;
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderId = valueDes;
          break;
        case r'order_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderStatus = valueDes;
          break;
        case r'restaurant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        case r'status_label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusLabel = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'order_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.orderAmount = valueDes;
          break;
        case r'order_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderTime = valueDes;
          break;
        case r'restaurant_logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantLogo = valueDes;
          break;
        case r'restaurant_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantName = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'order_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderDate = valueDes;
          break;
        case r'payment_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerOrderHistoryItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerOrderHistoryItemBuilder();
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



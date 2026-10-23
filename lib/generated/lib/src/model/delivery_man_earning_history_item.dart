//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/delivery_man_earning_order_snapshot.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_earning_history_item.g.dart';

/// DeliveryManEarningHistoryItem
///
/// Properties:
/// * [id] - Transaction id or order-{id} fallback
/// * [source_] 
/// * [orderId] 
/// * [transactionId] 
/// * [earnedAt] 
/// * [deliveryFee] 
/// * [dmTips] 
/// * [totalEarning] 
/// * [orderAmount] 
/// * [paymentMethod] 
/// * [paymentStatus] 
/// * [orderStatus] 
/// * [restaurantId] 
/// * [restaurantName] 
/// * [restaurantLogo] 
/// * [itemName] 
/// * [itemCount] 
/// * [image] 
/// * [order] 
@BuiltValue()
abstract class DeliveryManEarningHistoryItem implements Built<DeliveryManEarningHistoryItem, DeliveryManEarningHistoryItemBuilder> {
  /// Transaction id or order-{id} fallback
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'source')
  DeliveryManEarningHistoryItemSource_Enum? get source_;
  // enum source_Enum {  order_transaction,  delivered_order,  };

  @BuiltValueField(wireName: r'order_id')
  String? get orderId;

  @BuiltValueField(wireName: r'transaction_id')
  String? get transactionId;

  @BuiltValueField(wireName: r'earned_at')
  DateTime? get earnedAt;

  @BuiltValueField(wireName: r'delivery_fee')
  num? get deliveryFee;

  @BuiltValueField(wireName: r'dm_tips')
  num? get dmTips;

  @BuiltValueField(wireName: r'total_earning')
  num? get totalEarning;

  @BuiltValueField(wireName: r'order_amount')
  num? get orderAmount;

  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: r'payment_status')
  String? get paymentStatus;

  @BuiltValueField(wireName: r'order_status')
  String? get orderStatus;

  @BuiltValueField(wireName: r'restaurant_id')
  String? get restaurantId;

  @BuiltValueField(wireName: r'restaurant_name')
  String? get restaurantName;

  @BuiltValueField(wireName: r'restaurant_logo')
  String? get restaurantLogo;

  @BuiltValueField(wireName: r'item_name')
  String? get itemName;

  @BuiltValueField(wireName: r'item_count')
  int? get itemCount;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'order')
  DeliveryManEarningOrderSnapshot? get order;

  DeliveryManEarningHistoryItem._();

  factory DeliveryManEarningHistoryItem([void updates(DeliveryManEarningHistoryItemBuilder b)]) = _$DeliveryManEarningHistoryItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManEarningHistoryItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManEarningHistoryItem> get serializer => _$DeliveryManEarningHistoryItemSerializer();
}

class _$DeliveryManEarningHistoryItemSerializer implements PrimitiveSerializer<DeliveryManEarningHistoryItem> {
  @override
  final Iterable<Type> types = const [DeliveryManEarningHistoryItem, _$DeliveryManEarningHistoryItem];

  @override
  final String wireName = r'DeliveryManEarningHistoryItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManEarningHistoryItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(DeliveryManEarningHistoryItemSource_Enum),
      );
    }
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.transactionId != null) {
      yield r'transaction_id';
      yield serializers.serialize(
        object.transactionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.earnedAt != null) {
      yield r'earned_at';
      yield serializers.serialize(
        object.earnedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.deliveryFee != null) {
      yield r'delivery_fee';
      yield serializers.serialize(
        object.deliveryFee,
        specifiedType: const FullType(num),
      );
    }
    if (object.dmTips != null) {
      yield r'dm_tips';
      yield serializers.serialize(
        object.dmTips,
        specifiedType: const FullType(num),
      );
    }
    if (object.totalEarning != null) {
      yield r'total_earning';
      yield serializers.serialize(
        object.totalEarning,
        specifiedType: const FullType(num),
      );
    }
    if (object.orderAmount != null) {
      yield r'order_amount';
      yield serializers.serialize(
        object.orderAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.paymentMethod != null) {
      yield r'payment_method';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.paymentStatus != null) {
      yield r'payment_status';
      yield serializers.serialize(
        object.paymentStatus,
        specifiedType: const FullType.nullable(String),
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
    if (object.restaurantName != null) {
      yield r'restaurant_name';
      yield serializers.serialize(
        object.restaurantName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.restaurantLogo != null) {
      yield r'restaurant_logo';
      yield serializers.serialize(
        object.restaurantLogo,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.itemName != null) {
      yield r'item_name';
      yield serializers.serialize(
        object.itemName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.itemCount != null) {
      yield r'item_count';
      yield serializers.serialize(
        object.itemCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType(DeliveryManEarningOrderSnapshot),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManEarningHistoryItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManEarningHistoryItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManEarningHistoryItemSource_Enum),
          ) as DeliveryManEarningHistoryItemSource_Enum?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderId = valueDes;
          break;
        case r'transaction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transactionId = valueDes;
          break;
        case r'earned_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.earnedAt = valueDes;
          break;
        case r'delivery_fee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.deliveryFee = valueDes;
          break;
        case r'dm_tips':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.dmTips = valueDes;
          break;
        case r'total_earning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.totalEarning = valueDes;
          break;
        case r'order_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.orderAmount = valueDes;
          break;
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentMethod = valueDes;
          break;
        case r'payment_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentStatus = valueDes;
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
        case r'restaurant_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantName = valueDes;
          break;
        case r'restaurant_logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantLogo = valueDes;
          break;
        case r'item_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.itemName = valueDes;
          break;
        case r'item_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.itemCount = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManEarningOrderSnapshot),
          ) as DeliveryManEarningOrderSnapshot?;
          if (valueDes == null) continue;
          result.order.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManEarningHistoryItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManEarningHistoryItemBuilder();
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


class DeliveryManEarningHistoryItemSource_Enum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'order_transaction')
  static const DeliveryManEarningHistoryItemSource_Enum orderTransaction = _$deliveryManEarningHistoryItemSourceEnum_orderTransaction;
  @BuiltValueEnumConst(wireName: r'delivered_order')
  static const DeliveryManEarningHistoryItemSource_Enum deliveredOrder = _$deliveryManEarningHistoryItemSourceEnum_deliveredOrder;

  static Serializer<DeliveryManEarningHistoryItemSource_Enum> get serializer => _$deliveryManEarningHistoryItemSourceEnumSerializer;

  const DeliveryManEarningHistoryItemSource_Enum._(String name): super(name);

  static BuiltSet<DeliveryManEarningHistoryItemSource_Enum> get values => _$deliveryManEarningHistoryItemSourceEnumValues;
  static DeliveryManEarningHistoryItemSource_Enum valueOf(String name) => _$deliveryManEarningHistoryItemSourceEnumValueOf(name);
}


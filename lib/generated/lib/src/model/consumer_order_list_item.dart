//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_order_list_item.g.dart';

/// Single row on Orders Running/History/Subscription tabs (Figma card).
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
@BuiltValue(instantiable: false)
abstract class ConsumerOrderListItem  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'order_id')
  String? get orderId;

  @BuiltValueField(wireName: r'order_number')
  String? get orderNumber;

  @BuiltValueField(wireName: r'restaurant_id')
  String? get restaurantId;

  @BuiltValueField(wireName: r'restaurant_name')
  String? get restaurantName;

  @BuiltValueField(wireName: r'restaurant_logo')
  String? get restaurantLogo;

  /// First line item image (Figma card thumbnail)
  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'order_amount')
  num? get orderAmount;

  @BuiltValueField(wireName: r'order_status')
  String? get orderStatus;

  /// Badge text — e.g. Confirmed, Handover, Completed
  @BuiltValueField(wireName: r'status_label')
  String? get statusLabel;

  @BuiltValueField(wireName: r'payment_status')
  String? get paymentStatus;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'order_date')
  String? get orderDate;

  @BuiltValueField(wireName: r'order_time')
  String? get orderTime;

  /// true on Running tab — show Track Order CTA
  @BuiltValueField(wireName: r'track_order')
  bool? get trackOrder;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerOrderListItem> get serializer => _$ConsumerOrderListItemSerializer();
}

class _$ConsumerOrderListItemSerializer implements PrimitiveSerializer<ConsumerOrderListItem> {
  @override
  final Iterable<Type> types = const [ConsumerOrderListItem];

  @override
  final String wireName = r'ConsumerOrderListItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerOrderListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.orderNumber != null) {
      yield r'order_number';
      yield serializers.serialize(
        object.orderNumber,
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
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderAmount != null) {
      yield r'order_amount';
      yield serializers.serialize(
        object.orderAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.orderStatus != null) {
      yield r'order_status';
      yield serializers.serialize(
        object.orderStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.statusLabel != null) {
      yield r'status_label';
      yield serializers.serialize(
        object.statusLabel,
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
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.orderDate != null) {
      yield r'order_date';
      yield serializers.serialize(
        object.orderDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderTime != null) {
      yield r'order_time';
      yield serializers.serialize(
        object.orderTime,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerOrderListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ConsumerOrderListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ConsumerOrderListItem)) as $ConsumerOrderListItem;
  }
}


/// a concrete implementation of [ConsumerOrderListItem], since [ConsumerOrderListItem] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ConsumerOrderListItem implements ConsumerOrderListItem, Built<$ConsumerOrderListItem, $ConsumerOrderListItemBuilder> {
  $ConsumerOrderListItem._();

  factory $ConsumerOrderListItem([void Function($ConsumerOrderListItemBuilder)? updates]) = _$$ConsumerOrderListItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ConsumerOrderListItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ConsumerOrderListItem> get serializer => _$$ConsumerOrderListItemSerializer();
}

class _$$ConsumerOrderListItemSerializer implements PrimitiveSerializer<$ConsumerOrderListItem> {
  @override
  final Iterable<Type> types = const [$ConsumerOrderListItem, _$$ConsumerOrderListItem];

  @override
  final String wireName = r'$ConsumerOrderListItem';

  @override
  Object serialize(
    Serializers serializers,
    $ConsumerOrderListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ConsumerOrderListItem))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerOrderListItemBuilder result,
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
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderId = valueDes;
          break;
        case r'order_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderNumber = valueDes;
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
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'order_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.orderAmount = valueDes;
          break;
        case r'order_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderStatus = valueDes;
          break;
        case r'status_label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusLabel = valueDes;
          break;
        case r'payment_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentStatus = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'order_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderDate = valueDes;
          break;
        case r'order_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderTime = valueDes;
          break;
        case r'track_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.trackOrder = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ConsumerOrderListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ConsumerOrderListItemBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_order_summary.g.dart';

/// Order request / active card (GET /orders/latest and GET /orders/active)
///
/// Properties:
/// * [id] 
/// * [orderStatus] 
/// * [paymentMethod] 
/// * [orderAmount] 
/// * [deliveryCharge] - Driver delivery fee for this order
/// * [scheduleAt] 
/// * [restaurantId] 
/// * [restaurantName] 
/// * [customerName] 
/// * [restaurantImageUrl] - Full URL (CLOUDFLARE_PUBLIC_URL + logo/cover) for pickup avatar
/// * [customerImageUrl] - Full URL for customer profile image (fallback def.png)
/// * [itemTitle] - First line item name
/// * [deliveryAddressSnippet] 
/// * [latitude] - Customer delivery lat (string or number)
/// * [longitude] 
@BuiltValue()
abstract class DeliveryManOrderSummary implements Built<DeliveryManOrderSummary, DeliveryManOrderSummaryBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'order_status')
  String? get orderStatus;

  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: r'order_amount')
  num? get orderAmount;

  /// Driver delivery fee for this order
  @BuiltValueField(wireName: r'delivery_charge')
  num? get deliveryCharge;

  @BuiltValueField(wireName: r'schedule_at')
  DateTime? get scheduleAt;

  @BuiltValueField(wireName: r'restaurant_id')
  String? get restaurantId;

  @BuiltValueField(wireName: r'restaurant_name')
  String? get restaurantName;

  @BuiltValueField(wireName: r'customer_name')
  String? get customerName;

  /// Full URL (CLOUDFLARE_PUBLIC_URL + logo/cover) for pickup avatar
  @BuiltValueField(wireName: r'restaurant_image_url')
  String? get restaurantImageUrl;

  /// Full URL for customer profile image (fallback def.png)
  @BuiltValueField(wireName: r'customer_image_url')
  String? get customerImageUrl;

  /// First line item name
  @BuiltValueField(wireName: r'item_title')
  String? get itemTitle;

  @BuiltValueField(wireName: r'delivery_address_snippet')
  String? get deliveryAddressSnippet;

  /// Customer delivery lat (string or number)
  @BuiltValueField(wireName: r'latitude')
  String? get latitude;

  @BuiltValueField(wireName: r'longitude')
  String? get longitude;

  DeliveryManOrderSummary._();

  factory DeliveryManOrderSummary([void updates(DeliveryManOrderSummaryBuilder b)]) = _$DeliveryManOrderSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManOrderSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManOrderSummary> get serializer => _$DeliveryManOrderSummarySerializer();
}

class _$DeliveryManOrderSummarySerializer implements PrimitiveSerializer<DeliveryManOrderSummary> {
  @override
  final Iterable<Type> types = const [DeliveryManOrderSummary, _$DeliveryManOrderSummary];

  @override
  final String wireName = r'DeliveryManOrderSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManOrderSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.paymentMethod != null) {
      yield r'payment_method';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.orderAmount != null) {
      yield r'order_amount';
      yield serializers.serialize(
        object.orderAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.deliveryCharge != null) {
      yield r'delivery_charge';
      yield serializers.serialize(
        object.deliveryCharge,
        specifiedType: const FullType(num),
      );
    }
    if (object.scheduleAt != null) {
      yield r'schedule_at';
      yield serializers.serialize(
        object.scheduleAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurant_id';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurantName != null) {
      yield r'restaurant_name';
      yield serializers.serialize(
        object.restaurantName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerName != null) {
      yield r'customer_name';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.restaurantImageUrl != null) {
      yield r'restaurant_image_url';
      yield serializers.serialize(
        object.restaurantImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerImageUrl != null) {
      yield r'customer_image_url';
      yield serializers.serialize(
        object.customerImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.itemTitle != null) {
      yield r'item_title';
      yield serializers.serialize(
        object.itemTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deliveryAddressSnippet != null) {
      yield r'delivery_address_snippet';
      yield serializers.serialize(
        object.deliveryAddressSnippet,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManOrderSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManOrderSummaryBuilder result,
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
        case r'order_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderStatus = valueDes;
          break;
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentMethod = valueDes;
          break;
        case r'order_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.orderAmount = valueDes;
          break;
        case r'delivery_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.deliveryCharge = valueDes;
          break;
        case r'schedule_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.scheduleAt = valueDes;
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
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerName = valueDes;
          break;
        case r'restaurant_image_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantImageUrl = valueDes;
          break;
        case r'customer_image_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerImageUrl = valueDes;
          break;
        case r'item_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.itemTitle = valueDes;
          break;
        case r'delivery_address_snippet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deliveryAddressSnippet = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.longitude = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManOrderSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManOrderSummaryBuilder();
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



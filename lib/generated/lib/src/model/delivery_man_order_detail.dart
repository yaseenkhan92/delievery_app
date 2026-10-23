//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/delivery_man_order_detail_party.dart';
import 'package:openapi/src/model/delivery_man_order_detail_dispatch_summary.dart';
import 'package:openapi/src/model/delivery_man_order_detail_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/delivery_man_order_detail_restaurant.dart';
import 'package:openapi/src/model/delivery_man_order_detail_pricing.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_order_detail.g.dart';

/// GET /delivery-man/orders/{id} — Order Request / active delivery screen
///
/// Properties:
/// * [id] 
/// * [orderStatus] 
/// * [statusLabel] 
/// * [paymentStatus] 
/// * [paymentMethod] 
/// * [orderType] 
/// * [orderAmount] 
/// * [deliveryCharge] 
/// * [scheduled] 
/// * [scheduleAt] 
/// * [createdAt] 
/// * [isManualDispatch] 
/// * [orderNote] 
/// * [dispatchSummary] 
/// * [restaurant] 
/// * [customer] 
/// * [deliveryAddress] 
/// * [deliveryAddressParsed] 
/// * [items] 
/// * [pricing] 
/// * [assignedToMe] 
/// * [canAccept] 
/// * [canUpdateStatus] 
@BuiltValue()
abstract class DeliveryManOrderDetail implements Built<DeliveryManOrderDetail, DeliveryManOrderDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'order_status')
  String? get orderStatus;

  @BuiltValueField(wireName: r'status_label')
  String? get statusLabel;

  @BuiltValueField(wireName: r'payment_status')
  String? get paymentStatus;

  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: r'order_type')
  String? get orderType;

  @BuiltValueField(wireName: r'order_amount')
  num? get orderAmount;

  @BuiltValueField(wireName: r'delivery_charge')
  num? get deliveryCharge;

  @BuiltValueField(wireName: r'scheduled')
  bool? get scheduled;

  @BuiltValueField(wireName: r'schedule_at')
  DateTime? get scheduleAt;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'is_manual_dispatch')
  bool? get isManualDispatch;

  @BuiltValueField(wireName: r'order_note')
  String? get orderNote;

  @BuiltValueField(wireName: r'dispatch_summary')
  DeliveryManOrderDetailDispatchSummary? get dispatchSummary;

  @BuiltValueField(wireName: r'restaurant')
  DeliveryManOrderDetailRestaurant? get restaurant;

  @BuiltValueField(wireName: r'customer')
  DeliveryManOrderDetailParty? get customer;

  @BuiltValueField(wireName: r'delivery_address')
  String? get deliveryAddress;

  @BuiltValueField(wireName: r'delivery_address_parsed')
  JsonObject? get deliveryAddressParsed;

  @BuiltValueField(wireName: r'items')
  BuiltList<DeliveryManOrderDetailItem>? get items;

  @BuiltValueField(wireName: r'pricing')
  DeliveryManOrderDetailPricing? get pricing;

  @BuiltValueField(wireName: r'assigned_to_me')
  bool? get assignedToMe;

  @BuiltValueField(wireName: r'can_accept')
  bool? get canAccept;

  @BuiltValueField(wireName: r'can_update_status')
  bool? get canUpdateStatus;

  DeliveryManOrderDetail._();

  factory DeliveryManOrderDetail([void updates(DeliveryManOrderDetailBuilder b)]) = _$DeliveryManOrderDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManOrderDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManOrderDetail> get serializer => _$DeliveryManOrderDetailSerializer();
}

class _$DeliveryManOrderDetailSerializer implements PrimitiveSerializer<DeliveryManOrderDetail> {
  @override
  final Iterable<Type> types = const [DeliveryManOrderDetail, _$DeliveryManOrderDetail];

  @override
  final String wireName = r'DeliveryManOrderDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManOrderDetail object, {
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
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.paymentMethod != null) {
      yield r'payment_method';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.orderType != null) {
      yield r'order_type';
      yield serializers.serialize(
        object.orderType,
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
    if (object.deliveryCharge != null) {
      yield r'delivery_charge';
      yield serializers.serialize(
        object.deliveryCharge,
        specifiedType: const FullType(num),
      );
    }
    if (object.scheduled != null) {
      yield r'scheduled';
      yield serializers.serialize(
        object.scheduled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scheduleAt != null) {
      yield r'schedule_at';
      yield serializers.serialize(
        object.scheduleAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.isManualDispatch != null) {
      yield r'is_manual_dispatch';
      yield serializers.serialize(
        object.isManualDispatch,
        specifiedType: const FullType(bool),
      );
    }
    if (object.orderNote != null) {
      yield r'order_note';
      yield serializers.serialize(
        object.orderNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dispatchSummary != null) {
      yield r'dispatch_summary';
      yield serializers.serialize(
        object.dispatchSummary,
        specifiedType: const FullType.nullable(DeliveryManOrderDetailDispatchSummary),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType.nullable(DeliveryManOrderDetailRestaurant),
      );
    }
    if (object.customer != null) {
      yield r'customer';
      yield serializers.serialize(
        object.customer,
        specifiedType: const FullType(DeliveryManOrderDetailParty),
      );
    }
    if (object.deliveryAddress != null) {
      yield r'delivery_address';
      yield serializers.serialize(
        object.deliveryAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deliveryAddressParsed != null) {
      yield r'delivery_address_parsed';
      yield serializers.serialize(
        object.deliveryAddressParsed,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(DeliveryManOrderDetailItem)]),
      );
    }
    if (object.pricing != null) {
      yield r'pricing';
      yield serializers.serialize(
        object.pricing,
        specifiedType: const FullType(DeliveryManOrderDetailPricing),
      );
    }
    if (object.assignedToMe != null) {
      yield r'assigned_to_me';
      yield serializers.serialize(
        object.assignedToMe,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canAccept != null) {
      yield r'can_accept';
      yield serializers.serialize(
        object.canAccept,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canUpdateStatus != null) {
      yield r'can_update_status';
      yield serializers.serialize(
        object.canUpdateStatus,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManOrderDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManOrderDetailBuilder result,
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
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentMethod = valueDes;
          break;
        case r'order_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderType = valueDes;
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
        case r'scheduled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scheduled = valueDes;
          break;
        case r'schedule_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.scheduleAt = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'is_manual_dispatch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isManualDispatch = valueDes;
          break;
        case r'order_note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderNote = valueDes;
          break;
        case r'dispatch_summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManOrderDetailDispatchSummary),
          ) as DeliveryManOrderDetailDispatchSummary?;
          if (valueDes == null) continue;
          result.dispatchSummary.replace(valueDes);
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManOrderDetailRestaurant),
          ) as DeliveryManOrderDetailRestaurant?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManOrderDetailParty),
          ) as DeliveryManOrderDetailParty?;
          if (valueDes == null) continue;
          result.customer.replace(valueDes);
          break;
        case r'delivery_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deliveryAddress = valueDes;
          break;
        case r'delivery_address_parsed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.deliveryAddressParsed = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(DeliveryManOrderDetailItem)]),
          ) as BuiltList<DeliveryManOrderDetailItem>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'pricing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManOrderDetailPricing),
          ) as DeliveryManOrderDetailPricing?;
          if (valueDes == null) continue;
          result.pricing.replace(valueDes);
          break;
        case r'assigned_to_me':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.assignedToMe = valueDes;
          break;
        case r'can_accept':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canAccept = valueDes;
          break;
        case r'can_update_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canUpdateStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManOrderDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManOrderDetailBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_order_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/vendor_order_line_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_order_detail.g.dart';

/// VendorOrderDetail
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [restaurantId] 
/// * [orderAmount] 
/// * [orderStatus] 
/// * [paymentStatus] 
/// * [paymentMethod] 
/// * [orderType] 
/// * [scheduled] 
/// * [checked] 
/// * [createdAt] 
/// * [customerName] 
/// * [customerPhone] 
/// * [orderNote] 
/// * [deliveryAddress] 
/// * [deliveryCharge] 
/// * [totalTaxAmount] 
/// * [items] 
@BuiltValue()
abstract class VendorOrderDetail implements VendorOrderSummary, Built<VendorOrderDetail, VendorOrderDetailBuilder> {
  @BuiltValueField(wireName: r'delivery_address')
  String? get deliveryAddress;

  @BuiltValueField(wireName: r'order_note')
  String? get orderNote;

  @BuiltValueField(wireName: r'delivery_charge')
  num? get deliveryCharge;

  @BuiltValueField(wireName: r'total_tax_amount')
  num? get totalTaxAmount;

  @BuiltValueField(wireName: r'items')
  BuiltList<VendorOrderLineItem>? get items;

  VendorOrderDetail._();

  factory VendorOrderDetail([void updates(VendorOrderDetailBuilder b)]) = _$VendorOrderDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorOrderDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorOrderDetail> get serializer => _$VendorOrderDetailSerializer();
}

class _$VendorOrderDetailSerializer implements PrimitiveSerializer<VendorOrderDetail> {
  @override
  final Iterable<Type> types = const [VendorOrderDetail, _$VendorOrderDetail];

  @override
  final String wireName = r'VendorOrderDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorOrderDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.orderType != null) {
      yield r'order_type';
      yield serializers.serialize(
        object.orderType,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderNote != null) {
      yield r'order_note';
      yield serializers.serialize(
        object.orderNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.scheduled != null) {
      yield r'scheduled';
      yield serializers.serialize(
        object.scheduled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deliveryCharge != null) {
      yield r'delivery_charge';
      yield serializers.serialize(
        object.deliveryCharge,
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
    if (object.restaurantId != null) {
      yield r'restaurant_id';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerName != null) {
      yield r'customer_name';
      yield serializers.serialize(
        object.customerName,
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
    if (object.customerPhone != null) {
      yield r'customer_phone';
      yield serializers.serialize(
        object.customerPhone,
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
    if (object.deliveryAddress != null) {
      yield r'delivery_address';
      yield serializers.serialize(
        object.deliveryAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.paymentMethod != null) {
      yield r'payment_method';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType(String),
      );
    }
    if (object.checked != null) {
      yield r'checked';
      yield serializers.serialize(
        object.checked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalTaxAmount != null) {
      yield r'total_tax_amount';
      yield serializers.serialize(
        object.totalTaxAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(VendorOrderLineItem)]),
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
    VendorOrderDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorOrderDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderType = valueDes;
          break;
        case r'order_note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderNote = valueDes;
          break;
        case r'scheduled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scheduled = valueDes;
          break;
        case r'delivery_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.deliveryCharge = valueDes;
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
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerName = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'customer_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerPhone = valueDes;
          break;
        case r'order_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.orderAmount = valueDes;
          break;
        case r'delivery_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deliveryAddress = valueDes;
          break;
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentMethod = valueDes;
          break;
        case r'checked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.checked = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'total_tax_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.totalTaxAmount = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(VendorOrderLineItem)]),
          ) as BuiltList<VendorOrderLineItem>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
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
  VendorOrderDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorOrderDetailBuilder();
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



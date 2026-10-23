//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_request_driver_response_data.g.dart';

/// VendorRequestDriverResponseData
///
/// Properties:
/// * [orderId] 
/// * [commissionRate] 
/// * [commission] 
/// * [deliveryFee] 
/// * [gizraCharge] - commission + delivery_fee
/// * [restaurantNet] - Estimated net to restaurant after GIZRA charge
/// * [paymentStatus] 
/// * [message] 
@BuiltValue()
abstract class VendorRequestDriverResponseData implements Built<VendorRequestDriverResponseData, VendorRequestDriverResponseDataBuilder> {
  @BuiltValueField(wireName: r'order_id')
  String? get orderId;

  @BuiltValueField(wireName: r'commission_rate')
  num? get commissionRate;

  @BuiltValueField(wireName: r'commission')
  num? get commission;

  @BuiltValueField(wireName: r'delivery_fee')
  num? get deliveryFee;

  /// commission + delivery_fee
  @BuiltValueField(wireName: r'gizra_charge')
  num? get gizraCharge;

  /// Estimated net to restaurant after GIZRA charge
  @BuiltValueField(wireName: r'restaurant_net')
  num? get restaurantNet;

  @BuiltValueField(wireName: r'payment_status')
  VendorRequestDriverResponseDataPaymentStatusEnum? get paymentStatus;
  // enum paymentStatusEnum {  paid,  unpaid,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  VendorRequestDriverResponseData._();

  factory VendorRequestDriverResponseData([void updates(VendorRequestDriverResponseDataBuilder b)]) = _$VendorRequestDriverResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRequestDriverResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRequestDriverResponseData> get serializer => _$VendorRequestDriverResponseDataSerializer();
}

class _$VendorRequestDriverResponseDataSerializer implements PrimitiveSerializer<VendorRequestDriverResponseData> {
  @override
  final Iterable<Type> types = const [VendorRequestDriverResponseData, _$VendorRequestDriverResponseData];

  @override
  final String wireName = r'VendorRequestDriverResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRequestDriverResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.commissionRate != null) {
      yield r'commission_rate';
      yield serializers.serialize(
        object.commissionRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.commission != null) {
      yield r'commission';
      yield serializers.serialize(
        object.commission,
        specifiedType: const FullType(num),
      );
    }
    if (object.deliveryFee != null) {
      yield r'delivery_fee';
      yield serializers.serialize(
        object.deliveryFee,
        specifiedType: const FullType(num),
      );
    }
    if (object.gizraCharge != null) {
      yield r'gizra_charge';
      yield serializers.serialize(
        object.gizraCharge,
        specifiedType: const FullType(num),
      );
    }
    if (object.restaurantNet != null) {
      yield r'restaurant_net';
      yield serializers.serialize(
        object.restaurantNet,
        specifiedType: const FullType(num),
      );
    }
    if (object.paymentStatus != null) {
      yield r'payment_status';
      yield serializers.serialize(
        object.paymentStatus,
        specifiedType: const FullType(VendorRequestDriverResponseDataPaymentStatusEnum),
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
    VendorRequestDriverResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRequestDriverResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderId = valueDes;
          break;
        case r'commission_rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.commissionRate = valueDes;
          break;
        case r'commission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.commission = valueDes;
          break;
        case r'delivery_fee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.deliveryFee = valueDes;
          break;
        case r'gizra_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.gizraCharge = valueDes;
          break;
        case r'restaurant_net':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.restaurantNet = valueDes;
          break;
        case r'payment_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorRequestDriverResponseDataPaymentStatusEnum),
          ) as VendorRequestDriverResponseDataPaymentStatusEnum?;
          if (valueDes == null) continue;
          result.paymentStatus = valueDes;
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
  VendorRequestDriverResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRequestDriverResponseDataBuilder();
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


class VendorRequestDriverResponseDataPaymentStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'paid')
  static const VendorRequestDriverResponseDataPaymentStatusEnum paid = _$vendorRequestDriverResponseDataPaymentStatusEnum_paid;
  @BuiltValueEnumConst(wireName: r'unpaid')
  static const VendorRequestDriverResponseDataPaymentStatusEnum unpaid = _$vendorRequestDriverResponseDataPaymentStatusEnum_unpaid;

  static Serializer<VendorRequestDriverResponseDataPaymentStatusEnum> get serializer => _$vendorRequestDriverResponseDataPaymentStatusEnumSerializer;

  const VendorRequestDriverResponseDataPaymentStatusEnum._(String name): super(name);

  static BuiltSet<VendorRequestDriverResponseDataPaymentStatusEnum> get values => _$vendorRequestDriverResponseDataPaymentStatusEnumValues;
  static VendorRequestDriverResponseDataPaymentStatusEnum valueOf(String name) => _$vendorRequestDriverResponseDataPaymentStatusEnumValueOf(name);
}


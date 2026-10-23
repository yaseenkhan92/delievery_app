//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_request_driver_body.g.dart';

/// VendorRequestDriverBody
///
/// Properties:
/// * [customerName] 
/// * [customerPhone] 
/// * [address] 
/// * [orderAmount] - Item subtotal (before delivery fee and tax)
/// * [deliveryFee] 
/// * [paymentMethod] - `prepaid` sets payment_status=paid; order still uses COD method for commission logic
/// * [idempotencyKey] - Unique per dispatch attempt; stored as orders.manual_dispatch_key
/// * [zoneId] - Optional reporting only; drivers match restaurant zone_id
/// * [latitude] 
/// * [longitude] 
/// * [tax] - Tax percentage on item price (default 10)
@BuiltValue()
abstract class VendorRequestDriverBody implements Built<VendorRequestDriverBody, VendorRequestDriverBodyBuilder> {
  @BuiltValueField(wireName: r'customer_name')
  String get customerName;

  @BuiltValueField(wireName: r'customer_phone')
  String get customerPhone;

  @BuiltValueField(wireName: r'address')
  String get address;

  /// Item subtotal (before delivery fee and tax)
  @BuiltValueField(wireName: r'order_amount')
  num get orderAmount;

  @BuiltValueField(wireName: r'delivery_fee')
  num get deliveryFee;

  /// `prepaid` sets payment_status=paid; order still uses COD method for commission logic
  @BuiltValueField(wireName: r'payment_method')
  VendorRequestDriverBodyPaymentMethodEnum get paymentMethod;
  // enum paymentMethodEnum {  prepaid,  cash_on_delivery,  };

  /// Unique per dispatch attempt; stored as orders.manual_dispatch_key
  @BuiltValueField(wireName: r'idempotency_key')
  String get idempotencyKey;

  /// Optional reporting only; drivers match restaurant zone_id
  @BuiltValueField(wireName: r'zone_id')
  int? get zoneId;

  @BuiltValueField(wireName: r'latitude')
  num? get latitude;

  @BuiltValueField(wireName: r'longitude')
  num? get longitude;

  /// Tax percentage on item price (default 10)
  @BuiltValueField(wireName: r'tax')
  num? get tax;

  VendorRequestDriverBody._();

  factory VendorRequestDriverBody([void updates(VendorRequestDriverBodyBuilder b)]) = _$VendorRequestDriverBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRequestDriverBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRequestDriverBody> get serializer => _$VendorRequestDriverBodySerializer();
}

class _$VendorRequestDriverBodySerializer implements PrimitiveSerializer<VendorRequestDriverBody> {
  @override
  final Iterable<Type> types = const [VendorRequestDriverBody, _$VendorRequestDriverBody];

  @override
  final String wireName = r'VendorRequestDriverBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRequestDriverBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'customer_name';
    yield serializers.serialize(
      object.customerName,
      specifiedType: const FullType(String),
    );
    yield r'customer_phone';
    yield serializers.serialize(
      object.customerPhone,
      specifiedType: const FullType(String),
    );
    yield r'address';
    yield serializers.serialize(
      object.address,
      specifiedType: const FullType(String),
    );
    yield r'order_amount';
    yield serializers.serialize(
      object.orderAmount,
      specifiedType: const FullType(num),
    );
    yield r'delivery_fee';
    yield serializers.serialize(
      object.deliveryFee,
      specifiedType: const FullType(num),
    );
    yield r'payment_method';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(VendorRequestDriverBodyPaymentMethodEnum),
    );
    yield r'idempotency_key';
    yield serializers.serialize(
      object.idempotencyKey,
      specifiedType: const FullType(String),
    );
    if (object.zoneId != null) {
      yield r'zone_id';
      yield serializers.serialize(
        object.zoneId,
        specifiedType: const FullType(int),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType(num),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType(num),
      );
    }
    if (object.tax != null) {
      yield r'tax';
      yield serializers.serialize(
        object.tax,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRequestDriverBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRequestDriverBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'customer_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerPhone = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'order_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.orderAmount = valueDes;
          break;
        case r'delivery_fee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.deliveryFee = valueDes;
          break;
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VendorRequestDriverBodyPaymentMethodEnum),
          ) as VendorRequestDriverBodyPaymentMethodEnum;
          result.paymentMethod = valueDes;
          break;
        case r'idempotency_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idempotencyKey = valueDes;
          break;
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.zoneId = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.longitude = valueDes;
          break;
        case r'tax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.tax = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRequestDriverBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRequestDriverBodyBuilder();
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


/// `prepaid` sets payment_status=paid; order still uses COD method for commission logic
class VendorRequestDriverBodyPaymentMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'prepaid')
  static const VendorRequestDriverBodyPaymentMethodEnum prepaid = _$vendorRequestDriverBodyPaymentMethodEnum_prepaid;
  @BuiltValueEnumConst(wireName: r'cash_on_delivery')
  static const VendorRequestDriverBodyPaymentMethodEnum cashOnDelivery = _$vendorRequestDriverBodyPaymentMethodEnum_cashOnDelivery;

  static Serializer<VendorRequestDriverBodyPaymentMethodEnum> get serializer => _$vendorRequestDriverBodyPaymentMethodEnumSerializer;

  const VendorRequestDriverBodyPaymentMethodEnum._(String name): super(name);

  static BuiltSet<VendorRequestDriverBodyPaymentMethodEnum> get values => _$vendorRequestDriverBodyPaymentMethodEnumValues;
  static VendorRequestDriverBodyPaymentMethodEnum valueOf(String name) => _$vendorRequestDriverBodyPaymentMethodEnumValueOf(name);
}


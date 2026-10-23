//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_zone_data_item.g.dart';

/// ConsumerZoneDataItem
///
/// Properties:
/// * [id] 
/// * [status] 
/// * [name] 
/// * [displayName] 
/// * [minimumShippingCharge] 
/// * [perKmShippingCharge] 
/// * [maximumShippingCharge] 
/// * [maxCodOrderAmount] 
/// * [increasedDeliveryFee] 
/// * [increasedDeliveryFeeStatus] 
/// * [increaseDeliveryChargeMessage] 
@BuiltValue()
abstract class ConsumerZoneDataItem implements Built<ConsumerZoneDataItem, ConsumerZoneDataItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'status')
  int? get status;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  @BuiltValueField(wireName: r'minimum_shipping_charge')
  num? get minimumShippingCharge;

  @BuiltValueField(wireName: r'per_km_shipping_charge')
  num? get perKmShippingCharge;

  @BuiltValueField(wireName: r'maximum_shipping_charge')
  num? get maximumShippingCharge;

  @BuiltValueField(wireName: r'max_cod_order_amount')
  num? get maxCodOrderAmount;

  @BuiltValueField(wireName: r'increased_delivery_fee')
  num? get increasedDeliveryFee;

  @BuiltValueField(wireName: r'increased_delivery_fee_status')
  int? get increasedDeliveryFeeStatus;

  @BuiltValueField(wireName: r'increase_delivery_charge_message')
  String? get increaseDeliveryChargeMessage;

  ConsumerZoneDataItem._();

  factory ConsumerZoneDataItem([void updates(ConsumerZoneDataItemBuilder b)]) = _$ConsumerZoneDataItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerZoneDataItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerZoneDataItem> get serializer => _$ConsumerZoneDataItemSerializer();
}

class _$ConsumerZoneDataItemSerializer implements PrimitiveSerializer<ConsumerZoneDataItem> {
  @override
  final Iterable<Type> types = const [ConsumerZoneDataItem, _$ConsumerZoneDataItem];

  @override
  final String wireName = r'ConsumerZoneDataItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerZoneDataItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.minimumShippingCharge != null) {
      yield r'minimum_shipping_charge';
      yield serializers.serialize(
        object.minimumShippingCharge,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.perKmShippingCharge != null) {
      yield r'per_km_shipping_charge';
      yield serializers.serialize(
        object.perKmShippingCharge,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.maximumShippingCharge != null) {
      yield r'maximum_shipping_charge';
      yield serializers.serialize(
        object.maximumShippingCharge,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.maxCodOrderAmount != null) {
      yield r'max_cod_order_amount';
      yield serializers.serialize(
        object.maxCodOrderAmount,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.increasedDeliveryFee != null) {
      yield r'increased_delivery_fee';
      yield serializers.serialize(
        object.increasedDeliveryFee,
        specifiedType: const FullType(num),
      );
    }
    if (object.increasedDeliveryFeeStatus != null) {
      yield r'increased_delivery_fee_status';
      yield serializers.serialize(
        object.increasedDeliveryFeeStatus,
        specifiedType: const FullType(int),
      );
    }
    if (object.increaseDeliveryChargeMessage != null) {
      yield r'increase_delivery_charge_message';
      yield serializers.serialize(
        object.increaseDeliveryChargeMessage,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerZoneDataItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerZoneDataItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'minimum_shipping_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minimumShippingCharge = valueDes;
          break;
        case r'per_km_shipping_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.perKmShippingCharge = valueDes;
          break;
        case r'maximum_shipping_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maximumShippingCharge = valueDes;
          break;
        case r'max_cod_order_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maxCodOrderAmount = valueDes;
          break;
        case r'increased_delivery_fee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.increasedDeliveryFee = valueDes;
          break;
        case r'increased_delivery_fee_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.increasedDeliveryFeeStatus = valueDes;
          break;
        case r'increase_delivery_charge_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.increaseDeliveryChargeMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerZoneDataItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerZoneDataItemBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_order_detail_pricing.g.dart';

/// DeliveryManOrderDetailPricing
///
/// Properties:
/// * [itemsPrice] 
/// * [discount] 
/// * [vatTax] 
/// * [taxPercent] 
/// * [deliveryManTips] 
/// * [addons] 
/// * [deliveryCharge] 
/// * [subtotal] 
@BuiltValue()
abstract class DeliveryManOrderDetailPricing implements Built<DeliveryManOrderDetailPricing, DeliveryManOrderDetailPricingBuilder> {
  @BuiltValueField(wireName: r'items_price')
  num? get itemsPrice;

  @BuiltValueField(wireName: r'discount')
  num? get discount;

  @BuiltValueField(wireName: r'vat_tax')
  num? get vatTax;

  @BuiltValueField(wireName: r'tax_percent')
  num? get taxPercent;

  @BuiltValueField(wireName: r'delivery_man_tips')
  num? get deliveryManTips;

  @BuiltValueField(wireName: r'addons')
  num? get addons;

  @BuiltValueField(wireName: r'delivery_charge')
  num? get deliveryCharge;

  @BuiltValueField(wireName: r'subtotal')
  num? get subtotal;

  DeliveryManOrderDetailPricing._();

  factory DeliveryManOrderDetailPricing([void updates(DeliveryManOrderDetailPricingBuilder b)]) = _$DeliveryManOrderDetailPricing;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManOrderDetailPricingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManOrderDetailPricing> get serializer => _$DeliveryManOrderDetailPricingSerializer();
}

class _$DeliveryManOrderDetailPricingSerializer implements PrimitiveSerializer<DeliveryManOrderDetailPricing> {
  @override
  final Iterable<Type> types = const [DeliveryManOrderDetailPricing, _$DeliveryManOrderDetailPricing];

  @override
  final String wireName = r'DeliveryManOrderDetailPricing';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManOrderDetailPricing object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.itemsPrice != null) {
      yield r'items_price';
      yield serializers.serialize(
        object.itemsPrice,
        specifiedType: const FullType(num),
      );
    }
    if (object.discount != null) {
      yield r'discount';
      yield serializers.serialize(
        object.discount,
        specifiedType: const FullType(num),
      );
    }
    if (object.vatTax != null) {
      yield r'vat_tax';
      yield serializers.serialize(
        object.vatTax,
        specifiedType: const FullType(num),
      );
    }
    if (object.taxPercent != null) {
      yield r'tax_percent';
      yield serializers.serialize(
        object.taxPercent,
        specifiedType: const FullType(num),
      );
    }
    if (object.deliveryManTips != null) {
      yield r'delivery_man_tips';
      yield serializers.serialize(
        object.deliveryManTips,
        specifiedType: const FullType(num),
      );
    }
    if (object.addons != null) {
      yield r'addons';
      yield serializers.serialize(
        object.addons,
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
    if (object.subtotal != null) {
      yield r'subtotal';
      yield serializers.serialize(
        object.subtotal,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManOrderDetailPricing object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManOrderDetailPricingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.itemsPrice = valueDes;
          break;
        case r'discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.discount = valueDes;
          break;
        case r'vat_tax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.vatTax = valueDes;
          break;
        case r'tax_percent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.taxPercent = valueDes;
          break;
        case r'delivery_man_tips':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.deliveryManTips = valueDes;
          break;
        case r'addons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.addons = valueDes;
          break;
        case r'delivery_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.deliveryCharge = valueDes;
          break;
        case r'subtotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.subtotal = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManOrderDetailPricing deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManOrderDetailPricingBuilder();
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



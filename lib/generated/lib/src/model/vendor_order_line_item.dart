//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_order_line_item.g.dart';

/// VendorOrderLineItem
///
/// Properties:
/// * [id] 
/// * [foodId] 
/// * [foodName] 
/// * [foodImage] 
/// * [price] 
/// * [quantity] 
/// * [variation] 
/// * [addOns] 
/// * [taxAmount] 
/// * [totalAddOnPrice] 
@BuiltValue()
abstract class VendorOrderLineItem implements Built<VendorOrderLineItem, VendorOrderLineItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'food_id')
  String? get foodId;

  @BuiltValueField(wireName: r'food_name')
  String? get foodName;

  @BuiltValueField(wireName: r'food_image')
  String? get foodImage;

  @BuiltValueField(wireName: r'price')
  num? get price;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'variation')
  String? get variation;

  @BuiltValueField(wireName: r'add_ons')
  String? get addOns;

  @BuiltValueField(wireName: r'tax_amount')
  num? get taxAmount;

  @BuiltValueField(wireName: r'total_add_on_price')
  num? get totalAddOnPrice;

  VendorOrderLineItem._();

  factory VendorOrderLineItem([void updates(VendorOrderLineItemBuilder b)]) = _$VendorOrderLineItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorOrderLineItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorOrderLineItem> get serializer => _$VendorOrderLineItemSerializer();
}

class _$VendorOrderLineItemSerializer implements PrimitiveSerializer<VendorOrderLineItem> {
  @override
  final Iterable<Type> types = const [VendorOrderLineItem, _$VendorOrderLineItem];

  @override
  final String wireName = r'VendorOrderLineItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorOrderLineItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.foodId != null) {
      yield r'food_id';
      yield serializers.serialize(
        object.foodId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.foodName != null) {
      yield r'food_name';
      yield serializers.serialize(
        object.foodName,
        specifiedType: const FullType(String),
      );
    }
    if (object.foodImage != null) {
      yield r'food_image';
      yield serializers.serialize(
        object.foodImage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(num),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.variation != null) {
      yield r'variation';
      yield serializers.serialize(
        object.variation,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.addOns != null) {
      yield r'add_ons';
      yield serializers.serialize(
        object.addOns,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.taxAmount != null) {
      yield r'tax_amount';
      yield serializers.serialize(
        object.taxAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.totalAddOnPrice != null) {
      yield r'total_add_on_price';
      yield serializers.serialize(
        object.totalAddOnPrice,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorOrderLineItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorOrderLineItemBuilder result,
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
        case r'food_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.foodId = valueDes;
          break;
        case r'food_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.foodName = valueDes;
          break;
        case r'food_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.foodImage = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.quantity = valueDes;
          break;
        case r'variation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.variation = valueDes;
          break;
        case r'add_ons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.addOns = valueDes;
          break;
        case r'tax_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.taxAmount = valueDes;
          break;
        case r'total_add_on_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.totalAddOnPrice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorOrderLineItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorOrderLineItemBuilder();
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



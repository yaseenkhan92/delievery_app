//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_order_line_item.g.dart';

/// PlaceOrderLineItem
///
/// Properties:
/// * [itemId] 
/// * [itemType] 
/// * [price] 
/// * [quantity] 
/// * [addOnIds] 
/// * [addOnQtys] 
/// * [variations] 
/// * [variationOptions] 
@BuiltValue()
abstract class PlaceOrderLineItem implements Built<PlaceOrderLineItem, PlaceOrderLineItemBuilder> {
  @BuiltValueField(wireName: r'item_id')
  num get itemId;

  @BuiltValueField(wireName: r'item_type')
  PlaceOrderLineItemItemTypeEnum? get itemType;
  // enum itemTypeEnum {  Food,  ItemCampaign,  };

  @BuiltValueField(wireName: r'price')
  num? get price;

  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  @BuiltValueField(wireName: r'add_on_ids')
  BuiltList<num>? get addOnIds;

  @BuiltValueField(wireName: r'add_on_qtys')
  BuiltList<num>? get addOnQtys;

  @BuiltValueField(wireName: r'variations')
  BuiltList<JsonObject>? get variations;

  @BuiltValueField(wireName: r'variation_options')
  BuiltList<JsonObject>? get variationOptions;

  PlaceOrderLineItem._();

  factory PlaceOrderLineItem([void updates(PlaceOrderLineItemBuilder b)]) = _$PlaceOrderLineItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceOrderLineItemBuilder b) => b
      ..itemType = PlaceOrderLineItemItemTypeEnum.valueOf('Food');

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceOrderLineItem> get serializer => _$PlaceOrderLineItemSerializer();
}

class _$PlaceOrderLineItemSerializer implements PrimitiveSerializer<PlaceOrderLineItem> {
  @override
  final Iterable<Type> types = const [PlaceOrderLineItem, _$PlaceOrderLineItem];

  @override
  final String wireName = r'PlaceOrderLineItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceOrderLineItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'item_id';
    yield serializers.serialize(
      object.itemId,
      specifiedType: const FullType(num),
    );
    if (object.itemType != null) {
      yield r'item_type';
      yield serializers.serialize(
        object.itemType,
        specifiedType: const FullType(PlaceOrderLineItemItemTypeEnum),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(num),
      );
    }
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(int),
    );
    if (object.addOnIds != null) {
      yield r'add_on_ids';
      yield serializers.serialize(
        object.addOnIds,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
    if (object.addOnQtys != null) {
      yield r'add_on_qtys';
      yield serializers.serialize(
        object.addOnQtys,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
    if (object.variations != null) {
      yield r'variations';
      yield serializers.serialize(
        object.variations,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
    if (object.variationOptions != null) {
      yield r'variation_options';
      yield serializers.serialize(
        object.variationOptions,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceOrderLineItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlaceOrderLineItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'item_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.itemId = valueDes;
          break;
        case r'item_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceOrderLineItemItemTypeEnum),
          ) as PlaceOrderLineItemItemTypeEnum?;
          if (valueDes == null) continue;
          result.itemType = valueDes;
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
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'add_on_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.addOnIds.replace(valueDes);
          break;
        case r'add_on_qtys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.addOnQtys.replace(valueDes);
          break;
        case r'variations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>?;
          if (valueDes == null) continue;
          result.variations.replace(valueDes);
          break;
        case r'variation_options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>?;
          if (valueDes == null) continue;
          result.variationOptions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceOrderLineItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceOrderLineItemBuilder();
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


class PlaceOrderLineItemItemTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Food')
  static const PlaceOrderLineItemItemTypeEnum food = _$placeOrderLineItemItemTypeEnum_food;
  @BuiltValueEnumConst(wireName: r'ItemCampaign')
  static const PlaceOrderLineItemItemTypeEnum itemCampaign = _$placeOrderLineItemItemTypeEnum_itemCampaign;

  static Serializer<PlaceOrderLineItemItemTypeEnum> get serializer => _$placeOrderLineItemItemTypeEnumSerializer;

  const PlaceOrderLineItemItemTypeEnum._(String name): super(name);

  static BuiltSet<PlaceOrderLineItemItemTypeEnum> get values => _$placeOrderLineItemItemTypeEnumValues;
  static PlaceOrderLineItemItemTypeEnum valueOf(String name) => _$placeOrderLineItemItemTypeEnumValueOf(name);
}


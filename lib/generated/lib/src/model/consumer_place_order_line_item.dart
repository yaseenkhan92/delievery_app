//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_place_order_line_item.g.dart';

/// ConsumerPlaceOrderLineItem
///
/// Properties:
/// * [itemId] 
/// * [itemType] 
/// * [price] - Optional for buy-now; server uses menu price when loading from cart DB
/// * [quantity] 
/// * [addOnIds] 
/// * [addOnQtys] 
/// * [variations] 
/// * [variationOptions] 
@BuiltValue()
abstract class ConsumerPlaceOrderLineItem implements Built<ConsumerPlaceOrderLineItem, ConsumerPlaceOrderLineItemBuilder> {
  @BuiltValueField(wireName: r'item_id')
  num get itemId;

  @BuiltValueField(wireName: r'item_type')
  ConsumerPlaceOrderLineItemItemTypeEnum? get itemType;
  // enum itemTypeEnum {  Food,  ItemCampaign,  };

  /// Optional for buy-now; server uses menu price when loading from cart DB
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

  ConsumerPlaceOrderLineItem._();

  factory ConsumerPlaceOrderLineItem([void updates(ConsumerPlaceOrderLineItemBuilder b)]) = _$ConsumerPlaceOrderLineItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerPlaceOrderLineItemBuilder b) => b
      ..itemType = ConsumerPlaceOrderLineItemItemTypeEnum.valueOf('Food');

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerPlaceOrderLineItem> get serializer => _$ConsumerPlaceOrderLineItemSerializer();
}

class _$ConsumerPlaceOrderLineItemSerializer implements PrimitiveSerializer<ConsumerPlaceOrderLineItem> {
  @override
  final Iterable<Type> types = const [ConsumerPlaceOrderLineItem, _$ConsumerPlaceOrderLineItem];

  @override
  final String wireName = r'ConsumerPlaceOrderLineItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerPlaceOrderLineItem object, {
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
        specifiedType: const FullType(ConsumerPlaceOrderLineItemItemTypeEnum),
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
    ConsumerPlaceOrderLineItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerPlaceOrderLineItemBuilder result,
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
            specifiedType: const FullType.nullable(ConsumerPlaceOrderLineItemItemTypeEnum),
          ) as ConsumerPlaceOrderLineItemItemTypeEnum?;
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
  ConsumerPlaceOrderLineItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerPlaceOrderLineItemBuilder();
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


class ConsumerPlaceOrderLineItemItemTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Food')
  static const ConsumerPlaceOrderLineItemItemTypeEnum food = _$consumerPlaceOrderLineItemItemTypeEnum_food;
  @BuiltValueEnumConst(wireName: r'ItemCampaign')
  static const ConsumerPlaceOrderLineItemItemTypeEnum itemCampaign = _$consumerPlaceOrderLineItemItemTypeEnum_itemCampaign;

  static Serializer<ConsumerPlaceOrderLineItemItemTypeEnum> get serializer => _$consumerPlaceOrderLineItemItemTypeEnumSerializer;

  const ConsumerPlaceOrderLineItemItemTypeEnum._(String name): super(name);

  static BuiltSet<ConsumerPlaceOrderLineItemItemTypeEnum> get values => _$consumerPlaceOrderLineItemItemTypeEnumValues;
  static ConsumerPlaceOrderLineItemItemTypeEnum valueOf(String name) => _$consumerPlaceOrderLineItemItemTypeEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/delivery_man_order_detail_item_addon_lines_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_order_detail_item.g.dart';

/// DeliveryManOrderDetailItem
///
/// Properties:
/// * [id] 
/// * [foodId] 
/// * [foodName] 
/// * [foodImageUrl] 
/// * [quantity] 
/// * [unitLabel] 
/// * [price] 
/// * [lineTotal] 
/// * [addonLines] 
/// * [taxAmount] 
@BuiltValue()
abstract class DeliveryManOrderDetailItem implements Built<DeliveryManOrderDetailItem, DeliveryManOrderDetailItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'food_id')
  String? get foodId;

  @BuiltValueField(wireName: r'food_name')
  String? get foodName;

  @BuiltValueField(wireName: r'food_image_url')
  String? get foodImageUrl;

  @BuiltValueField(wireName: r'quantity')
  num? get quantity;

  @BuiltValueField(wireName: r'unit_label')
  String? get unitLabel;

  @BuiltValueField(wireName: r'price')
  num? get price;

  @BuiltValueField(wireName: r'line_total')
  num? get lineTotal;

  @BuiltValueField(wireName: r'addon_lines')
  BuiltList<DeliveryManOrderDetailItemAddonLinesInner>? get addonLines;

  @BuiltValueField(wireName: r'tax_amount')
  num? get taxAmount;

  DeliveryManOrderDetailItem._();

  factory DeliveryManOrderDetailItem([void updates(DeliveryManOrderDetailItemBuilder b)]) = _$DeliveryManOrderDetailItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManOrderDetailItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManOrderDetailItem> get serializer => _$DeliveryManOrderDetailItemSerializer();
}

class _$DeliveryManOrderDetailItemSerializer implements PrimitiveSerializer<DeliveryManOrderDetailItem> {
  @override
  final Iterable<Type> types = const [DeliveryManOrderDetailItem, _$DeliveryManOrderDetailItem];

  @override
  final String wireName = r'DeliveryManOrderDetailItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManOrderDetailItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
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
    if (object.foodImageUrl != null) {
      yield r'food_image_url';
      yield serializers.serialize(
        object.foodImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(num),
      );
    }
    if (object.unitLabel != null) {
      yield r'unit_label';
      yield serializers.serialize(
        object.unitLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(num),
      );
    }
    if (object.lineTotal != null) {
      yield r'line_total';
      yield serializers.serialize(
        object.lineTotal,
        specifiedType: const FullType(num),
      );
    }
    if (object.addonLines != null) {
      yield r'addon_lines';
      yield serializers.serialize(
        object.addonLines,
        specifiedType: const FullType(BuiltList, [FullType(DeliveryManOrderDetailItemAddonLinesInner)]),
      );
    }
    if (object.taxAmount != null) {
      yield r'tax_amount';
      yield serializers.serialize(
        object.taxAmount,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManOrderDetailItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManOrderDetailItemBuilder result,
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
        case r'food_image_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.foodImageUrl = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.quantity = valueDes;
          break;
        case r'unit_label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unitLabel = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        case r'line_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lineTotal = valueDes;
          break;
        case r'addon_lines':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(DeliveryManOrderDetailItemAddonLinesInner)]),
          ) as BuiltList<DeliveryManOrderDetailItemAddonLinesInner>?;
          if (valueDes == null) continue;
          result.addonLines.replace(valueDes);
          break;
        case r'tax_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.taxAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManOrderDetailItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManOrderDetailItemBuilder();
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



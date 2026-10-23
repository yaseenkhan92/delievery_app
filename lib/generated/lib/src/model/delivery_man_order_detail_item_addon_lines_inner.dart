//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_order_detail_item_addon_lines_inner.g.dart';

/// DeliveryManOrderDetailItemAddonLinesInner
///
/// Properties:
/// * [name] 
/// * [quantity] 
/// * [price] 
@BuiltValue()
abstract class DeliveryManOrderDetailItemAddonLinesInner implements Built<DeliveryManOrderDetailItemAddonLinesInner, DeliveryManOrderDetailItemAddonLinesInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'quantity')
  num? get quantity;

  @BuiltValueField(wireName: r'price')
  num? get price;

  DeliveryManOrderDetailItemAddonLinesInner._();

  factory DeliveryManOrderDetailItemAddonLinesInner([void updates(DeliveryManOrderDetailItemAddonLinesInnerBuilder b)]) = _$DeliveryManOrderDetailItemAddonLinesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManOrderDetailItemAddonLinesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManOrderDetailItemAddonLinesInner> get serializer => _$DeliveryManOrderDetailItemAddonLinesInnerSerializer();
}

class _$DeliveryManOrderDetailItemAddonLinesInnerSerializer implements PrimitiveSerializer<DeliveryManOrderDetailItemAddonLinesInner> {
  @override
  final Iterable<Type> types = const [DeliveryManOrderDetailItemAddonLinesInner, _$DeliveryManOrderDetailItemAddonLinesInner];

  @override
  final String wireName = r'DeliveryManOrderDetailItemAddonLinesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManOrderDetailItemAddonLinesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(num),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManOrderDetailItemAddonLinesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManOrderDetailItemAddonLinesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.quantity = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManOrderDetailItemAddonLinesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManOrderDetailItemAddonLinesInnerBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_suggested_foods_response_data_inner.g.dart';

/// ConsumerSuggestedFoodsResponseDataInner
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [image] 
/// * [price] 
/// * [discount] 
/// * [veg] 
/// * [restaurantId] 
@BuiltValue()
abstract class ConsumerSuggestedFoodsResponseDataInner implements Built<ConsumerSuggestedFoodsResponseDataInner, ConsumerSuggestedFoodsResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'price')
  num? get price;

  @BuiltValueField(wireName: r'discount')
  num? get discount;

  @BuiltValueField(wireName: r'veg')
  bool? get veg;

  @BuiltValueField(wireName: r'restaurant_id')
  String? get restaurantId;

  ConsumerSuggestedFoodsResponseDataInner._();

  factory ConsumerSuggestedFoodsResponseDataInner([void updates(ConsumerSuggestedFoodsResponseDataInnerBuilder b)]) = _$ConsumerSuggestedFoodsResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerSuggestedFoodsResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerSuggestedFoodsResponseDataInner> get serializer => _$ConsumerSuggestedFoodsResponseDataInnerSerializer();
}

class _$ConsumerSuggestedFoodsResponseDataInnerSerializer implements PrimitiveSerializer<ConsumerSuggestedFoodsResponseDataInner> {
  @override
  final Iterable<Type> types = const [ConsumerSuggestedFoodsResponseDataInner, _$ConsumerSuggestedFoodsResponseDataInner];

  @override
  final String wireName = r'ConsumerSuggestedFoodsResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerSuggestedFoodsResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
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
    if (object.discount != null) {
      yield r'discount';
      yield serializers.serialize(
        object.discount,
        specifiedType: const FullType(num),
      );
    }
    if (object.veg != null) {
      yield r'veg';
      yield serializers.serialize(
        object.veg,
        specifiedType: const FullType(bool),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurant_id';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerSuggestedFoodsResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerSuggestedFoodsResponseDataInnerBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        case r'discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.discount = valueDes;
          break;
        case r'veg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.veg = valueDes;
          break;
        case r'restaurant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerSuggestedFoodsResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerSuggestedFoodsResponseDataInnerBuilder();
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



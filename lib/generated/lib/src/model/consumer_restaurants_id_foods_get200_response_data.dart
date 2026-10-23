//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_restaurants_id_foods_get200_response_data_foods_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_restaurants_id_foods_get200_response_data.g.dart';

/// ConsumerRestaurantsIdFoodsGet200ResponseData
///
/// Properties:
/// * [totalSize] 
/// * [limit] 
/// * [offset] 
/// * [foods] 
@BuiltValue()
abstract class ConsumerRestaurantsIdFoodsGet200ResponseData implements Built<ConsumerRestaurantsIdFoodsGet200ResponseData, ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'total_size')
  num? get totalSize;

  @BuiltValueField(wireName: r'limit')
  num? get limit;

  @BuiltValueField(wireName: r'offset')
  num? get offset;

  @BuiltValueField(wireName: r'foods')
  BuiltList<ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner>? get foods;

  ConsumerRestaurantsIdFoodsGet200ResponseData._();

  factory ConsumerRestaurantsIdFoodsGet200ResponseData([void updates(ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder b)]) = _$ConsumerRestaurantsIdFoodsGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerRestaurantsIdFoodsGet200ResponseData> get serializer => _$ConsumerRestaurantsIdFoodsGet200ResponseDataSerializer();
}

class _$ConsumerRestaurantsIdFoodsGet200ResponseDataSerializer implements PrimitiveSerializer<ConsumerRestaurantsIdFoodsGet200ResponseData> {
  @override
  final Iterable<Type> types = const [ConsumerRestaurantsIdFoodsGet200ResponseData, _$ConsumerRestaurantsIdFoodsGet200ResponseData];

  @override
  final String wireName = r'ConsumerRestaurantsIdFoodsGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerRestaurantsIdFoodsGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalSize != null) {
      yield r'total_size';
      yield serializers.serialize(
        object.totalSize,
        specifiedType: const FullType(num),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(num),
      );
    }
    if (object.offset != null) {
      yield r'offset';
      yield serializers.serialize(
        object.offset,
        specifiedType: const FullType(num),
      );
    }
    if (object.foods != null) {
      yield r'foods';
      yield serializers.serialize(
        object.foods,
        specifiedType: const FullType(BuiltList, [FullType(ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerRestaurantsIdFoodsGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.totalSize = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.offset = valueDes;
          break;
        case r'foods':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner)]),
          ) as BuiltList<ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner>?;
          if (valueDes == null) continue;
          result.foods.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerRestaurantsIdFoodsGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder();
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



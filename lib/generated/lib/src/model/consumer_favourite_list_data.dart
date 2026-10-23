//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_favourite_restaurant_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/consumer_favourite_food_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_favourite_list_data.g.dart';

/// ConsumerFavouriteListData
///
/// Properties:
/// * [foods] 
/// * [restaurants] 
@BuiltValue()
abstract class ConsumerFavouriteListData implements Built<ConsumerFavouriteListData, ConsumerFavouriteListDataBuilder> {
  @BuiltValueField(wireName: r'foods')
  BuiltList<ConsumerFavouriteFoodItem> get foods;

  @BuiltValueField(wireName: r'restaurants')
  BuiltList<ConsumerFavouriteRestaurantItem> get restaurants;

  ConsumerFavouriteListData._();

  factory ConsumerFavouriteListData([void updates(ConsumerFavouriteListDataBuilder b)]) = _$ConsumerFavouriteListData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerFavouriteListDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerFavouriteListData> get serializer => _$ConsumerFavouriteListDataSerializer();
}

class _$ConsumerFavouriteListDataSerializer implements PrimitiveSerializer<ConsumerFavouriteListData> {
  @override
  final Iterable<Type> types = const [ConsumerFavouriteListData, _$ConsumerFavouriteListData];

  @override
  final String wireName = r'ConsumerFavouriteListData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerFavouriteListData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'foods';
    yield serializers.serialize(
      object.foods,
      specifiedType: const FullType(BuiltList, [FullType(ConsumerFavouriteFoodItem)]),
    );
    yield r'restaurants';
    yield serializers.serialize(
      object.restaurants,
      specifiedType: const FullType(BuiltList, [FullType(ConsumerFavouriteRestaurantItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerFavouriteListData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerFavouriteListDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'foods':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ConsumerFavouriteFoodItem)]),
          ) as BuiltList<ConsumerFavouriteFoodItem>;
          result.foods.replace(valueDes);
          break;
        case r'restaurants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ConsumerFavouriteRestaurantItem)]),
          ) as BuiltList<ConsumerFavouriteRestaurantItem>;
          result.restaurants.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerFavouriteListData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerFavouriteListDataBuilder();
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



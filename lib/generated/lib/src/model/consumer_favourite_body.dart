//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_favourite_body.g.dart';

/// Provide exactly one of food_id or restaurant_id
///
/// Properties:
/// * [foodId] 
/// * [restaurantId] 
@BuiltValue()
abstract class ConsumerFavouriteBody implements Built<ConsumerFavouriteBody, ConsumerFavouriteBodyBuilder> {
  @BuiltValueField(wireName: r'food_id')
  int? get foodId;

  @BuiltValueField(wireName: r'restaurant_id')
  int? get restaurantId;

  ConsumerFavouriteBody._();

  factory ConsumerFavouriteBody([void updates(ConsumerFavouriteBodyBuilder b)]) = _$ConsumerFavouriteBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerFavouriteBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerFavouriteBody> get serializer => _$ConsumerFavouriteBodySerializer();
}

class _$ConsumerFavouriteBodySerializer implements PrimitiveSerializer<ConsumerFavouriteBody> {
  @override
  final Iterable<Type> types = const [ConsumerFavouriteBody, _$ConsumerFavouriteBody];

  @override
  final String wireName = r'ConsumerFavouriteBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerFavouriteBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.foodId != null) {
      yield r'food_id';
      yield serializers.serialize(
        object.foodId,
        specifiedType: const FullType(int),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurant_id';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerFavouriteBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerFavouriteBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'food_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.foodId = valueDes;
          break;
        case r'restaurant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
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
  ConsumerFavouriteBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerFavouriteBodyBuilder();
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



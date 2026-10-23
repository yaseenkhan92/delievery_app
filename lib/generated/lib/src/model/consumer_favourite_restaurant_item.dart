//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_favourite_restaurant_item.g.dart';

/// ConsumerFavouriteRestaurantItem
///
/// Properties:
/// * [id] 
/// * [wishlistId] 
/// * [name] 
/// * [logo] 
/// * [coverPhoto] 
/// * [deliveryTime] 
/// * [minimumOrder] 
/// * [tax] 
/// * [rating] 
/// * [address] 
/// * [latitude] 
/// * [longitude] 
/// * [zoneId] 
/// * [foodsCount] 
/// * [distance] 
/// * [distanceText] 
/// * [isFavourite] 
@BuiltValue()
abstract class ConsumerFavouriteRestaurantItem implements Built<ConsumerFavouriteRestaurantItem, ConsumerFavouriteRestaurantItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'wishlist_id')
  String? get wishlistId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'logo')
  String? get logo;

  @BuiltValueField(wireName: r'cover_photo')
  String? get coverPhoto;

  @BuiltValueField(wireName: r'delivery_time')
  String? get deliveryTime;

  @BuiltValueField(wireName: r'minimum_order')
  num? get minimumOrder;

  @BuiltValueField(wireName: r'tax')
  num? get tax;

  @BuiltValueField(wireName: r'rating')
  num? get rating;

  @BuiltValueField(wireName: r'address')
  String? get address;

  @BuiltValueField(wireName: r'latitude')
  String? get latitude;

  @BuiltValueField(wireName: r'longitude')
  String? get longitude;

  @BuiltValueField(wireName: r'zone_id')
  String? get zoneId;

  @BuiltValueField(wireName: r'foods_count')
  int? get foodsCount;

  @BuiltValueField(wireName: r'distance')
  num? get distance;

  @BuiltValueField(wireName: r'distance_text')
  String? get distanceText;

  @BuiltValueField(wireName: r'is_favourite')
  bool? get isFavourite;

  ConsumerFavouriteRestaurantItem._();

  factory ConsumerFavouriteRestaurantItem([void updates(ConsumerFavouriteRestaurantItemBuilder b)]) = _$ConsumerFavouriteRestaurantItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerFavouriteRestaurantItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerFavouriteRestaurantItem> get serializer => _$ConsumerFavouriteRestaurantItemSerializer();
}

class _$ConsumerFavouriteRestaurantItemSerializer implements PrimitiveSerializer<ConsumerFavouriteRestaurantItem> {
  @override
  final Iterable<Type> types = const [ConsumerFavouriteRestaurantItem, _$ConsumerFavouriteRestaurantItem];

  @override
  final String wireName = r'ConsumerFavouriteRestaurantItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerFavouriteRestaurantItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.wishlistId != null) {
      yield r'wishlist_id';
      yield serializers.serialize(
        object.wishlistId,
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
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.coverPhoto != null) {
      yield r'cover_photo';
      yield serializers.serialize(
        object.coverPhoto,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deliveryTime != null) {
      yield r'delivery_time';
      yield serializers.serialize(
        object.deliveryTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.minimumOrder != null) {
      yield r'minimum_order';
      yield serializers.serialize(
        object.minimumOrder,
        specifiedType: const FullType(num),
      );
    }
    if (object.tax != null) {
      yield r'tax';
      yield serializers.serialize(
        object.tax,
        specifiedType: const FullType(num),
      );
    }
    if (object.rating != null) {
      yield r'rating';
      yield serializers.serialize(
        object.rating,
        specifiedType: const FullType(num),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.zoneId != null) {
      yield r'zone_id';
      yield serializers.serialize(
        object.zoneId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.foodsCount != null) {
      yield r'foods_count';
      yield serializers.serialize(
        object.foodsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.distance != null) {
      yield r'distance';
      yield serializers.serialize(
        object.distance,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.distanceText != null) {
      yield r'distance_text';
      yield serializers.serialize(
        object.distanceText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isFavourite != null) {
      yield r'is_favourite';
      yield serializers.serialize(
        object.isFavourite,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerFavouriteRestaurantItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerFavouriteRestaurantItemBuilder result,
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
        case r'wishlist_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.wishlistId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logo = valueDes;
          break;
        case r'cover_photo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.coverPhoto = valueDes;
          break;
        case r'delivery_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deliveryTime = valueDes;
          break;
        case r'minimum_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minimumOrder = valueDes;
          break;
        case r'tax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.tax = valueDes;
          break;
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.rating = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.longitude = valueDes;
          break;
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.zoneId = valueDes;
          break;
        case r'foods_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.foodsCount = valueDes;
          break;
        case r'distance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.distance = valueDes;
          break;
        case r'distance_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.distanceText = valueDes;
          break;
        case r'is_favourite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isFavourite = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerFavouriteRestaurantItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerFavouriteRestaurantItemBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_favourite_food_item.g.dart';

/// ConsumerFavouriteFoodItem
///
/// Properties:
/// * [id] 
/// * [wishlistId] 
/// * [name] 
/// * [description] 
/// * [image] 
/// * [categoryId] 
/// * [restaurantId] 
/// * [restaurantName] 
/// * [restaurantLogo] 
/// * [restaurantAddress] 
/// * [price] 
/// * [priceAfterDiscount] 
/// * [discount] 
/// * [discountType] 
/// * [avgRating] 
/// * [ratingCount] 
/// * [veg] 
/// * [status] 
/// * [isFavourite] 
/// * [variations] 
/// * [addOns] 
@BuiltValue()
abstract class ConsumerFavouriteFoodItem implements Built<ConsumerFavouriteFoodItem, ConsumerFavouriteFoodItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'wishlist_id')
  String? get wishlistId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'category_id')
  String? get categoryId;

  @BuiltValueField(wireName: r'restaurant_id')
  String? get restaurantId;

  @BuiltValueField(wireName: r'restaurant_name')
  String? get restaurantName;

  @BuiltValueField(wireName: r'restaurant_logo')
  String? get restaurantLogo;

  @BuiltValueField(wireName: r'restaurant_address')
  String? get restaurantAddress;

  @BuiltValueField(wireName: r'price')
  num? get price;

  @BuiltValueField(wireName: r'price_after_discount')
  num? get priceAfterDiscount;

  @BuiltValueField(wireName: r'discount')
  num? get discount;

  @BuiltValueField(wireName: r'discount_type')
  String? get discountType;

  @BuiltValueField(wireName: r'avg_rating')
  num? get avgRating;

  @BuiltValueField(wireName: r'rating_count')
  int? get ratingCount;

  @BuiltValueField(wireName: r'veg')
  bool? get veg;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'is_favourite')
  bool? get isFavourite;

  @BuiltValueField(wireName: r'variations')
  BuiltList<JsonObject>? get variations;

  @BuiltValueField(wireName: r'add_ons')
  BuiltList<JsonObject>? get addOns;

  ConsumerFavouriteFoodItem._();

  factory ConsumerFavouriteFoodItem([void updates(ConsumerFavouriteFoodItemBuilder b)]) = _$ConsumerFavouriteFoodItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerFavouriteFoodItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerFavouriteFoodItem> get serializer => _$ConsumerFavouriteFoodItemSerializer();
}

class _$ConsumerFavouriteFoodItemSerializer implements PrimitiveSerializer<ConsumerFavouriteFoodItem> {
  @override
  final Iterable<Type> types = const [ConsumerFavouriteFoodItem, _$ConsumerFavouriteFoodItem];

  @override
  final String wireName = r'ConsumerFavouriteFoodItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerFavouriteFoodItem object, {
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.categoryId != null) {
      yield r'category_id';
      yield serializers.serialize(
        object.categoryId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurant_id';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurantName != null) {
      yield r'restaurant_name';
      yield serializers.serialize(
        object.restaurantName,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurantLogo != null) {
      yield r'restaurant_logo';
      yield serializers.serialize(
        object.restaurantLogo,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.restaurantAddress != null) {
      yield r'restaurant_address';
      yield serializers.serialize(
        object.restaurantAddress,
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
    if (object.priceAfterDiscount != null) {
      yield r'price_after_discount';
      yield serializers.serialize(
        object.priceAfterDiscount,
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
    if (object.discountType != null) {
      yield r'discount_type';
      yield serializers.serialize(
        object.discountType,
        specifiedType: const FullType(String),
      );
    }
    if (object.avgRating != null) {
      yield r'avg_rating';
      yield serializers.serialize(
        object.avgRating,
        specifiedType: const FullType(num),
      );
    }
    if (object.ratingCount != null) {
      yield r'rating_count';
      yield serializers.serialize(
        object.ratingCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.veg != null) {
      yield r'veg';
      yield serializers.serialize(
        object.veg,
        specifiedType: const FullType(bool),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isFavourite != null) {
      yield r'is_favourite';
      yield serializers.serialize(
        object.isFavourite,
        specifiedType: const FullType(bool),
      );
    }
    if (object.variations != null) {
      yield r'variations';
      yield serializers.serialize(
        object.variations,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
    if (object.addOns != null) {
      yield r'add_ons';
      yield serializers.serialize(
        object.addOns,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerFavouriteFoodItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerFavouriteFoodItemBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'category_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.categoryId = valueDes;
          break;
        case r'restaurant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        case r'restaurant_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantName = valueDes;
          break;
        case r'restaurant_logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantLogo = valueDes;
          break;
        case r'restaurant_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantAddress = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        case r'price_after_discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.priceAfterDiscount = valueDes;
          break;
        case r'discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.discount = valueDes;
          break;
        case r'discount_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.discountType = valueDes;
          break;
        case r'avg_rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.avgRating = valueDes;
          break;
        case r'rating_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ratingCount = valueDes;
          break;
        case r'veg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.veg = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'is_favourite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isFavourite = valueDes;
          break;
        case r'variations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>?;
          if (valueDes == null) continue;
          result.variations.replace(valueDes);
          break;
        case r'add_ons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>?;
          if (valueDes == null) continue;
          result.addOns.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerFavouriteFoodItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerFavouriteFoodItemBuilder();
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



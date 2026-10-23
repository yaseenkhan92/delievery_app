//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_restaurants_specfic_id_get200_response_data.g.dart';

/// ConsumerRestaurantsSpecficIdGet200ResponseData
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [logo] 
/// * [coverPhoto] 
/// * [deliveryTime] 
/// * [minimumOrder] 
/// * [tax] 
/// * [rating] 
/// * [address] 
/// * [veg] 
/// * [nonVeg] 
/// * [active] 
/// * [latitude] 
/// * [longitude] 
@BuiltValue()
abstract class ConsumerRestaurantsSpecficIdGet200ResponseData implements Built<ConsumerRestaurantsSpecficIdGet200ResponseData, ConsumerRestaurantsSpecficIdGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

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

  @BuiltValueField(wireName: r'veg')
  bool? get veg;

  @BuiltValueField(wireName: r'non_veg')
  bool? get nonVeg;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  @BuiltValueField(wireName: r'latitude')
  String? get latitude;

  @BuiltValueField(wireName: r'longitude')
  String? get longitude;

  ConsumerRestaurantsSpecficIdGet200ResponseData._();

  factory ConsumerRestaurantsSpecficIdGet200ResponseData([void updates(ConsumerRestaurantsSpecficIdGet200ResponseDataBuilder b)]) = _$ConsumerRestaurantsSpecficIdGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerRestaurantsSpecficIdGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerRestaurantsSpecficIdGet200ResponseData> get serializer => _$ConsumerRestaurantsSpecficIdGet200ResponseDataSerializer();
}

class _$ConsumerRestaurantsSpecficIdGet200ResponseDataSerializer implements PrimitiveSerializer<ConsumerRestaurantsSpecficIdGet200ResponseData> {
  @override
  final Iterable<Type> types = const [ConsumerRestaurantsSpecficIdGet200ResponseData, _$ConsumerRestaurantsSpecficIdGet200ResponseData];

  @override
  final String wireName = r'ConsumerRestaurantsSpecficIdGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerRestaurantsSpecficIdGet200ResponseData object, {
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
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType(String),
      );
    }
    if (object.coverPhoto != null) {
      yield r'cover_photo';
      yield serializers.serialize(
        object.coverPhoto,
        specifiedType: const FullType(String),
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
        specifiedType: const FullType(String),
      );
    }
    if (object.veg != null) {
      yield r'veg';
      yield serializers.serialize(
        object.veg,
        specifiedType: const FullType(bool),
      );
    }
    if (object.nonVeg != null) {
      yield r'non_veg';
      yield serializers.serialize(
        object.nonVeg,
        specifiedType: const FullType(bool),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType(String),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerRestaurantsSpecficIdGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerRestaurantsSpecficIdGet200ResponseDataBuilder result,
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
        case r'veg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.veg = valueDes;
          break;
        case r'non_veg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.nonVeg = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.active = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerRestaurantsSpecficIdGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerRestaurantsSpecficIdGet200ResponseDataBuilder();
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



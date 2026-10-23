//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/place_order_request_latitude.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_address_body.g.dart';

/// ConsumerAddressBody
///
/// Properties:
/// * [contactPersonName] 
/// * [addressType] 
/// * [contactPersonNumber] 
/// * [address] 
/// * [latitude] 
/// * [longitude] 
/// * [floor] 
/// * [road] 
/// * [house] 
/// * [zoneId] - Recommended: first id from JSON.parse(zone_id) after GET /consumer/config/zone-id; must match pin lat/lng
@BuiltValue()
abstract class ConsumerAddressBody implements Built<ConsumerAddressBody, ConsumerAddressBodyBuilder> {
  @BuiltValueField(wireName: r'contact_person_name')
  String get contactPersonName;

  @BuiltValueField(wireName: r'address_type')
  String get addressType;

  @BuiltValueField(wireName: r'contact_person_number')
  String get contactPersonNumber;

  @BuiltValueField(wireName: r'address')
  String get address;

  @BuiltValueField(wireName: r'latitude')
  PlaceOrderRequestLatitude get latitude;

  @BuiltValueField(wireName: r'longitude')
  PlaceOrderRequestLatitude get longitude;

  @BuiltValueField(wireName: r'floor')
  String? get floor;

  @BuiltValueField(wireName: r'road')
  String? get road;

  @BuiltValueField(wireName: r'house')
  String? get house;

  /// Recommended: first id from JSON.parse(zone_id) after GET /consumer/config/zone-id; must match pin lat/lng
  @BuiltValueField(wireName: r'zone_id')
  num? get zoneId;

  ConsumerAddressBody._();

  factory ConsumerAddressBody([void updates(ConsumerAddressBodyBuilder b)]) = _$ConsumerAddressBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerAddressBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerAddressBody> get serializer => _$ConsumerAddressBodySerializer();
}

class _$ConsumerAddressBodySerializer implements PrimitiveSerializer<ConsumerAddressBody> {
  @override
  final Iterable<Type> types = const [ConsumerAddressBody, _$ConsumerAddressBody];

  @override
  final String wireName = r'ConsumerAddressBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerAddressBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'contact_person_name';
    yield serializers.serialize(
      object.contactPersonName,
      specifiedType: const FullType(String),
    );
    yield r'address_type';
    yield serializers.serialize(
      object.addressType,
      specifiedType: const FullType(String),
    );
    yield r'contact_person_number';
    yield serializers.serialize(
      object.contactPersonNumber,
      specifiedType: const FullType(String),
    );
    yield r'address';
    yield serializers.serialize(
      object.address,
      specifiedType: const FullType(String),
    );
    yield r'latitude';
    yield serializers.serialize(
      object.latitude,
      specifiedType: const FullType(PlaceOrderRequestLatitude),
    );
    yield r'longitude';
    yield serializers.serialize(
      object.longitude,
      specifiedType: const FullType(PlaceOrderRequestLatitude),
    );
    if (object.floor != null) {
      yield r'floor';
      yield serializers.serialize(
        object.floor,
        specifiedType: const FullType(String),
      );
    }
    if (object.road != null) {
      yield r'road';
      yield serializers.serialize(
        object.road,
        specifiedType: const FullType(String),
      );
    }
    if (object.house != null) {
      yield r'house';
      yield serializers.serialize(
        object.house,
        specifiedType: const FullType(String),
      );
    }
    if (object.zoneId != null) {
      yield r'zone_id';
      yield serializers.serialize(
        object.zoneId,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerAddressBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerAddressBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contact_person_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactPersonName = valueDes;
          break;
        case r'address_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addressType = valueDes;
          break;
        case r'contact_person_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactPersonNumber = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlaceOrderRequestLatitude),
          ) as PlaceOrderRequestLatitude;
          result.latitude.replace(valueDes);
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlaceOrderRequestLatitude),
          ) as PlaceOrderRequestLatitude;
          result.longitude.replace(valueDes);
          break;
        case r'floor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.floor = valueDes;
          break;
        case r'road':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.road = valueDes;
          break;
        case r'house':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.house = valueDes;
          break;
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.zoneId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerAddressBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerAddressBodyBuilder();
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



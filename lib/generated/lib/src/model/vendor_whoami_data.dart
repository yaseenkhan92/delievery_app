//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/vendor_profile_data.dart';
import 'package:openapi/src/model/vendor_whoami_restaurant.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_whoami_data.g.dart';

/// VendorWhoamiData
///
/// Properties:
/// * [vendor] 
/// * [restaurant] 
/// * [restaurants] 
@BuiltValue()
abstract class VendorWhoamiData implements Built<VendorWhoamiData, VendorWhoamiDataBuilder> {
  @BuiltValueField(wireName: r'vendor')
  VendorProfileData? get vendor;

  @BuiltValueField(wireName: r'restaurant')
  VendorWhoamiRestaurant? get restaurant;

  @BuiltValueField(wireName: r'restaurants')
  BuiltList<VendorWhoamiRestaurant>? get restaurants;

  VendorWhoamiData._();

  factory VendorWhoamiData([void updates(VendorWhoamiDataBuilder b)]) = _$VendorWhoamiData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorWhoamiDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorWhoamiData> get serializer => _$VendorWhoamiDataSerializer();
}

class _$VendorWhoamiDataSerializer implements PrimitiveSerializer<VendorWhoamiData> {
  @override
  final Iterable<Type> types = const [VendorWhoamiData, _$VendorWhoamiData];

  @override
  final String wireName = r'VendorWhoamiData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorWhoamiData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.vendor != null) {
      yield r'vendor';
      yield serializers.serialize(
        object.vendor,
        specifiedType: const FullType(VendorProfileData),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType.nullable(VendorWhoamiRestaurant),
      );
    }
    if (object.restaurants != null) {
      yield r'restaurants';
      yield serializers.serialize(
        object.restaurants,
        specifiedType: const FullType(BuiltList, [FullType(VendorWhoamiRestaurant)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorWhoamiData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorWhoamiDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'vendor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorProfileData),
          ) as VendorProfileData?;
          if (valueDes == null) continue;
          result.vendor.replace(valueDes);
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorWhoamiRestaurant),
          ) as VendorWhoamiRestaurant?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        case r'restaurants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(VendorWhoamiRestaurant)]),
          ) as BuiltList<VendorWhoamiRestaurant>?;
          if (valueDes == null) continue;
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
  VendorWhoamiData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorWhoamiDataBuilder();
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



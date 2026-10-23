//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_active_status_response_data.g.dart';

/// VendorRestaurantActiveStatusResponseData
///
/// Properties:
/// * [active] 
@BuiltValue()
abstract class VendorRestaurantActiveStatusResponseData implements Built<VendorRestaurantActiveStatusResponseData, VendorRestaurantActiveStatusResponseDataBuilder> {
  @BuiltValueField(wireName: r'active')
  bool? get active;

  VendorRestaurantActiveStatusResponseData._();

  factory VendorRestaurantActiveStatusResponseData([void updates(VendorRestaurantActiveStatusResponseDataBuilder b)]) = _$VendorRestaurantActiveStatusResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantActiveStatusResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantActiveStatusResponseData> get serializer => _$VendorRestaurantActiveStatusResponseDataSerializer();
}

class _$VendorRestaurantActiveStatusResponseDataSerializer implements PrimitiveSerializer<VendorRestaurantActiveStatusResponseData> {
  @override
  final Iterable<Type> types = const [VendorRestaurantActiveStatusResponseData, _$VendorRestaurantActiveStatusResponseData];

  @override
  final String wireName = r'VendorRestaurantActiveStatusResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantActiveStatusResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantActiveStatusResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantActiveStatusResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantActiveStatusResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantActiveStatusResponseDataBuilder();
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



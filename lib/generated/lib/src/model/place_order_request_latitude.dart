//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'place_order_request_latitude.g.dart';

/// PlaceOrderRequestLatitude
@BuiltValue()
abstract class PlaceOrderRequestLatitude implements Built<PlaceOrderRequestLatitude, PlaceOrderRequestLatitudeBuilder> {
  /// One Of [String], [num]
  OneOf get oneOf;

  PlaceOrderRequestLatitude._();

  factory PlaceOrderRequestLatitude([void updates(PlaceOrderRequestLatitudeBuilder b)]) = _$PlaceOrderRequestLatitude;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceOrderRequestLatitudeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceOrderRequestLatitude> get serializer => _$PlaceOrderRequestLatitudeSerializer();
}

class _$PlaceOrderRequestLatitudeSerializer implements PrimitiveSerializer<PlaceOrderRequestLatitude> {
  @override
  final Iterable<Type> types = const [PlaceOrderRequestLatitude, _$PlaceOrderRequestLatitude];

  @override
  final String wireName = r'PlaceOrderRequestLatitude';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceOrderRequestLatitude object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceOrderRequestLatitude object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PlaceOrderRequestLatitude deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceOrderRequestLatitudeBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(num), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}



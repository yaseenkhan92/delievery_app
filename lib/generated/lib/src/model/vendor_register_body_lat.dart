//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'vendor_register_body_lat.g.dart';

/// VendorRegisterBodyLat
@BuiltValue()
abstract class VendorRegisterBodyLat implements Built<VendorRegisterBodyLat, VendorRegisterBodyLatBuilder> {
  /// One Of [String], [num]
  OneOf get oneOf;

  VendorRegisterBodyLat._();

  factory VendorRegisterBodyLat([void updates(VendorRegisterBodyLatBuilder b)]) = _$VendorRegisterBodyLat;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRegisterBodyLatBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRegisterBodyLat> get serializer => _$VendorRegisterBodyLatSerializer();
}

class _$VendorRegisterBodyLatSerializer implements PrimitiveSerializer<VendorRegisterBodyLat> {
  @override
  final Iterable<Type> types = const [VendorRegisterBodyLat, _$VendorRegisterBodyLat];

  @override
  final String wireName = r'VendorRegisterBodyLat';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRegisterBodyLat object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRegisterBodyLat object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  VendorRegisterBodyLat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRegisterBodyLatBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(num), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}



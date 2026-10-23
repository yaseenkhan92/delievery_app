//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'vendor_register_body_lng.g.dart';

/// VendorRegisterBodyLng
@BuiltValue()
abstract class VendorRegisterBodyLng implements Built<VendorRegisterBodyLng, VendorRegisterBodyLngBuilder> {
  /// One Of [String], [num]
  OneOf get oneOf;

  VendorRegisterBodyLng._();

  factory VendorRegisterBodyLng([void updates(VendorRegisterBodyLngBuilder b)]) = _$VendorRegisterBodyLng;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRegisterBodyLngBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRegisterBodyLng> get serializer => _$VendorRegisterBodyLngSerializer();
}

class _$VendorRegisterBodyLngSerializer implements PrimitiveSerializer<VendorRegisterBodyLng> {
  @override
  final Iterable<Type> types = const [VendorRegisterBodyLng, _$VendorRegisterBodyLng];

  @override
  final String wireName = r'VendorRegisterBodyLng';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRegisterBodyLng object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRegisterBodyLng object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  VendorRegisterBodyLng deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRegisterBodyLngBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(num), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}



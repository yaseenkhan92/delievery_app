//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'delivery_man_register_body_identity_image.g.dart';

/// Step 2 — ID document path(s) (POST /upload category=identity). String or array of 1–2 paths.
@BuiltValue()
abstract class DeliveryManRegisterBodyIdentityImage implements Built<DeliveryManRegisterBodyIdentityImage, DeliveryManRegisterBodyIdentityImageBuilder> {
  /// One Of [BuiltList<String>], [String]
  OneOf get oneOf;

  DeliveryManRegisterBodyIdentityImage._();

  factory DeliveryManRegisterBodyIdentityImage([void updates(DeliveryManRegisterBodyIdentityImageBuilder b)]) = _$DeliveryManRegisterBodyIdentityImage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManRegisterBodyIdentityImageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManRegisterBodyIdentityImage> get serializer => _$DeliveryManRegisterBodyIdentityImageSerializer();
}

class _$DeliveryManRegisterBodyIdentityImageSerializer implements PrimitiveSerializer<DeliveryManRegisterBodyIdentityImage> {
  @override
  final Iterable<Type> types = const [DeliveryManRegisterBodyIdentityImage, _$DeliveryManRegisterBodyIdentityImage];

  @override
  final String wireName = r'DeliveryManRegisterBodyIdentityImage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManRegisterBodyIdentityImage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManRegisterBodyIdentityImage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  DeliveryManRegisterBodyIdentityImage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManRegisterBodyIdentityImageBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(BuiltList, [FullType(String)]), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}



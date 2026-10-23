//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'consumer_order_cancel_body_order_id.g.dart';

/// ConsumerOrderCancelBodyOrderId
@BuiltValue()
abstract class ConsumerOrderCancelBodyOrderId
    implements
        Built<ConsumerOrderCancelBodyOrderId,
            ConsumerOrderCancelBodyOrderIdBuilder> {
  /// One Of [String], [int]
  OneOf get oneOf;

  ConsumerOrderCancelBodyOrderId._();

  factory ConsumerOrderCancelBodyOrderId(
          [void updates(ConsumerOrderCancelBodyOrderIdBuilder b)]) =
      _$ConsumerOrderCancelBodyOrderId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerOrderCancelBodyOrderIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerOrderCancelBodyOrderId> get serializer =>
      _$ConsumerOrderCancelBodyOrderIdSerializer();
}

class _$ConsumerOrderCancelBodyOrderIdSerializer
    implements PrimitiveSerializer<ConsumerOrderCancelBodyOrderId> {
  @override
  final Iterable<Type> types = const [
    ConsumerOrderCancelBodyOrderId,
    _$ConsumerOrderCancelBodyOrderId
  ];

  @override
  final String wireName = r'ConsumerOrderCancelBodyOrderId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerOrderCancelBodyOrderId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ConsumerOrderCancelBodyOrderId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ConsumerOrderCancelBodyOrderId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerOrderCancelBodyOrderIdBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(String),
      FullType(int),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'consumer_restaurants_popular_get_zone_id_parameter.g.dart';

/// ConsumerRestaurantsPopularGetZoneIdParameter
@BuiltValue()
abstract class ConsumerRestaurantsPopularGetZoneIdParameter implements Built<ConsumerRestaurantsPopularGetZoneIdParameter, ConsumerRestaurantsPopularGetZoneIdParameterBuilder> {
  /// One Of [String], [int]
  OneOf get oneOf;

  ConsumerRestaurantsPopularGetZoneIdParameter._();

  factory ConsumerRestaurantsPopularGetZoneIdParameter([void updates(ConsumerRestaurantsPopularGetZoneIdParameterBuilder b)]) = _$ConsumerRestaurantsPopularGetZoneIdParameter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerRestaurantsPopularGetZoneIdParameterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerRestaurantsPopularGetZoneIdParameter> get serializer => _$ConsumerRestaurantsPopularGetZoneIdParameterSerializer();
}

class _$ConsumerRestaurantsPopularGetZoneIdParameterSerializer implements PrimitiveSerializer<ConsumerRestaurantsPopularGetZoneIdParameter> {
  @override
  final Iterable<Type> types = const [ConsumerRestaurantsPopularGetZoneIdParameter, _$ConsumerRestaurantsPopularGetZoneIdParameter];

  @override
  final String wireName = r'ConsumerRestaurantsPopularGetZoneIdParameter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerRestaurantsPopularGetZoneIdParameter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerRestaurantsPopularGetZoneIdParameter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ConsumerRestaurantsPopularGetZoneIdParameter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerRestaurantsPopularGetZoneIdParameterBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(int), FullType(String), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}



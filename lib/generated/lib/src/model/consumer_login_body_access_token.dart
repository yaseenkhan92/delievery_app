//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'consumer_login_body_access_token.g.dart';

/// Set to 1 or true if token is OAuth access token (not id token)
@BuiltValue()
abstract class ConsumerLoginBodyAccessToken implements Built<ConsumerLoginBodyAccessToken, ConsumerLoginBodyAccessTokenBuilder> {
  /// One Of [bool], [int]
  OneOf get oneOf;

  ConsumerLoginBodyAccessToken._();

  factory ConsumerLoginBodyAccessToken([void updates(ConsumerLoginBodyAccessTokenBuilder b)]) = _$ConsumerLoginBodyAccessToken;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerLoginBodyAccessTokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerLoginBodyAccessToken> get serializer => _$ConsumerLoginBodyAccessTokenSerializer();
}

class _$ConsumerLoginBodyAccessTokenSerializer implements PrimitiveSerializer<ConsumerLoginBodyAccessToken> {
  @override
  final Iterable<Type> types = const [ConsumerLoginBodyAccessToken, _$ConsumerLoginBodyAccessToken];

  @override
  final String wireName = r'ConsumerLoginBodyAccessToken';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerLoginBodyAccessToken object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerLoginBodyAccessToken object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ConsumerLoginBodyAccessToken deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerLoginBodyAccessTokenBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(int), FullType(bool), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}



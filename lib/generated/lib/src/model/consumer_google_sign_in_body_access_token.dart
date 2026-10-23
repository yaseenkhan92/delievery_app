//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'consumer_google_sign_in_body_access_token.g.dart';

/// Set to 1 or true when token is an OAuth access token
@BuiltValue()
abstract class ConsumerGoogleSignInBodyAccessToken implements Built<ConsumerGoogleSignInBodyAccessToken, ConsumerGoogleSignInBodyAccessTokenBuilder> {
  /// One Of [bool], [int]
  OneOf get oneOf;

  ConsumerGoogleSignInBodyAccessToken._();

  factory ConsumerGoogleSignInBodyAccessToken([void updates(ConsumerGoogleSignInBodyAccessTokenBuilder b)]) = _$ConsumerGoogleSignInBodyAccessToken;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerGoogleSignInBodyAccessTokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerGoogleSignInBodyAccessToken> get serializer => _$ConsumerGoogleSignInBodyAccessTokenSerializer();
}

class _$ConsumerGoogleSignInBodyAccessTokenSerializer implements PrimitiveSerializer<ConsumerGoogleSignInBodyAccessToken> {
  @override
  final Iterable<Type> types = const [ConsumerGoogleSignInBodyAccessToken, _$ConsumerGoogleSignInBodyAccessToken];

  @override
  final String wireName = r'ConsumerGoogleSignInBodyAccessToken';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerGoogleSignInBodyAccessToken object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerGoogleSignInBodyAccessToken object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ConsumerGoogleSignInBodyAccessToken deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerGoogleSignInBodyAccessTokenBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(int), FullType(bool), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}



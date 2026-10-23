//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/legal_page_response.dart';
import 'package:openapi/src/model/legal_page_document.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'pages_slug_get200_response.g.dart';

/// PagesSlugGet200Response
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class PagesSlugGet200Response implements Built<PagesSlugGet200Response, PagesSlugGet200ResponseBuilder> {
  /// One Of [LegalPageResponse], [String]
  OneOf get oneOf;

  PagesSlugGet200Response._();

  factory PagesSlugGet200Response([void updates(PagesSlugGet200ResponseBuilder b)]) = _$PagesSlugGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PagesSlugGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PagesSlugGet200Response> get serializer => _$PagesSlugGet200ResponseSerializer();
}

class _$PagesSlugGet200ResponseSerializer implements PrimitiveSerializer<PagesSlugGet200Response> {
  @override
  final Iterable<Type> types = const [PagesSlugGet200Response, _$PagesSlugGet200Response];

  @override
  final String wireName = r'PagesSlugGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PagesSlugGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PagesSlugGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PagesSlugGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PagesSlugGet200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(LegalPageResponse), FullType(String), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}



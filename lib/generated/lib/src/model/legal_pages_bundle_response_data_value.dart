//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'legal_pages_bundle_response_data_value.g.dart';

/// LegalPagesBundleResponseDataValue
///
/// Properties:
/// * [title] 
/// * [content] 
/// * [active] 
@BuiltValue()
abstract class LegalPagesBundleResponseDataValue implements Built<LegalPagesBundleResponseDataValue, LegalPagesBundleResponseDataValueBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'content')
  String? get content;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  LegalPagesBundleResponseDataValue._();

  factory LegalPagesBundleResponseDataValue([void updates(LegalPagesBundleResponseDataValueBuilder b)]) = _$LegalPagesBundleResponseDataValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LegalPagesBundleResponseDataValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LegalPagesBundleResponseDataValue> get serializer => _$LegalPagesBundleResponseDataValueSerializer();
}

class _$LegalPagesBundleResponseDataValueSerializer implements PrimitiveSerializer<LegalPagesBundleResponseDataValue> {
  @override
  final Iterable<Type> types = const [LegalPagesBundleResponseDataValue, _$LegalPagesBundleResponseDataValue];

  @override
  final String wireName = r'LegalPagesBundleResponseDataValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LegalPagesBundleResponseDataValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      );
    }
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
    LegalPagesBundleResponseDataValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LegalPagesBundleResponseDataValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.content = valueDes;
          break;
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
  LegalPagesBundleResponseDataValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LegalPagesBundleResponseDataValueBuilder();
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



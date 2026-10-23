//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'legal_page_document.g.dart';

/// LegalPageDocument
///
/// Properties:
/// * [key] 
/// * [title] 
/// * [content] - HTML from admin Pages
/// * [active] - Policy pages: from refund_policy_status etc.
@BuiltValue()
abstract class LegalPageDocument implements Built<LegalPageDocument, LegalPageDocumentBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'title')
  String? get title;

  /// HTML from admin Pages
  @BuiltValueField(wireName: r'content')
  String? get content;

  /// Policy pages: from refund_policy_status etc.
  @BuiltValueField(wireName: r'active')
  bool? get active;

  LegalPageDocument._();

  factory LegalPageDocument([void updates(LegalPageDocumentBuilder b)]) = _$LegalPageDocument;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LegalPageDocumentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LegalPageDocument> get serializer => _$LegalPageDocumentSerializer();
}

class _$LegalPageDocumentSerializer implements PrimitiveSerializer<LegalPageDocument> {
  @override
  final Iterable<Type> types = const [LegalPageDocument, _$LegalPageDocument];

  @override
  final String wireName = r'LegalPageDocument';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LegalPageDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
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
    LegalPageDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LegalPageDocumentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
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
  LegalPageDocument deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LegalPageDocumentBuilder();
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



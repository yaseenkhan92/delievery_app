//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_validation_error_response_errors_inner.g.dart';

/// ChatValidationErrorResponseErrorsInner
///
/// Properties:
/// * [code] 
/// * [message] 
@BuiltValue()
abstract class ChatValidationErrorResponseErrorsInner implements Built<ChatValidationErrorResponseErrorsInner, ChatValidationErrorResponseErrorsInnerBuilder> {
  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ChatValidationErrorResponseErrorsInner._();

  factory ChatValidationErrorResponseErrorsInner([void updates(ChatValidationErrorResponseErrorsInnerBuilder b)]) = _$ChatValidationErrorResponseErrorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatValidationErrorResponseErrorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatValidationErrorResponseErrorsInner> get serializer => _$ChatValidationErrorResponseErrorsInnerSerializer();
}

class _$ChatValidationErrorResponseErrorsInnerSerializer implements PrimitiveSerializer<ChatValidationErrorResponseErrorsInner> {
  @override
  final Iterable<Type> types = const [ChatValidationErrorResponseErrorsInner, _$ChatValidationErrorResponseErrorsInner];

  @override
  final String wireName = r'ChatValidationErrorResponseErrorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatValidationErrorResponseErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatValidationErrorResponseErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatValidationErrorResponseErrorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatValidationErrorResponseErrorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatValidationErrorResponseErrorsInnerBuilder();
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



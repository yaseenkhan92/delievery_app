//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/chat_validation_error_response_errors_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_validation_error_response.g.dart';

/// ChatValidationErrorResponse
///
/// Properties:
/// * [errors] 
@BuiltValue()
abstract class ChatValidationErrorResponse implements Built<ChatValidationErrorResponse, ChatValidationErrorResponseBuilder> {
  @BuiltValueField(wireName: r'errors')
  BuiltList<ChatValidationErrorResponseErrorsInner> get errors;

  ChatValidationErrorResponse._();

  factory ChatValidationErrorResponse([void updates(ChatValidationErrorResponseBuilder b)]) = _$ChatValidationErrorResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatValidationErrorResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatValidationErrorResponse> get serializer => _$ChatValidationErrorResponseSerializer();
}

class _$ChatValidationErrorResponseSerializer implements PrimitiveSerializer<ChatValidationErrorResponse> {
  @override
  final Iterable<Type> types = const [ChatValidationErrorResponse, _$ChatValidationErrorResponse];

  @override
  final String wireName = r'ChatValidationErrorResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatValidationErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(BuiltList, [FullType(ChatValidationErrorResponseErrorsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatValidationErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatValidationErrorResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChatValidationErrorResponseErrorsInner)]),
          ) as BuiltList<ChatValidationErrorResponseErrorsInner>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatValidationErrorResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatValidationErrorResponseBuilder();
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



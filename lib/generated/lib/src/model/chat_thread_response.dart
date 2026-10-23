//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/chat_message.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/chat_conversation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_thread_response.g.dart';

/// ChatThreadResponse
///
/// Properties:
/// * [totalSize] 
/// * [limit] 
/// * [offset] 
/// * [status] - true when an active order links the parties
/// * [messages] 
/// * [conversation] 
@BuiltValue()
abstract class ChatThreadResponse implements Built<ChatThreadResponse, ChatThreadResponseBuilder> {
  @BuiltValueField(wireName: r'total_size')
  int? get totalSize;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'offset')
  int? get offset;

  /// true when an active order links the parties
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'messages')
  BuiltList<ChatMessage>? get messages;

  @BuiltValueField(wireName: r'conversation')
  ChatConversation? get conversation;

  ChatThreadResponse._();

  factory ChatThreadResponse([void updates(ChatThreadResponseBuilder b)]) = _$ChatThreadResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatThreadResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatThreadResponse> get serializer => _$ChatThreadResponseSerializer();
}

class _$ChatThreadResponseSerializer implements PrimitiveSerializer<ChatThreadResponse> {
  @override
  final Iterable<Type> types = const [ChatThreadResponse, _$ChatThreadResponse];

  @override
  final String wireName = r'ChatThreadResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatThreadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalSize != null) {
      yield r'total_size';
      yield serializers.serialize(
        object.totalSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.offset != null) {
      yield r'offset';
      yield serializers.serialize(
        object.offset,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.messages != null) {
      yield r'messages';
      yield serializers.serialize(
        object.messages,
        specifiedType: const FullType(BuiltList, [FullType(ChatMessage)]),
      );
    }
    if (object.conversation != null) {
      yield r'conversation';
      yield serializers.serialize(
        object.conversation,
        specifiedType: const FullType(ChatConversation),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatThreadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatThreadResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalSize = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.offset = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ChatMessage)]),
          ) as BuiltList<ChatMessage>?;
          if (valueDes == null) continue;
          result.messages.replace(valueDes);
          break;
        case r'conversation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChatConversation),
          ) as ChatConversation?;
          if (valueDes == null) continue;
          result.conversation.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatThreadResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatThreadResponseBuilder();
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



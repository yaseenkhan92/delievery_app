//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/chat_message.dart';
import 'package:openapi/src/model/chat_user_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_conversation.g.dart';

/// ChatConversation
///
/// Properties:
/// * [id] 
/// * [senderId] 
/// * [receiverId] 
/// * [senderType] 
/// * [receiverType] 
/// * [lastMessageId] 
/// * [lastMessageTime] 
/// * [unreadMessageCount] 
/// * [sender] 
/// * [receiver] 
/// * [lastMessage] 
@BuiltValue()
abstract class ChatConversation implements Built<ChatConversation, ChatConversationBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'sender_id')
  int? get senderId;

  @BuiltValueField(wireName: r'receiver_id')
  int? get receiverId;

  @BuiltValueField(wireName: r'sender_type')
  String? get senderType;

  @BuiltValueField(wireName: r'receiver_type')
  String? get receiverType;

  @BuiltValueField(wireName: r'last_message_id')
  int? get lastMessageId;

  @BuiltValueField(wireName: r'last_message_time')
  DateTime? get lastMessageTime;

  @BuiltValueField(wireName: r'unread_message_count')
  int? get unreadMessageCount;

  @BuiltValueField(wireName: r'sender')
  ChatUserInfo? get sender;

  @BuiltValueField(wireName: r'receiver')
  ChatUserInfo? get receiver;

  @BuiltValueField(wireName: r'last_message')
  ChatMessage? get lastMessage;

  ChatConversation._();

  factory ChatConversation([void updates(ChatConversationBuilder b)]) = _$ChatConversation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatConversationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatConversation> get serializer => _$ChatConversationSerializer();
}

class _$ChatConversationSerializer implements PrimitiveSerializer<ChatConversation> {
  @override
  final Iterable<Type> types = const [ChatConversation, _$ChatConversation];

  @override
  final String wireName = r'ChatConversation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatConversation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.senderId != null) {
      yield r'sender_id';
      yield serializers.serialize(
        object.senderId,
        specifiedType: const FullType(int),
      );
    }
    if (object.receiverId != null) {
      yield r'receiver_id';
      yield serializers.serialize(
        object.receiverId,
        specifiedType: const FullType(int),
      );
    }
    if (object.senderType != null) {
      yield r'sender_type';
      yield serializers.serialize(
        object.senderType,
        specifiedType: const FullType(String),
      );
    }
    if (object.receiverType != null) {
      yield r'receiver_type';
      yield serializers.serialize(
        object.receiverType,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastMessageId != null) {
      yield r'last_message_id';
      yield serializers.serialize(
        object.lastMessageId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lastMessageTime != null) {
      yield r'last_message_time';
      yield serializers.serialize(
        object.lastMessageTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.unreadMessageCount != null) {
      yield r'unread_message_count';
      yield serializers.serialize(
        object.unreadMessageCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.sender != null) {
      yield r'sender';
      yield serializers.serialize(
        object.sender,
        specifiedType: const FullType(ChatUserInfo),
      );
    }
    if (object.receiver != null) {
      yield r'receiver';
      yield serializers.serialize(
        object.receiver,
        specifiedType: const FullType(ChatUserInfo),
      );
    }
    if (object.lastMessage != null) {
      yield r'last_message';
      yield serializers.serialize(
        object.lastMessage,
        specifiedType: const FullType(ChatMessage),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatConversation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatConversationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'sender_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.senderId = valueDes;
          break;
        case r'receiver_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.receiverId = valueDes;
          break;
        case r'sender_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.senderType = valueDes;
          break;
        case r'receiver_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.receiverType = valueDes;
          break;
        case r'last_message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastMessageId = valueDes;
          break;
        case r'last_message_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastMessageTime = valueDes;
          break;
        case r'unread_message_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.unreadMessageCount = valueDes;
          break;
        case r'sender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChatUserInfo),
          ) as ChatUserInfo?;
          if (valueDes == null) continue;
          result.sender.replace(valueDes);
          break;
        case r'receiver':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChatUserInfo),
          ) as ChatUserInfo?;
          if (valueDes == null) continue;
          result.receiver.replace(valueDes);
          break;
        case r'last_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChatMessage),
          ) as ChatMessage?;
          if (valueDes == null) continue;
          result.lastMessage.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatConversation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatConversationBuilder();
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



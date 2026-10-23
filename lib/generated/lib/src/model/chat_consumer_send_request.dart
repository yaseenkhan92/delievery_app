//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_consumer_send_request.g.dart';

/// Provide either conversation_id (existing thread) OR receiver_type + receiver_id (new thread). Pagination fields echo PHP send response paging.
///
/// Properties:
/// * [conversationId] - Existing thread id
/// * [receiverType] 
/// * [receiverId] - vendors.id or delivery_men.id (not user_infos id)
/// * [message] 
/// * [file] - Optional JSON string for images (from chat-image upload)
/// * [limit] 
/// * [offset] 
@BuiltValue()
abstract class ChatConsumerSendRequest implements Built<ChatConsumerSendRequest, ChatConsumerSendRequestBuilder> {
  /// Existing thread id
  @BuiltValueField(wireName: r'conversation_id')
  int? get conversationId;

  @BuiltValueField(wireName: r'receiver_type')
  ChatConsumerSendRequestReceiverTypeEnum? get receiverType;
  // enum receiverTypeEnum {  vendor,  delivery_man,  admin,  };

  /// vendors.id or delivery_men.id (not user_infos id)
  @BuiltValueField(wireName: r'receiver_id')
  int? get receiverId;

  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Optional JSON string for images (from chat-image upload)
  @BuiltValueField(wireName: r'file')
  String? get file;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'offset')
  int? get offset;

  ChatConsumerSendRequest._();

  factory ChatConsumerSendRequest([void updates(ChatConsumerSendRequestBuilder b)]) = _$ChatConsumerSendRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatConsumerSendRequestBuilder b) => b
      ..limit = 10
      ..offset = 1;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatConsumerSendRequest> get serializer => _$ChatConsumerSendRequestSerializer();
}

class _$ChatConsumerSendRequestSerializer implements PrimitiveSerializer<ChatConsumerSendRequest> {
  @override
  final Iterable<Type> types = const [ChatConsumerSendRequest, _$ChatConsumerSendRequest];

  @override
  final String wireName = r'ChatConsumerSendRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatConsumerSendRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conversationId != null) {
      yield r'conversation_id';
      yield serializers.serialize(
        object.conversationId,
        specifiedType: const FullType(int),
      );
    }
    if (object.receiverType != null) {
      yield r'receiver_type';
      yield serializers.serialize(
        object.receiverType,
        specifiedType: const FullType(ChatConsumerSendRequestReceiverTypeEnum),
      );
    }
    if (object.receiverId != null) {
      yield r'receiver_id';
      yield serializers.serialize(
        object.receiverId,
        specifiedType: const FullType(int),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.file != null) {
      yield r'file';
      yield serializers.serialize(
        object.file,
        specifiedType: const FullType(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatConsumerSendRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatConsumerSendRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conversation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.conversationId = valueDes;
          break;
        case r'receiver_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChatConsumerSendRequestReceiverTypeEnum),
          ) as ChatConsumerSendRequestReceiverTypeEnum?;
          if (valueDes == null) continue;
          result.receiverType = valueDes;
          break;
        case r'receiver_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.receiverId = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.file = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatConsumerSendRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatConsumerSendRequestBuilder();
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


class ChatConsumerSendRequestReceiverTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'vendor')
  static const ChatConsumerSendRequestReceiverTypeEnum vendor = _$chatConsumerSendRequestReceiverTypeEnum_vendor;
  @BuiltValueEnumConst(wireName: r'delivery_man')
  static const ChatConsumerSendRequestReceiverTypeEnum deliveryMan = _$chatConsumerSendRequestReceiverTypeEnum_deliveryMan;
  @BuiltValueEnumConst(wireName: r'admin')
  static const ChatConsumerSendRequestReceiverTypeEnum admin = _$chatConsumerSendRequestReceiverTypeEnum_admin;

  static Serializer<ChatConsumerSendRequestReceiverTypeEnum> get serializer => _$chatConsumerSendRequestReceiverTypeEnumSerializer;

  const ChatConsumerSendRequestReceiverTypeEnum._(String name): super(name);

  static BuiltSet<ChatConsumerSendRequestReceiverTypeEnum> get values => _$chatConsumerSendRequestReceiverTypeEnumValues;
  static ChatConsumerSendRequestReceiverTypeEnum valueOf(String name) => _$chatConsumerSendRequestReceiverTypeEnumValueOf(name);
}


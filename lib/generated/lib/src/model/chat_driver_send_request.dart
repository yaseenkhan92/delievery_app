//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_driver_send_request.g.dart';

/// receiver_id = users.id (customer) or vendors.id (restaurant).
///
/// Properties:
/// * [conversationId] 
/// * [receiverType] 
/// * [receiverId] 
/// * [message] 
/// * [limit] 
/// * [offset] 
@BuiltValue()
abstract class ChatDriverSendRequest implements Built<ChatDriverSendRequest, ChatDriverSendRequestBuilder> {
  @BuiltValueField(wireName: r'conversation_id')
  int? get conversationId;

  @BuiltValueField(wireName: r'receiver_type')
  ChatDriverSendRequestReceiverTypeEnum? get receiverType;
  // enum receiverTypeEnum {  customer,  vendor,  };

  @BuiltValueField(wireName: r'receiver_id')
  int? get receiverId;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'offset')
  int? get offset;

  ChatDriverSendRequest._();

  factory ChatDriverSendRequest([void updates(ChatDriverSendRequestBuilder b)]) = _$ChatDriverSendRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatDriverSendRequestBuilder b) => b
      ..limit = 10
      ..offset = 1;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatDriverSendRequest> get serializer => _$ChatDriverSendRequestSerializer();
}

class _$ChatDriverSendRequestSerializer implements PrimitiveSerializer<ChatDriverSendRequest> {
  @override
  final Iterable<Type> types = const [ChatDriverSendRequest, _$ChatDriverSendRequest];

  @override
  final String wireName = r'ChatDriverSendRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatDriverSendRequest object, {
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
        specifiedType: const FullType(ChatDriverSendRequestReceiverTypeEnum),
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
    ChatDriverSendRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatDriverSendRequestBuilder result,
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
            specifiedType: const FullType.nullable(ChatDriverSendRequestReceiverTypeEnum),
          ) as ChatDriverSendRequestReceiverTypeEnum?;
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
  ChatDriverSendRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatDriverSendRequestBuilder();
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


class ChatDriverSendRequestReceiverTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'customer')
  static const ChatDriverSendRequestReceiverTypeEnum customer = _$chatDriverSendRequestReceiverTypeEnum_customer;
  @BuiltValueEnumConst(wireName: r'vendor')
  static const ChatDriverSendRequestReceiverTypeEnum vendor = _$chatDriverSendRequestReceiverTypeEnum_vendor;

  static Serializer<ChatDriverSendRequestReceiverTypeEnum> get serializer => _$chatDriverSendRequestReceiverTypeEnumSerializer;

  const ChatDriverSendRequestReceiverTypeEnum._(String name): super(name);

  static BuiltSet<ChatDriverSendRequestReceiverTypeEnum> get values => _$chatDriverSendRequestReceiverTypeEnumValues;
  static ChatDriverSendRequestReceiverTypeEnum valueOf(String name) => _$chatDriverSendRequestReceiverTypeEnumValueOf(name);
}


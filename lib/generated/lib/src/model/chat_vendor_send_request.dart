//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_vendor_send_request.g.dart';

/// receiver_id = users.id when receiver_type is customer; delivery_men.id when delivery_man.
///
/// Properties:
/// * [conversationId] 
/// * [receiverType] 
/// * [receiverId] 
/// * [message] 
/// * [limit] 
/// * [offset] 
@BuiltValue()
abstract class ChatVendorSendRequest implements Built<ChatVendorSendRequest, ChatVendorSendRequestBuilder> {
  @BuiltValueField(wireName: r'conversation_id')
  int? get conversationId;

  @BuiltValueField(wireName: r'receiver_type')
  ChatVendorSendRequestReceiverTypeEnum? get receiverType;
  // enum receiverTypeEnum {  customer,  delivery_man,  admin,  };

  @BuiltValueField(wireName: r'receiver_id')
  int? get receiverId;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'offset')
  int? get offset;

  ChatVendorSendRequest._();

  factory ChatVendorSendRequest([void updates(ChatVendorSendRequestBuilder b)]) = _$ChatVendorSendRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatVendorSendRequestBuilder b) => b
      ..limit = 10
      ..offset = 1;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatVendorSendRequest> get serializer => _$ChatVendorSendRequestSerializer();
}

class _$ChatVendorSendRequestSerializer implements PrimitiveSerializer<ChatVendorSendRequest> {
  @override
  final Iterable<Type> types = const [ChatVendorSendRequest, _$ChatVendorSendRequest];

  @override
  final String wireName = r'ChatVendorSendRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatVendorSendRequest object, {
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
        specifiedType: const FullType(ChatVendorSendRequestReceiverTypeEnum),
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
    ChatVendorSendRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatVendorSendRequestBuilder result,
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
            specifiedType: const FullType.nullable(ChatVendorSendRequestReceiverTypeEnum),
          ) as ChatVendorSendRequestReceiverTypeEnum?;
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
  ChatVendorSendRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatVendorSendRequestBuilder();
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


class ChatVendorSendRequestReceiverTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'customer')
  static const ChatVendorSendRequestReceiverTypeEnum customer = _$chatVendorSendRequestReceiverTypeEnum_customer;
  @BuiltValueEnumConst(wireName: r'delivery_man')
  static const ChatVendorSendRequestReceiverTypeEnum deliveryMan = _$chatVendorSendRequestReceiverTypeEnum_deliveryMan;
  @BuiltValueEnumConst(wireName: r'admin')
  static const ChatVendorSendRequestReceiverTypeEnum admin = _$chatVendorSendRequestReceiverTypeEnum_admin;

  static Serializer<ChatVendorSendRequestReceiverTypeEnum> get serializer => _$chatVendorSendRequestReceiverTypeEnumSerializer;

  const ChatVendorSendRequestReceiverTypeEnum._(String name): super(name);

  static BuiltSet<ChatVendorSendRequestReceiverTypeEnum> get values => _$chatVendorSendRequestReceiverTypeEnumValues;
  static ChatVendorSendRequestReceiverTypeEnum valueOf(String name) => _$chatVendorSendRequestReceiverTypeEnumValueOf(name);
}


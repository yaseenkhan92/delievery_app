//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/chat_conversation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_consumer_search_response.g.dart';

/// ChatConsumerSearchResponse
///
/// Properties:
/// * [totalSize] 
/// * [limit] 
/// * [offset] 
/// * [conversations] 
@BuiltValue()
abstract class ChatConsumerSearchResponse implements Built<ChatConsumerSearchResponse, ChatConsumerSearchResponseBuilder> {
  @BuiltValueField(wireName: r'total_size')
  int? get totalSize;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'offset')
  int? get offset;

  @BuiltValueField(wireName: r'conversations')
  BuiltList<ChatConversation>? get conversations;

  ChatConsumerSearchResponse._();

  factory ChatConsumerSearchResponse([void updates(ChatConsumerSearchResponseBuilder b)]) = _$ChatConsumerSearchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatConsumerSearchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatConsumerSearchResponse> get serializer => _$ChatConsumerSearchResponseSerializer();
}

class _$ChatConsumerSearchResponseSerializer implements PrimitiveSerializer<ChatConsumerSearchResponse> {
  @override
  final Iterable<Type> types = const [ChatConsumerSearchResponse, _$ChatConsumerSearchResponse];

  @override
  final String wireName = r'ChatConsumerSearchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatConsumerSearchResponse object, {
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
    if (object.conversations != null) {
      yield r'conversations';
      yield serializers.serialize(
        object.conversations,
        specifiedType: const FullType(BuiltList, [FullType(ChatConversation)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatConsumerSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatConsumerSearchResponseBuilder result,
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
        case r'conversations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ChatConversation)]),
          ) as BuiltList<ChatConversation>?;
          if (valueDes == null) continue;
          result.conversations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatConsumerSearchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatConsumerSearchResponseBuilder();
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



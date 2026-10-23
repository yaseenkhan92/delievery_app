//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/chat_conversation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_vendor_driver_search_response.g.dart';

/// ChatVendorDriverSearchResponse
///
/// Properties:
/// * [totalSize] 
/// * [limit] 
/// * [offset] 
/// * [conversation] 
@BuiltValue()
abstract class ChatVendorDriverSearchResponse implements Built<ChatVendorDriverSearchResponse, ChatVendorDriverSearchResponseBuilder> {
  @BuiltValueField(wireName: r'total_size')
  int? get totalSize;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'offset')
  int? get offset;

  @BuiltValueField(wireName: r'conversation')
  BuiltList<ChatConversation>? get conversation;

  ChatVendorDriverSearchResponse._();

  factory ChatVendorDriverSearchResponse([void updates(ChatVendorDriverSearchResponseBuilder b)]) = _$ChatVendorDriverSearchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatVendorDriverSearchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatVendorDriverSearchResponse> get serializer => _$ChatVendorDriverSearchResponseSerializer();
}

class _$ChatVendorDriverSearchResponseSerializer implements PrimitiveSerializer<ChatVendorDriverSearchResponse> {
  @override
  final Iterable<Type> types = const [ChatVendorDriverSearchResponse, _$ChatVendorDriverSearchResponse];

  @override
  final String wireName = r'ChatVendorDriverSearchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatVendorDriverSearchResponse object, {
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
    if (object.conversation != null) {
      yield r'conversation';
      yield serializers.serialize(
        object.conversation,
        specifiedType: const FullType(BuiltList, [FullType(ChatConversation)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatVendorDriverSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatVendorDriverSearchResponseBuilder result,
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
        case r'conversation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ChatConversation)]),
          ) as BuiltList<ChatConversation>?;
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
  ChatVendorDriverSearchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatVendorDriverSearchResponseBuilder();
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



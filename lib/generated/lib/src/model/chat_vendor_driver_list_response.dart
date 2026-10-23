//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/chat_conversation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_vendor_driver_list_response.g.dart';

/// ChatVendorDriverListResponse
///
/// Properties:
/// * [type] 
/// * [totalSize] 
/// * [limit] 
/// * [offset] 
/// * [conversation] - PHP uses key `conversation` (not conversations) for vendor and driver list
@BuiltValue()
abstract class ChatVendorDriverListResponse implements Built<ChatVendorDriverListResponse, ChatVendorDriverListResponseBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'total_size')
  int? get totalSize;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'offset')
  int? get offset;

  /// PHP uses key `conversation` (not conversations) for vendor and driver list
  @BuiltValueField(wireName: r'conversation')
  BuiltList<ChatConversation>? get conversation;

  ChatVendorDriverListResponse._();

  factory ChatVendorDriverListResponse([void updates(ChatVendorDriverListResponseBuilder b)]) = _$ChatVendorDriverListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatVendorDriverListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatVendorDriverListResponse> get serializer => _$ChatVendorDriverListResponseSerializer();
}

class _$ChatVendorDriverListResponseSerializer implements PrimitiveSerializer<ChatVendorDriverListResponse> {
  @override
  final Iterable<Type> types = const [ChatVendorDriverListResponse, _$ChatVendorDriverListResponse];

  @override
  final String wireName = r'ChatVendorDriverListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatVendorDriverListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    ChatVendorDriverListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatVendorDriverListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
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
  ChatVendorDriverListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatVendorDriverListResponseBuilder();
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



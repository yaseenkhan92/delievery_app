//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_image_upload_response.g.dart';

/// ChatImageUploadResponse
///
/// Properties:
/// * [imageUrl] 
@BuiltValue()
abstract class ChatImageUploadResponse implements Built<ChatImageUploadResponse, ChatImageUploadResponseBuilder> {
  @BuiltValueField(wireName: r'image_url')
  String? get imageUrl;

  ChatImageUploadResponse._();

  factory ChatImageUploadResponse([void updates(ChatImageUploadResponseBuilder b)]) = _$ChatImageUploadResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatImageUploadResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatImageUploadResponse> get serializer => _$ChatImageUploadResponseSerializer();
}

class _$ChatImageUploadResponseSerializer implements PrimitiveSerializer<ChatImageUploadResponse> {
  @override
  final Iterable<Type> types = const [ChatImageUploadResponse, _$ChatImageUploadResponse];

  @override
  final String wireName = r'ChatImageUploadResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatImageUploadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.imageUrl != null) {
      yield r'image_url';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatImageUploadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatImageUploadResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'image_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatImageUploadResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatImageUploadResponseBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'upload_post_request.g.dart';

/// UploadPostRequest
///
/// Properties:
/// * [subfolder] 
@BuiltValue()
abstract class UploadPostRequest implements Built<UploadPostRequest, UploadPostRequestBuilder> {
  @BuiltValueField(wireName: r'subfolder')
  JsonObject? get subfolder;

  UploadPostRequest._();

  factory UploadPostRequest([void updates(UploadPostRequestBuilder b)]) = _$UploadPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UploadPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UploadPostRequest> get serializer => _$UploadPostRequestSerializer();
}

class _$UploadPostRequestSerializer implements PrimitiveSerializer<UploadPostRequest> {
  @override
  final Iterable<Type> types = const [UploadPostRequest, _$UploadPostRequest];

  @override
  final String wireName = r'UploadPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UploadPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.subfolder != null) {
      yield r'subfolder';
      yield serializers.serialize(
        object.subfolder,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UploadPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UploadPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subfolder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.subfolder = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UploadPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadPostRequestBuilder();
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



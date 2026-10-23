//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'upload_success_response.g.dart';

/// UploadSuccessResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [url] 
/// * [path] - Prefer this on register/apply JSON (fits DB VarChar)
/// * [subfolder] 
@BuiltValue()
abstract class UploadSuccessResponse implements Built<UploadSuccessResponse, UploadSuccessResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'url')
  String? get url;

  /// Prefer this on register/apply JSON (fits DB VarChar)
  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'subfolder')
  String? get subfolder;

  UploadSuccessResponse._();

  factory UploadSuccessResponse([void updates(UploadSuccessResponseBuilder b)]) = _$UploadSuccessResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UploadSuccessResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UploadSuccessResponse> get serializer => _$UploadSuccessResponseSerializer();
}

class _$UploadSuccessResponseSerializer implements PrimitiveSerializer<UploadSuccessResponse> {
  @override
  final Iterable<Type> types = const [UploadSuccessResponse, _$UploadSuccessResponse];

  @override
  final String wireName = r'UploadSuccessResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UploadSuccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.msg != null) {
      yield r'msg';
      yield serializers.serialize(
        object.msg,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.subfolder != null) {
      yield r'subfolder';
      yield serializers.serialize(
        object.subfolder,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UploadSuccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UploadSuccessResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'msg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.msg = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'subfolder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
  UploadSuccessResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadSuccessResponseBuilder();
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



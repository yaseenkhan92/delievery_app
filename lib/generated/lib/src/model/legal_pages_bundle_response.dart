//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/legal_pages_bundle_response_data_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'legal_pages_bundle_response.g.dart';

/// LegalPagesBundleResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class LegalPagesBundleResponse implements Built<LegalPagesBundleResponse, LegalPagesBundleResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  BuiltMap<String, LegalPagesBundleResponseDataValue>? get data;

  LegalPagesBundleResponse._();

  factory LegalPagesBundleResponse([void updates(LegalPagesBundleResponseBuilder b)]) = _$LegalPagesBundleResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LegalPagesBundleResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LegalPagesBundleResponse> get serializer => _$LegalPagesBundleResponseSerializer();
}

class _$LegalPagesBundleResponseSerializer implements PrimitiveSerializer<LegalPagesBundleResponse> {
  @override
  final Iterable<Type> types = const [LegalPagesBundleResponse, _$LegalPagesBundleResponse];

  @override
  final String wireName = r'LegalPagesBundleResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LegalPagesBundleResponse object, {
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
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(LegalPagesBundleResponseDataValue)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LegalPagesBundleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LegalPagesBundleResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(LegalPagesBundleResponseDataValue)]),
          ) as BuiltMap<String, LegalPagesBundleResponseDataValue>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LegalPagesBundleResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LegalPagesBundleResponseBuilder();
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



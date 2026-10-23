//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fcm_token_update_body.g.dart';

/// FcmTokenUpdateBody
///
/// Properties:
/// * [fcmToken] 
@BuiltValue()
abstract class FcmTokenUpdateBody implements Built<FcmTokenUpdateBody, FcmTokenUpdateBodyBuilder> {
  @BuiltValueField(wireName: r'fcm_token')
  String get fcmToken;

  FcmTokenUpdateBody._();

  factory FcmTokenUpdateBody([void updates(FcmTokenUpdateBodyBuilder b)]) = _$FcmTokenUpdateBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FcmTokenUpdateBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FcmTokenUpdateBody> get serializer => _$FcmTokenUpdateBodySerializer();
}

class _$FcmTokenUpdateBodySerializer implements PrimitiveSerializer<FcmTokenUpdateBody> {
  @override
  final Iterable<Type> types = const [FcmTokenUpdateBody, _$FcmTokenUpdateBody];

  @override
  final String wireName = r'FcmTokenUpdateBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FcmTokenUpdateBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fcm_token';
    yield serializers.serialize(
      object.fcmToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FcmTokenUpdateBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FcmTokenUpdateBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fcm_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fcmToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FcmTokenUpdateBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FcmTokenUpdateBodyBuilder();
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



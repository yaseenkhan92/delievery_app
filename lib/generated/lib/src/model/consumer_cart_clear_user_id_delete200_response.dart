//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_cart_clear_user_id_delete200_response.g.dart';

/// ConsumerCartClearUserIdDelete200Response
///
/// Properties:
/// * [status] 
/// * [msg] 
@BuiltValue()
abstract class ConsumerCartClearUserIdDelete200Response implements Built<ConsumerCartClearUserIdDelete200Response, ConsumerCartClearUserIdDelete200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  ConsumerCartClearUserIdDelete200Response._();

  factory ConsumerCartClearUserIdDelete200Response([void updates(ConsumerCartClearUserIdDelete200ResponseBuilder b)]) = _$ConsumerCartClearUserIdDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerCartClearUserIdDelete200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerCartClearUserIdDelete200Response> get serializer => _$ConsumerCartClearUserIdDelete200ResponseSerializer();
}

class _$ConsumerCartClearUserIdDelete200ResponseSerializer implements PrimitiveSerializer<ConsumerCartClearUserIdDelete200Response> {
  @override
  final Iterable<Type> types = const [ConsumerCartClearUserIdDelete200Response, _$ConsumerCartClearUserIdDelete200Response];

  @override
  final String wireName = r'ConsumerCartClearUserIdDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerCartClearUserIdDelete200Response object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerCartClearUserIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerCartClearUserIdDelete200ResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerCartClearUserIdDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerCartClearUserIdDelete200ResponseBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_addresses_id_delete200_response.g.dart';

/// ConsumerAddressesIdDelete200Response
///
/// Properties:
/// * [status] 
/// * [msg] 
@BuiltValue()
abstract class ConsumerAddressesIdDelete200Response implements Built<ConsumerAddressesIdDelete200Response, ConsumerAddressesIdDelete200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  ConsumerAddressesIdDelete200Response._();

  factory ConsumerAddressesIdDelete200Response([void updates(ConsumerAddressesIdDelete200ResponseBuilder b)]) = _$ConsumerAddressesIdDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerAddressesIdDelete200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerAddressesIdDelete200Response> get serializer => _$ConsumerAddressesIdDelete200ResponseSerializer();
}

class _$ConsumerAddressesIdDelete200ResponseSerializer implements PrimitiveSerializer<ConsumerAddressesIdDelete200Response> {
  @override
  final Iterable<Type> types = const [ConsumerAddressesIdDelete200Response, _$ConsumerAddressesIdDelete200Response];

  @override
  final String wireName = r'ConsumerAddressesIdDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerAddressesIdDelete200Response object, {
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
    ConsumerAddressesIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerAddressesIdDelete200ResponseBuilder result,
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
  ConsumerAddressesIdDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerAddressesIdDelete200ResponseBuilder();
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



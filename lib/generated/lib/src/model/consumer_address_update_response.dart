//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_address.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_address_update_response.g.dart';

/// ConsumerAddressUpdateResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class ConsumerAddressUpdateResponse implements Built<ConsumerAddressUpdateResponse, ConsumerAddressUpdateResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  ConsumerAddress? get data;

  ConsumerAddressUpdateResponse._();

  factory ConsumerAddressUpdateResponse([void updates(ConsumerAddressUpdateResponseBuilder b)]) = _$ConsumerAddressUpdateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerAddressUpdateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerAddressUpdateResponse> get serializer => _$ConsumerAddressUpdateResponseSerializer();
}

class _$ConsumerAddressUpdateResponseSerializer implements PrimitiveSerializer<ConsumerAddressUpdateResponse> {
  @override
  final Iterable<Type> types = const [ConsumerAddressUpdateResponse, _$ConsumerAddressUpdateResponse];

  @override
  final String wireName = r'ConsumerAddressUpdateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerAddressUpdateResponse object, {
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
        specifiedType: const FullType(ConsumerAddress),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerAddressUpdateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerAddressUpdateResponseBuilder result,
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
            specifiedType: const FullType.nullable(ConsumerAddress),
          ) as ConsumerAddress?;
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
  ConsumerAddressUpdateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerAddressUpdateResponseBuilder();
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



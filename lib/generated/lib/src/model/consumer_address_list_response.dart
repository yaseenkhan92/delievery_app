//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_address_list_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_address_list_response.g.dart';

/// ConsumerAddressListResponse
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class ConsumerAddressListResponse implements Built<ConsumerAddressListResponse, ConsumerAddressListResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  ConsumerAddressListResponseData? get data;

  ConsumerAddressListResponse._();

  factory ConsumerAddressListResponse([void updates(ConsumerAddressListResponseBuilder b)]) = _$ConsumerAddressListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerAddressListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerAddressListResponse> get serializer => _$ConsumerAddressListResponseSerializer();
}

class _$ConsumerAddressListResponseSerializer implements PrimitiveSerializer<ConsumerAddressListResponse> {
  @override
  final Iterable<Type> types = const [ConsumerAddressListResponse, _$ConsumerAddressListResponse];

  @override
  final String wireName = r'ConsumerAddressListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerAddressListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ConsumerAddressListResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerAddressListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerAddressListResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerAddressListResponseData),
          ) as ConsumerAddressListResponseData?;
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
  ConsumerAddressListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerAddressListResponseBuilder();
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



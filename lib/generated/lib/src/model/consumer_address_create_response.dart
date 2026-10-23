//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_address_create_response.g.dart';

/// ConsumerAddressCreateResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
/// * [zoneIds] 
@BuiltValue()
abstract class ConsumerAddressCreateResponse implements Built<ConsumerAddressCreateResponse, ConsumerAddressCreateResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  ConsumerAddress? get data;

  @BuiltValueField(wireName: r'zone_ids')
  BuiltList<int>? get zoneIds;

  ConsumerAddressCreateResponse._();

  factory ConsumerAddressCreateResponse([void updates(ConsumerAddressCreateResponseBuilder b)]) = _$ConsumerAddressCreateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerAddressCreateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerAddressCreateResponse> get serializer => _$ConsumerAddressCreateResponseSerializer();
}

class _$ConsumerAddressCreateResponseSerializer implements PrimitiveSerializer<ConsumerAddressCreateResponse> {
  @override
  final Iterable<Type> types = const [ConsumerAddressCreateResponse, _$ConsumerAddressCreateResponse];

  @override
  final String wireName = r'ConsumerAddressCreateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerAddressCreateResponse object, {
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
    if (object.zoneIds != null) {
      yield r'zone_ids';
      yield serializers.serialize(
        object.zoneIds,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerAddressCreateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerAddressCreateResponseBuilder result,
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
        case r'zone_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.zoneIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerAddressCreateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerAddressCreateResponseBuilder();
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



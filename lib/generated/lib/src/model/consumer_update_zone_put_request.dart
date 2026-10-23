//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_update_zone_put_request.g.dart';

/// ConsumerUpdateZonePutRequest
///
/// Properties:
/// * [zoneId] 
@BuiltValue()
abstract class ConsumerUpdateZonePutRequest implements Built<ConsumerUpdateZonePutRequest, ConsumerUpdateZonePutRequestBuilder> {
  @BuiltValueField(wireName: r'zone_id')
  int? get zoneId;

  ConsumerUpdateZonePutRequest._();

  factory ConsumerUpdateZonePutRequest([void updates(ConsumerUpdateZonePutRequestBuilder b)]) = _$ConsumerUpdateZonePutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerUpdateZonePutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerUpdateZonePutRequest> get serializer => _$ConsumerUpdateZonePutRequestSerializer();
}

class _$ConsumerUpdateZonePutRequestSerializer implements PrimitiveSerializer<ConsumerUpdateZonePutRequest> {
  @override
  final Iterable<Type> types = const [ConsumerUpdateZonePutRequest, _$ConsumerUpdateZonePutRequest];

  @override
  final String wireName = r'ConsumerUpdateZonePutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerUpdateZonePutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.zoneId != null) {
      yield r'zone_id';
      yield serializers.serialize(
        object.zoneId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerUpdateZonePutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerUpdateZonePutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.zoneId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerUpdateZonePutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerUpdateZonePutRequestBuilder();
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



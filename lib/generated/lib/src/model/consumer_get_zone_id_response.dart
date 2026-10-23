//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/consumer_zone_data_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_get_zone_id_response.g.dart';

/// ConsumerGetZoneIdResponse
///
/// Properties:
/// * [zoneId] - JSON-encoded array of zone ids; use first id (or full list) as query zone_id on catalog APIs
/// * [zoneData] 
@BuiltValue()
abstract class ConsumerGetZoneIdResponse implements Built<ConsumerGetZoneIdResponse, ConsumerGetZoneIdResponseBuilder> {
  /// JSON-encoded array of zone ids; use first id (or full list) as query zone_id on catalog APIs
  @BuiltValueField(wireName: r'zone_id')
  String? get zoneId;

  @BuiltValueField(wireName: r'zone_data')
  BuiltList<ConsumerZoneDataItem>? get zoneData;

  ConsumerGetZoneIdResponse._();

  factory ConsumerGetZoneIdResponse([void updates(ConsumerGetZoneIdResponseBuilder b)]) = _$ConsumerGetZoneIdResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerGetZoneIdResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerGetZoneIdResponse> get serializer => _$ConsumerGetZoneIdResponseSerializer();
}

class _$ConsumerGetZoneIdResponseSerializer implements PrimitiveSerializer<ConsumerGetZoneIdResponse> {
  @override
  final Iterable<Type> types = const [ConsumerGetZoneIdResponse, _$ConsumerGetZoneIdResponse];

  @override
  final String wireName = r'ConsumerGetZoneIdResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerGetZoneIdResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.zoneId != null) {
      yield r'zone_id';
      yield serializers.serialize(
        object.zoneId,
        specifiedType: const FullType(String),
      );
    }
    if (object.zoneData != null) {
      yield r'zone_data';
      yield serializers.serialize(
        object.zoneData,
        specifiedType: const FullType(BuiltList, [FullType(ConsumerZoneDataItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerGetZoneIdResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerGetZoneIdResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.zoneId = valueDes;
          break;
        case r'zone_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ConsumerZoneDataItem)]),
          ) as BuiltList<ConsumerZoneDataItem>?;
          if (valueDes == null) continue;
          result.zoneData.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerGetZoneIdResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerGetZoneIdResponseBuilder();
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



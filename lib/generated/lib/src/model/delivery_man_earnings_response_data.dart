//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/delivery_man_earning_history_item.dart';
import 'package:openapi/src/model/delivery_man_earnings_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_earnings_response_data.g.dart';

/// DeliveryManEarningsResponseData
///
/// Properties:
/// * [summary] 
/// * [totalSize] 
/// * [limit] 
/// * [offset] 
/// * [history] 
@BuiltValue()
abstract class DeliveryManEarningsResponseData implements Built<DeliveryManEarningsResponseData, DeliveryManEarningsResponseDataBuilder> {
  @BuiltValueField(wireName: r'summary')
  DeliveryManEarningsSummary? get summary;

  @BuiltValueField(wireName: r'total_size')
  int? get totalSize;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'offset')
  int? get offset;

  @BuiltValueField(wireName: r'history')
  BuiltList<DeliveryManEarningHistoryItem>? get history;

  DeliveryManEarningsResponseData._();

  factory DeliveryManEarningsResponseData([void updates(DeliveryManEarningsResponseDataBuilder b)]) = _$DeliveryManEarningsResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManEarningsResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManEarningsResponseData> get serializer => _$DeliveryManEarningsResponseDataSerializer();
}

class _$DeliveryManEarningsResponseDataSerializer implements PrimitiveSerializer<DeliveryManEarningsResponseData> {
  @override
  final Iterable<Type> types = const [DeliveryManEarningsResponseData, _$DeliveryManEarningsResponseData];

  @override
  final String wireName = r'DeliveryManEarningsResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManEarningsResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(DeliveryManEarningsSummary),
      );
    }
    if (object.totalSize != null) {
      yield r'total_size';
      yield serializers.serialize(
        object.totalSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.offset != null) {
      yield r'offset';
      yield serializers.serialize(
        object.offset,
        specifiedType: const FullType(int),
      );
    }
    if (object.history != null) {
      yield r'history';
      yield serializers.serialize(
        object.history,
        specifiedType: const FullType(BuiltList, [FullType(DeliveryManEarningHistoryItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManEarningsResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManEarningsResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManEarningsSummary),
          ) as DeliveryManEarningsSummary?;
          if (valueDes == null) continue;
          result.summary.replace(valueDes);
          break;
        case r'total_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalSize = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.offset = valueDes;
          break;
        case r'history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(DeliveryManEarningHistoryItem)]),
          ) as BuiltList<DeliveryManEarningHistoryItem>?;
          if (valueDes == null) continue;
          result.history.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManEarningsResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManEarningsResponseDataBuilder();
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



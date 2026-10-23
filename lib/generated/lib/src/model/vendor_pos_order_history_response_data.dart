//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_pos_order_history_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/vendor_pos_order_history_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_pos_order_history_response_data.g.dart';

/// VendorPosOrderHistoryResponseData
///
/// Properties:
/// * [source_] 
/// * [status] 
/// * [summary] 
/// * [total] 
/// * [limit] 
/// * [offset] 
/// * [orders] 
@BuiltValue()
abstract class VendorPosOrderHistoryResponseData implements Built<VendorPosOrderHistoryResponseData, VendorPosOrderHistoryResponseDataBuilder> {
  @BuiltValueField(wireName: r'source')
  VendorPosOrderHistoryResponseDataSource_Enum? get source_;
  // enum source_Enum {  online,  manual,  };

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'summary')
  VendorPosOrderHistorySummary? get summary;

  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'offset')
  int? get offset;

  @BuiltValueField(wireName: r'orders')
  BuiltList<VendorPosOrderHistoryItem>? get orders;

  VendorPosOrderHistoryResponseData._();

  factory VendorPosOrderHistoryResponseData([void updates(VendorPosOrderHistoryResponseDataBuilder b)]) = _$VendorPosOrderHistoryResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorPosOrderHistoryResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorPosOrderHistoryResponseData> get serializer => _$VendorPosOrderHistoryResponseDataSerializer();
}

class _$VendorPosOrderHistoryResponseDataSerializer implements PrimitiveSerializer<VendorPosOrderHistoryResponseData> {
  @override
  final Iterable<Type> types = const [VendorPosOrderHistoryResponseData, _$VendorPosOrderHistoryResponseData];

  @override
  final String wireName = r'VendorPosOrderHistoryResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorPosOrderHistoryResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(VendorPosOrderHistoryResponseDataSource_Enum),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(VendorPosOrderHistorySummary),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
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
    if (object.orders != null) {
      yield r'orders';
      yield serializers.serialize(
        object.orders,
        specifiedType: const FullType(BuiltList, [FullType(VendorPosOrderHistoryItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorPosOrderHistoryResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorPosOrderHistoryResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorPosOrderHistoryResponseDataSource_Enum),
          ) as VendorPosOrderHistoryResponseDataSource_Enum?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorPosOrderHistorySummary),
          ) as VendorPosOrderHistorySummary?;
          if (valueDes == null) continue;
          result.summary.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.total = valueDes;
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
        case r'orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(VendorPosOrderHistoryItem)]),
          ) as BuiltList<VendorPosOrderHistoryItem>?;
          if (valueDes == null) continue;
          result.orders.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorPosOrderHistoryResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorPosOrderHistoryResponseDataBuilder();
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


class VendorPosOrderHistoryResponseDataSource_Enum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'online')
  static const VendorPosOrderHistoryResponseDataSource_Enum online = _$vendorPosOrderHistoryResponseDataSourceEnum_online;
  @BuiltValueEnumConst(wireName: r'manual')
  static const VendorPosOrderHistoryResponseDataSource_Enum manual = _$vendorPosOrderHistoryResponseDataSourceEnum_manual;

  static Serializer<VendorPosOrderHistoryResponseDataSource_Enum> get serializer => _$vendorPosOrderHistoryResponseDataSourceEnumSerializer;

  const VendorPosOrderHistoryResponseDataSource_Enum._(String name): super(name);

  static BuiltSet<VendorPosOrderHistoryResponseDataSource_Enum> get values => _$vendorPosOrderHistoryResponseDataSourceEnumValues;
  static VendorPosOrderHistoryResponseDataSource_Enum valueOf(String name) => _$vendorPosOrderHistoryResponseDataSourceEnumValueOf(name);
}


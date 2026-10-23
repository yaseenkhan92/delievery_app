//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_order_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_order_list_response_data.g.dart';

/// VendorOrderListResponseData
///
/// Properties:
/// * [total] 
/// * [limit] 
/// * [offset] 
/// * [orders] 
@BuiltValue()
abstract class VendorOrderListResponseData implements Built<VendorOrderListResponseData, VendorOrderListResponseDataBuilder> {
  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'offset')
  int? get offset;

  @BuiltValueField(wireName: r'orders')
  BuiltList<VendorOrderSummary>? get orders;

  VendorOrderListResponseData._();

  factory VendorOrderListResponseData([void updates(VendorOrderListResponseDataBuilder b)]) = _$VendorOrderListResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorOrderListResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorOrderListResponseData> get serializer => _$VendorOrderListResponseDataSerializer();
}

class _$VendorOrderListResponseDataSerializer implements PrimitiveSerializer<VendorOrderListResponseData> {
  @override
  final Iterable<Type> types = const [VendorOrderListResponseData, _$VendorOrderListResponseData];

  @override
  final String wireName = r'VendorOrderListResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorOrderListResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(BuiltList, [FullType(VendorOrderSummary)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorOrderListResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorOrderListResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType.nullable(BuiltList, [FullType(VendorOrderSummary)]),
          ) as BuiltList<VendorOrderSummary>?;
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
  VendorOrderListResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorOrderListResponseDataBuilder();
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



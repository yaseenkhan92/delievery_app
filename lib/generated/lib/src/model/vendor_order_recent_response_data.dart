//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_order_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_order_recent_response_data.g.dart';

/// VendorOrderRecentResponseData
///
/// Properties:
/// * [orders] 
/// * [latestId] 
@BuiltValue()
abstract class VendorOrderRecentResponseData implements Built<VendorOrderRecentResponseData, VendorOrderRecentResponseDataBuilder> {
  @BuiltValueField(wireName: r'orders')
  BuiltList<VendorOrderSummary>? get orders;

  @BuiltValueField(wireName: r'latest_id')
  int? get latestId;

  VendorOrderRecentResponseData._();

  factory VendorOrderRecentResponseData([void updates(VendorOrderRecentResponseDataBuilder b)]) = _$VendorOrderRecentResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorOrderRecentResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorOrderRecentResponseData> get serializer => _$VendorOrderRecentResponseDataSerializer();
}

class _$VendorOrderRecentResponseDataSerializer implements PrimitiveSerializer<VendorOrderRecentResponseData> {
  @override
  final Iterable<Type> types = const [VendorOrderRecentResponseData, _$VendorOrderRecentResponseData];

  @override
  final String wireName = r'VendorOrderRecentResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorOrderRecentResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.orders != null) {
      yield r'orders';
      yield serializers.serialize(
        object.orders,
        specifiedType: const FullType(BuiltList, [FullType(VendorOrderSummary)]),
      );
    }
    if (object.latestId != null) {
      yield r'latest_id';
      yield serializers.serialize(
        object.latestId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorOrderRecentResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorOrderRecentResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(VendorOrderSummary)]),
          ) as BuiltList<VendorOrderSummary>?;
          if (valueDes == null) continue;
          result.orders.replace(valueDes);
          break;
        case r'latest_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.latestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorOrderRecentResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorOrderRecentResponseDataBuilder();
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



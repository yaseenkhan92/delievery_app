//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_pos_order_history_summary.g.dart';

/// VendorPosOrderHistorySummary
///
/// Properties:
/// * [today] 
/// * [thisWeek] 
/// * [thisMonth] 
@BuiltValue()
abstract class VendorPosOrderHistorySummary implements Built<VendorPosOrderHistorySummary, VendorPosOrderHistorySummaryBuilder> {
  @BuiltValueField(wireName: r'today')
  int? get today;

  @BuiltValueField(wireName: r'this_week')
  int? get thisWeek;

  @BuiltValueField(wireName: r'this_month')
  int? get thisMonth;

  VendorPosOrderHistorySummary._();

  factory VendorPosOrderHistorySummary([void updates(VendorPosOrderHistorySummaryBuilder b)]) = _$VendorPosOrderHistorySummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorPosOrderHistorySummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorPosOrderHistorySummary> get serializer => _$VendorPosOrderHistorySummarySerializer();
}

class _$VendorPosOrderHistorySummarySerializer implements PrimitiveSerializer<VendorPosOrderHistorySummary> {
  @override
  final Iterable<Type> types = const [VendorPosOrderHistorySummary, _$VendorPosOrderHistorySummary];

  @override
  final String wireName = r'VendorPosOrderHistorySummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorPosOrderHistorySummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.today != null) {
      yield r'today';
      yield serializers.serialize(
        object.today,
        specifiedType: const FullType(int),
      );
    }
    if (object.thisWeek != null) {
      yield r'this_week';
      yield serializers.serialize(
        object.thisWeek,
        specifiedType: const FullType(int),
      );
    }
    if (object.thisMonth != null) {
      yield r'this_month';
      yield serializers.serialize(
        object.thisMonth,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorPosOrderHistorySummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorPosOrderHistorySummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'today':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.today = valueDes;
          break;
        case r'this_week':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.thisWeek = valueDes;
          break;
        case r'this_month':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.thisMonth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorPosOrderHistorySummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorPosOrderHistorySummaryBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_home_response_data.g.dart';

/// DeliveryManHomeResponseData
///
/// Properties:
/// * [todaysOrderCount] - Orders accepted today
/// * [thisWeekOrderCount] - Orders accepted since start of week (Monday)
/// * [thisMonthOrderCount] - Orders accepted since start of calendar month
/// * [todaysEarning] - Sum of original_delivery_charge + dm_tips for today's transactions
@BuiltValue()
abstract class DeliveryManHomeResponseData implements Built<DeliveryManHomeResponseData, DeliveryManHomeResponseDataBuilder> {
  /// Orders accepted today
  @BuiltValueField(wireName: r'todays_order_count')
  int? get todaysOrderCount;

  /// Orders accepted since start of week (Monday)
  @BuiltValueField(wireName: r'this_week_order_count')
  int? get thisWeekOrderCount;

  /// Orders accepted since start of calendar month
  @BuiltValueField(wireName: r'this_month_order_count')
  int? get thisMonthOrderCount;

  /// Sum of original_delivery_charge + dm_tips for today's transactions
  @BuiltValueField(wireName: r'todays_earning')
  num? get todaysEarning;

  DeliveryManHomeResponseData._();

  factory DeliveryManHomeResponseData([void updates(DeliveryManHomeResponseDataBuilder b)]) = _$DeliveryManHomeResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManHomeResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManHomeResponseData> get serializer => _$DeliveryManHomeResponseDataSerializer();
}

class _$DeliveryManHomeResponseDataSerializer implements PrimitiveSerializer<DeliveryManHomeResponseData> {
  @override
  final Iterable<Type> types = const [DeliveryManHomeResponseData, _$DeliveryManHomeResponseData];

  @override
  final String wireName = r'DeliveryManHomeResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManHomeResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.todaysOrderCount != null) {
      yield r'todays_order_count';
      yield serializers.serialize(
        object.todaysOrderCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.thisWeekOrderCount != null) {
      yield r'this_week_order_count';
      yield serializers.serialize(
        object.thisWeekOrderCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.thisMonthOrderCount != null) {
      yield r'this_month_order_count';
      yield serializers.serialize(
        object.thisMonthOrderCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.todaysEarning != null) {
      yield r'todays_earning';
      yield serializers.serialize(
        object.todaysEarning,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManHomeResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManHomeResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'todays_order_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.todaysOrderCount = valueDes;
          break;
        case r'this_week_order_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.thisWeekOrderCount = valueDes;
          break;
        case r'this_month_order_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.thisMonthOrderCount = valueDes;
          break;
        case r'todays_earning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.todaysEarning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManHomeResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManHomeResponseDataBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/delivery_man_earnings_summary_wallet.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_earnings_summary.g.dart';

/// DeliveryManEarningsSummary
///
/// Properties:
/// * [wallet] 
/// * [todaysEarning] 
/// * [thisWeekEarning] 
/// * [thisMonthEarning] 
/// * [lifetimeEarning] 
@BuiltValue()
abstract class DeliveryManEarningsSummary implements Built<DeliveryManEarningsSummary, DeliveryManEarningsSummaryBuilder> {
  @BuiltValueField(wireName: r'wallet')
  DeliveryManEarningsSummaryWallet? get wallet;

  @BuiltValueField(wireName: r'todays_earning')
  num? get todaysEarning;

  @BuiltValueField(wireName: r'this_week_earning')
  num? get thisWeekEarning;

  @BuiltValueField(wireName: r'this_month_earning')
  num? get thisMonthEarning;

  @BuiltValueField(wireName: r'lifetime_earning')
  num? get lifetimeEarning;

  DeliveryManEarningsSummary._();

  factory DeliveryManEarningsSummary([void updates(DeliveryManEarningsSummaryBuilder b)]) = _$DeliveryManEarningsSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManEarningsSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManEarningsSummary> get serializer => _$DeliveryManEarningsSummarySerializer();
}

class _$DeliveryManEarningsSummarySerializer implements PrimitiveSerializer<DeliveryManEarningsSummary> {
  @override
  final Iterable<Type> types = const [DeliveryManEarningsSummary, _$DeliveryManEarningsSummary];

  @override
  final String wireName = r'DeliveryManEarningsSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManEarningsSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.wallet != null) {
      yield r'wallet';
      yield serializers.serialize(
        object.wallet,
        specifiedType: const FullType(DeliveryManEarningsSummaryWallet),
      );
    }
    if (object.todaysEarning != null) {
      yield r'todays_earning';
      yield serializers.serialize(
        object.todaysEarning,
        specifiedType: const FullType(num),
      );
    }
    if (object.thisWeekEarning != null) {
      yield r'this_week_earning';
      yield serializers.serialize(
        object.thisWeekEarning,
        specifiedType: const FullType(num),
      );
    }
    if (object.thisMonthEarning != null) {
      yield r'this_month_earning';
      yield serializers.serialize(
        object.thisMonthEarning,
        specifiedType: const FullType(num),
      );
    }
    if (object.lifetimeEarning != null) {
      yield r'lifetime_earning';
      yield serializers.serialize(
        object.lifetimeEarning,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManEarningsSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManEarningsSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'wallet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManEarningsSummaryWallet),
          ) as DeliveryManEarningsSummaryWallet?;
          if (valueDes == null) continue;
          result.wallet.replace(valueDes);
          break;
        case r'todays_earning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.todaysEarning = valueDes;
          break;
        case r'this_week_earning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.thisWeekEarning = valueDes;
          break;
        case r'this_month_earning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.thisMonthEarning = valueDes;
          break;
        case r'lifetime_earning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lifetimeEarning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManEarningsSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManEarningsSummaryBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_earnings_summary_wallet.g.dart';

/// DeliveryManEarningsSummaryWallet
///
/// Properties:
/// * [totalEarning] 
/// * [totalWithdrawn] 
/// * [pendingWithdraw] 
/// * [collectedCash] 
/// * [balance] 
@BuiltValue()
abstract class DeliveryManEarningsSummaryWallet implements Built<DeliveryManEarningsSummaryWallet, DeliveryManEarningsSummaryWalletBuilder> {
  @BuiltValueField(wireName: r'total_earning')
  num? get totalEarning;

  @BuiltValueField(wireName: r'total_withdrawn')
  num? get totalWithdrawn;

  @BuiltValueField(wireName: r'pending_withdraw')
  num? get pendingWithdraw;

  @BuiltValueField(wireName: r'collected_cash')
  num? get collectedCash;

  @BuiltValueField(wireName: r'balance')
  num? get balance;

  DeliveryManEarningsSummaryWallet._();

  factory DeliveryManEarningsSummaryWallet([void updates(DeliveryManEarningsSummaryWalletBuilder b)]) = _$DeliveryManEarningsSummaryWallet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManEarningsSummaryWalletBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManEarningsSummaryWallet> get serializer => _$DeliveryManEarningsSummaryWalletSerializer();
}

class _$DeliveryManEarningsSummaryWalletSerializer implements PrimitiveSerializer<DeliveryManEarningsSummaryWallet> {
  @override
  final Iterable<Type> types = const [DeliveryManEarningsSummaryWallet, _$DeliveryManEarningsSummaryWallet];

  @override
  final String wireName = r'DeliveryManEarningsSummaryWallet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManEarningsSummaryWallet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalEarning != null) {
      yield r'total_earning';
      yield serializers.serialize(
        object.totalEarning,
        specifiedType: const FullType(num),
      );
    }
    if (object.totalWithdrawn != null) {
      yield r'total_withdrawn';
      yield serializers.serialize(
        object.totalWithdrawn,
        specifiedType: const FullType(num),
      );
    }
    if (object.pendingWithdraw != null) {
      yield r'pending_withdraw';
      yield serializers.serialize(
        object.pendingWithdraw,
        specifiedType: const FullType(num),
      );
    }
    if (object.collectedCash != null) {
      yield r'collected_cash';
      yield serializers.serialize(
        object.collectedCash,
        specifiedType: const FullType(num),
      );
    }
    if (object.balance != null) {
      yield r'balance';
      yield serializers.serialize(
        object.balance,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManEarningsSummaryWallet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManEarningsSummaryWalletBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_earning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.totalEarning = valueDes;
          break;
        case r'total_withdrawn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.totalWithdrawn = valueDes;
          break;
        case r'pending_withdraw':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.pendingWithdraw = valueDes;
          break;
        case r'collected_cash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.collectedCash = valueDes;
          break;
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.balance = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManEarningsSummaryWallet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManEarningsSummaryWalletBuilder();
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



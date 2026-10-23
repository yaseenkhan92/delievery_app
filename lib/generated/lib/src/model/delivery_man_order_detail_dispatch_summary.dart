//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_order_detail_dispatch_summary.g.dart';

/// DeliveryManOrderDetailDispatchSummary
///
/// Properties:
/// * [title] 
/// * [deliveryFee] 
@BuiltValue()
abstract class DeliveryManOrderDetailDispatchSummary implements Built<DeliveryManOrderDetailDispatchSummary, DeliveryManOrderDetailDispatchSummaryBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'delivery_fee')
  num? get deliveryFee;

  DeliveryManOrderDetailDispatchSummary._();

  factory DeliveryManOrderDetailDispatchSummary([void updates(DeliveryManOrderDetailDispatchSummaryBuilder b)]) = _$DeliveryManOrderDetailDispatchSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManOrderDetailDispatchSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManOrderDetailDispatchSummary> get serializer => _$DeliveryManOrderDetailDispatchSummarySerializer();
}

class _$DeliveryManOrderDetailDispatchSummarySerializer implements PrimitiveSerializer<DeliveryManOrderDetailDispatchSummary> {
  @override
  final Iterable<Type> types = const [DeliveryManOrderDetailDispatchSummary, _$DeliveryManOrderDetailDispatchSummary];

  @override
  final String wireName = r'DeliveryManOrderDetailDispatchSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManOrderDetailDispatchSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryFee != null) {
      yield r'delivery_fee';
      yield serializers.serialize(
        object.deliveryFee,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManOrderDetailDispatchSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManOrderDetailDispatchSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'delivery_fee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.deliveryFee = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManOrderDetailDispatchSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManOrderDetailDispatchSummaryBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_place_order_data.g.dart';

/// ConsumerPlaceOrderData
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [restaurantId] 
/// * [orderAmount] 
/// * [deliveryCharge] 
/// * [totalTaxAmount] 
/// * [additionalCharge] 
/// * [dmTips] 
/// * [paymentStatus] 
/// * [orderStatus] 
/// * [paymentMethod] 
/// * [orderType] 
/// * [scheduled] 
/// * [scheduleAt] 
/// * [createdAt] 
@BuiltValue()
abstract class ConsumerPlaceOrderData implements Built<ConsumerPlaceOrderData, ConsumerPlaceOrderDataBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  @BuiltValueField(wireName: r'restaurant_id')
  String? get restaurantId;

  @BuiltValueField(wireName: r'order_amount')
  num? get orderAmount;

  @BuiltValueField(wireName: r'delivery_charge')
  num? get deliveryCharge;

  @BuiltValueField(wireName: r'total_tax_amount')
  num? get totalTaxAmount;

  @BuiltValueField(wireName: r'additional_charge')
  num? get additionalCharge;

  @BuiltValueField(wireName: r'dm_tips')
  num? get dmTips;

  @BuiltValueField(wireName: r'payment_status')
  String? get paymentStatus;

  @BuiltValueField(wireName: r'order_status')
  String? get orderStatus;

  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: r'order_type')
  String? get orderType;

  @BuiltValueField(wireName: r'scheduled')
  bool? get scheduled;

  @BuiltValueField(wireName: r'schedule_at')
  DateTime? get scheduleAt;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  ConsumerPlaceOrderData._();

  factory ConsumerPlaceOrderData([void updates(ConsumerPlaceOrderDataBuilder b)]) = _$ConsumerPlaceOrderData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerPlaceOrderDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerPlaceOrderData> get serializer => _$ConsumerPlaceOrderDataSerializer();
}

class _$ConsumerPlaceOrderDataSerializer implements PrimitiveSerializer<ConsumerPlaceOrderData> {
  @override
  final Iterable<Type> types = const [ConsumerPlaceOrderData, _$ConsumerPlaceOrderData];

  @override
  final String wireName = r'ConsumerPlaceOrderData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerPlaceOrderData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurant_id';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.orderAmount != null) {
      yield r'order_amount';
      yield serializers.serialize(
        object.orderAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.deliveryCharge != null) {
      yield r'delivery_charge';
      yield serializers.serialize(
        object.deliveryCharge,
        specifiedType: const FullType(num),
      );
    }
    if (object.totalTaxAmount != null) {
      yield r'total_tax_amount';
      yield serializers.serialize(
        object.totalTaxAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.additionalCharge != null) {
      yield r'additional_charge';
      yield serializers.serialize(
        object.additionalCharge,
        specifiedType: const FullType(num),
      );
    }
    if (object.dmTips != null) {
      yield r'dm_tips';
      yield serializers.serialize(
        object.dmTips,
        specifiedType: const FullType(num),
      );
    }
    if (object.paymentStatus != null) {
      yield r'payment_status';
      yield serializers.serialize(
        object.paymentStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderStatus != null) {
      yield r'order_status';
      yield serializers.serialize(
        object.orderStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.paymentMethod != null) {
      yield r'payment_method';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderType != null) {
      yield r'order_type';
      yield serializers.serialize(
        object.orderType,
        specifiedType: const FullType(String),
      );
    }
    if (object.scheduled != null) {
      yield r'scheduled';
      yield serializers.serialize(
        object.scheduled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scheduleAt != null) {
      yield r'schedule_at';
      yield serializers.serialize(
        object.scheduleAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerPlaceOrderData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerPlaceOrderDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'restaurant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        case r'order_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.orderAmount = valueDes;
          break;
        case r'delivery_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.deliveryCharge = valueDes;
          break;
        case r'total_tax_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.totalTaxAmount = valueDes;
          break;
        case r'additional_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.additionalCharge = valueDes;
          break;
        case r'dm_tips':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.dmTips = valueDes;
          break;
        case r'payment_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentStatus = valueDes;
          break;
        case r'order_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderStatus = valueDes;
          break;
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentMethod = valueDes;
          break;
        case r'order_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderType = valueDes;
          break;
        case r'scheduled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scheduled = valueDes;
          break;
        case r'schedule_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.scheduleAt = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerPlaceOrderData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerPlaceOrderDataBuilder();
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



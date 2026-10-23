//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_order_track_restaurant.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/consumer_order_track_delivery_man.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_order_track_data.g.dart';

/// ConsumerOrderTrackData
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [restaurantId] 
/// * [orderAmount] 
/// * [deliveryCharge] 
/// * [totalTaxAmount] 
/// * [paymentStatus] 
/// * [orderStatus] 
/// * [statusLabel] 
/// * [paymentMethod] 
/// * [orderType] 
/// * [scheduleAt] 
/// * [scheduled] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [pending] 
/// * [accepted] 
/// * [confirmed] 
/// * [processing] 
/// * [handover] 
/// * [pickedUp] 
/// * [delivered] 
/// * [canceled] 
/// * [deliveryAddress] 
/// * [restaurant] 
/// * [deliveryMan] 
/// * [detailsCount] 
/// * [dmTips] 
/// * [deliveryManId] 
/// * [cancellationReason] 
/// * [canceledBy] 
@BuiltValue()
abstract class ConsumerOrderTrackData implements Built<ConsumerOrderTrackData, ConsumerOrderTrackDataBuilder> {
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

  @BuiltValueField(wireName: r'payment_status')
  String? get paymentStatus;

  @BuiltValueField(wireName: r'order_status')
  String? get orderStatus;

  @BuiltValueField(wireName: r'status_label')
  String? get statusLabel;

  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: r'order_type')
  String? get orderType;

  @BuiltValueField(wireName: r'schedule_at')
  DateTime? get scheduleAt;

  @BuiltValueField(wireName: r'scheduled')
  bool? get scheduled;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'pending')
  DateTime? get pending;

  @BuiltValueField(wireName: r'accepted')
  DateTime? get accepted;

  @BuiltValueField(wireName: r'confirmed')
  DateTime? get confirmed;

  @BuiltValueField(wireName: r'processing')
  DateTime? get processing;

  @BuiltValueField(wireName: r'handover')
  DateTime? get handover;

  @BuiltValueField(wireName: r'picked_up')
  DateTime? get pickedUp;

  @BuiltValueField(wireName: r'delivered')
  DateTime? get delivered;

  @BuiltValueField(wireName: r'canceled')
  DateTime? get canceled;

  @BuiltValueField(wireName: r'delivery_address')
  BuiltMap<String, JsonObject?>? get deliveryAddress;

  @BuiltValueField(wireName: r'restaurant')
  ConsumerOrderTrackRestaurant? get restaurant;

  @BuiltValueField(wireName: r'delivery_man')
  ConsumerOrderTrackDeliveryMan? get deliveryMan;

  @BuiltValueField(wireName: r'details_count')
  int? get detailsCount;

  @BuiltValueField(wireName: r'dm_tips')
  num? get dmTips;

  @BuiltValueField(wireName: r'delivery_man_id')
  String? get deliveryManId;

  @BuiltValueField(wireName: r'cancellation_reason')
  String? get cancellationReason;

  @BuiltValueField(wireName: r'canceled_by')
  String? get canceledBy;

  ConsumerOrderTrackData._();

  factory ConsumerOrderTrackData([void updates(ConsumerOrderTrackDataBuilder b)]) = _$ConsumerOrderTrackData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerOrderTrackDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerOrderTrackData> get serializer => _$ConsumerOrderTrackDataSerializer();
}

class _$ConsumerOrderTrackDataSerializer implements PrimitiveSerializer<ConsumerOrderTrackData> {
  @override
  final Iterable<Type> types = const [ConsumerOrderTrackData, _$ConsumerOrderTrackData];

  @override
  final String wireName = r'ConsumerOrderTrackData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerOrderTrackData object, {
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
    if (object.statusLabel != null) {
      yield r'status_label';
      yield serializers.serialize(
        object.statusLabel,
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
    if (object.scheduleAt != null) {
      yield r'schedule_at';
      yield serializers.serialize(
        object.scheduleAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.scheduled != null) {
      yield r'scheduled';
      yield serializers.serialize(
        object.scheduled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.pending != null) {
      yield r'pending';
      yield serializers.serialize(
        object.pending,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.accepted != null) {
      yield r'accepted';
      yield serializers.serialize(
        object.accepted,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.confirmed != null) {
      yield r'confirmed';
      yield serializers.serialize(
        object.confirmed,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.processing != null) {
      yield r'processing';
      yield serializers.serialize(
        object.processing,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.handover != null) {
      yield r'handover';
      yield serializers.serialize(
        object.handover,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.pickedUp != null) {
      yield r'picked_up';
      yield serializers.serialize(
        object.pickedUp,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.delivered != null) {
      yield r'delivered';
      yield serializers.serialize(
        object.delivered,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.canceled != null) {
      yield r'canceled';
      yield serializers.serialize(
        object.canceled,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.deliveryAddress != null) {
      yield r'delivery_address';
      yield serializers.serialize(
        object.deliveryAddress,
        specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType.nullable(ConsumerOrderTrackRestaurant),
      );
    }
    if (object.deliveryMan != null) {
      yield r'delivery_man';
      yield serializers.serialize(
        object.deliveryMan,
        specifiedType: const FullType.nullable(ConsumerOrderTrackDeliveryMan),
      );
    }
    if (object.detailsCount != null) {
      yield r'details_count';
      yield serializers.serialize(
        object.detailsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.dmTips != null) {
      yield r'dm_tips';
      yield serializers.serialize(
        object.dmTips,
        specifiedType: const FullType(num),
      );
    }
    if (object.deliveryManId != null) {
      yield r'delivery_man_id';
      yield serializers.serialize(
        object.deliveryManId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cancellationReason != null) {
      yield r'cancellation_reason';
      yield serializers.serialize(
        object.cancellationReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.canceledBy != null) {
      yield r'canceled_by';
      yield serializers.serialize(
        object.canceledBy,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerOrderTrackData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerOrderTrackDataBuilder result,
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
        case r'status_label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusLabel = valueDes;
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
        case r'schedule_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.scheduleAt = valueDes;
          break;
        case r'scheduled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scheduled = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.pending = valueDes;
          break;
        case r'accepted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.accepted = valueDes;
          break;
        case r'confirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.confirmed = valueDes;
          break;
        case r'processing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.processing = valueDes;
          break;
        case r'handover':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.handover = valueDes;
          break;
        case r'picked_up':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.pickedUp = valueDes;
          break;
        case r'delivered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.delivered = valueDes;
          break;
        case r'canceled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.canceled = valueDes;
          break;
        case r'delivery_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.deliveryAddress.replace(valueDes);
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerOrderTrackRestaurant),
          ) as ConsumerOrderTrackRestaurant?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        case r'delivery_man':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerOrderTrackDeliveryMan),
          ) as ConsumerOrderTrackDeliveryMan?;
          if (valueDes == null) continue;
          result.deliveryMan.replace(valueDes);
          break;
        case r'details_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.detailsCount = valueDes;
          break;
        case r'dm_tips':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.dmTips = valueDes;
          break;
        case r'delivery_man_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deliveryManId = valueDes;
          break;
        case r'cancellation_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cancellationReason = valueDes;
          break;
        case r'canceled_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.canceledBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerOrderTrackData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerOrderTrackDataBuilder();
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



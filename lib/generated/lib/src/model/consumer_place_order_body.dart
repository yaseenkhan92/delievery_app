//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/consumer_place_order_line_item.dart';
import 'package:openapi/src/model/place_order_request_latitude.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_place_order_body.g.dart';

/// ConsumerPlaceOrderBody
///
/// Properties:
/// * [restaurantId] 
/// * [orderAmount] - Optional; server recalculates final amount
/// * [paymentMethod] 
/// * [orderType] 
/// * [distance] - Required when order_type is delivery
/// * [deliveryAddressId] - Saved address id from /consumer/addresses
/// * [address] - Required for delivery if delivery_address_id omitted
/// * [latitude] 
/// * [longitude] 
/// * [addressType] 
/// * [floor] 
/// * [road] 
/// * [house] 
/// * [contactPersonName] 
/// * [contactPersonNumber] 
/// * [contactPersonEmail] 
/// * [scheduleAt] - Preference time / scheduled slot
/// * [dmTips] 
/// * [couponCode] 
/// * [orderNote] 
/// * [deliveryInstruction] 
/// * [unavailableItemNote] 
/// * [cutlery] 
/// * [extraPackagingAmount] 
/// * [partialPayment] 
/// * [isBuyNow] 
/// * [cartId] - Order only this cart row when not buy-now
/// * [cart] 
/// * [items] 
/// * [guestId] - Required for guest checkout when no Bearer token
/// * [isGuest] 
@BuiltValue()
abstract class ConsumerPlaceOrderBody implements Built<ConsumerPlaceOrderBody, ConsumerPlaceOrderBodyBuilder> {
  @BuiltValueField(wireName: r'restaurant_id')
  num get restaurantId;

  /// Optional; server recalculates final amount
  @BuiltValueField(wireName: r'order_amount')
  num? get orderAmount;

  @BuiltValueField(wireName: r'payment_method')
  ConsumerPlaceOrderBodyPaymentMethodEnum? get paymentMethod;
  // enum paymentMethodEnum {  cash_on_delivery,  digital_payment,  wallet,  offline_payment,  };

  @BuiltValueField(wireName: r'order_type')
  ConsumerPlaceOrderBodyOrderTypeEnum? get orderType;
  // enum orderTypeEnum {  delivery,  take_away,  dine_in,  };

  /// Required when order_type is delivery
  @BuiltValueField(wireName: r'distance')
  num? get distance;

  /// Saved address id from /consumer/addresses
  @BuiltValueField(wireName: r'delivery_address_id')
  num? get deliveryAddressId;

  /// Required for delivery if delivery_address_id omitted
  @BuiltValueField(wireName: r'address')
  String? get address;

  @BuiltValueField(wireName: r'latitude')
  PlaceOrderRequestLatitude? get latitude;

  @BuiltValueField(wireName: r'longitude')
  PlaceOrderRequestLatitude? get longitude;

  @BuiltValueField(wireName: r'address_type')
  String? get addressType;

  @BuiltValueField(wireName: r'floor')
  String? get floor;

  @BuiltValueField(wireName: r'road')
  String? get road;

  @BuiltValueField(wireName: r'house')
  String? get house;

  @BuiltValueField(wireName: r'contact_person_name')
  String? get contactPersonName;

  @BuiltValueField(wireName: r'contact_person_number')
  String? get contactPersonNumber;

  @BuiltValueField(wireName: r'contact_person_email')
  String? get contactPersonEmail;

  /// Preference time / scheduled slot
  @BuiltValueField(wireName: r'schedule_at')
  DateTime? get scheduleAt;

  @BuiltValueField(wireName: r'dm_tips')
  num? get dmTips;

  @BuiltValueField(wireName: r'coupon_code')
  String? get couponCode;

  @BuiltValueField(wireName: r'order_note')
  String? get orderNote;

  @BuiltValueField(wireName: r'delivery_instruction')
  String? get deliveryInstruction;

  @BuiltValueField(wireName: r'unavailable_item_note')
  String? get unavailableItemNote;

  @BuiltValueField(wireName: r'cutlery')
  bool? get cutlery;

  @BuiltValueField(wireName: r'extra_packaging_amount')
  num? get extraPackagingAmount;

  @BuiltValueField(wireName: r'partial_payment')
  bool? get partialPayment;

  @BuiltValueField(wireName: r'is_buy_now')
  bool? get isBuyNow;

  /// Order only this cart row when not buy-now
  @BuiltValueField(wireName: r'cart_id')
  num? get cartId;

  @BuiltValueField(wireName: r'cart')
  BuiltList<ConsumerPlaceOrderLineItem>? get cart;

  @BuiltValueField(wireName: r'items')
  BuiltList<ConsumerPlaceOrderLineItem>? get items;

  /// Required for guest checkout when no Bearer token
  @BuiltValueField(wireName: r'guest_id')
  num? get guestId;

  @BuiltValueField(wireName: r'is_guest')
  bool? get isGuest;

  ConsumerPlaceOrderBody._();

  factory ConsumerPlaceOrderBody([void updates(ConsumerPlaceOrderBodyBuilder b)]) = _$ConsumerPlaceOrderBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerPlaceOrderBodyBuilder b) => b
      ..paymentMethod = ConsumerPlaceOrderBodyPaymentMethodEnum.valueOf('cash_on_delivery')
      ..orderType = ConsumerPlaceOrderBodyOrderTypeEnum.valueOf('delivery')
      ..isBuyNow = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerPlaceOrderBody> get serializer => _$ConsumerPlaceOrderBodySerializer();
}

class _$ConsumerPlaceOrderBodySerializer implements PrimitiveSerializer<ConsumerPlaceOrderBody> {
  @override
  final Iterable<Type> types = const [ConsumerPlaceOrderBody, _$ConsumerPlaceOrderBody];

  @override
  final String wireName = r'ConsumerPlaceOrderBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerPlaceOrderBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'restaurant_id';
    yield serializers.serialize(
      object.restaurantId,
      specifiedType: const FullType(num),
    );
    if (object.orderAmount != null) {
      yield r'order_amount';
      yield serializers.serialize(
        object.orderAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.paymentMethod != null) {
      yield r'payment_method';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType(ConsumerPlaceOrderBodyPaymentMethodEnum),
      );
    }
    if (object.orderType != null) {
      yield r'order_type';
      yield serializers.serialize(
        object.orderType,
        specifiedType: const FullType(ConsumerPlaceOrderBodyOrderTypeEnum),
      );
    }
    if (object.distance != null) {
      yield r'distance';
      yield serializers.serialize(
        object.distance,
        specifiedType: const FullType(num),
      );
    }
    if (object.deliveryAddressId != null) {
      yield r'delivery_address_id';
      yield serializers.serialize(
        object.deliveryAddressId,
        specifiedType: const FullType(num),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(String),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType(PlaceOrderRequestLatitude),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType(PlaceOrderRequestLatitude),
      );
    }
    if (object.addressType != null) {
      yield r'address_type';
      yield serializers.serialize(
        object.addressType,
        specifiedType: const FullType(String),
      );
    }
    if (object.floor != null) {
      yield r'floor';
      yield serializers.serialize(
        object.floor,
        specifiedType: const FullType(String),
      );
    }
    if (object.road != null) {
      yield r'road';
      yield serializers.serialize(
        object.road,
        specifiedType: const FullType(String),
      );
    }
    if (object.house != null) {
      yield r'house';
      yield serializers.serialize(
        object.house,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactPersonName != null) {
      yield r'contact_person_name';
      yield serializers.serialize(
        object.contactPersonName,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactPersonNumber != null) {
      yield r'contact_person_number';
      yield serializers.serialize(
        object.contactPersonNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactPersonEmail != null) {
      yield r'contact_person_email';
      yield serializers.serialize(
        object.contactPersonEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.scheduleAt != null) {
      yield r'schedule_at';
      yield serializers.serialize(
        object.scheduleAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.dmTips != null) {
      yield r'dm_tips';
      yield serializers.serialize(
        object.dmTips,
        specifiedType: const FullType(num),
      );
    }
    if (object.couponCode != null) {
      yield r'coupon_code';
      yield serializers.serialize(
        object.couponCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderNote != null) {
      yield r'order_note';
      yield serializers.serialize(
        object.orderNote,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryInstruction != null) {
      yield r'delivery_instruction';
      yield serializers.serialize(
        object.deliveryInstruction,
        specifiedType: const FullType(String),
      );
    }
    if (object.unavailableItemNote != null) {
      yield r'unavailable_item_note';
      yield serializers.serialize(
        object.unavailableItemNote,
        specifiedType: const FullType(String),
      );
    }
    if (object.cutlery != null) {
      yield r'cutlery';
      yield serializers.serialize(
        object.cutlery,
        specifiedType: const FullType(bool),
      );
    }
    if (object.extraPackagingAmount != null) {
      yield r'extra_packaging_amount';
      yield serializers.serialize(
        object.extraPackagingAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.partialPayment != null) {
      yield r'partial_payment';
      yield serializers.serialize(
        object.partialPayment,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isBuyNow != null) {
      yield r'is_buy_now';
      yield serializers.serialize(
        object.isBuyNow,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cartId != null) {
      yield r'cart_id';
      yield serializers.serialize(
        object.cartId,
        specifiedType: const FullType(num),
      );
    }
    if (object.cart != null) {
      yield r'cart';
      yield serializers.serialize(
        object.cart,
        specifiedType: const FullType(BuiltList, [FullType(ConsumerPlaceOrderLineItem)]),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(ConsumerPlaceOrderLineItem)]),
      );
    }
    if (object.guestId != null) {
      yield r'guest_id';
      yield serializers.serialize(
        object.guestId,
        specifiedType: const FullType(num),
      );
    }
    if (object.isGuest != null) {
      yield r'is_guest';
      yield serializers.serialize(
        object.isGuest,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerPlaceOrderBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerPlaceOrderBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restaurant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
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
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerPlaceOrderBodyPaymentMethodEnum),
          ) as ConsumerPlaceOrderBodyPaymentMethodEnum?;
          if (valueDes == null) continue;
          result.paymentMethod = valueDes;
          break;
        case r'order_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerPlaceOrderBodyOrderTypeEnum),
          ) as ConsumerPlaceOrderBodyOrderTypeEnum?;
          if (valueDes == null) continue;
          result.orderType = valueDes;
          break;
        case r'distance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.distance = valueDes;
          break;
        case r'delivery_address_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.deliveryAddressId = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceOrderRequestLatitude),
          ) as PlaceOrderRequestLatitude?;
          if (valueDes == null) continue;
          result.latitude.replace(valueDes);
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlaceOrderRequestLatitude),
          ) as PlaceOrderRequestLatitude?;
          if (valueDes == null) continue;
          result.longitude.replace(valueDes);
          break;
        case r'address_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.addressType = valueDes;
          break;
        case r'floor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.floor = valueDes;
          break;
        case r'road':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.road = valueDes;
          break;
        case r'house':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.house = valueDes;
          break;
        case r'contact_person_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactPersonName = valueDes;
          break;
        case r'contact_person_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactPersonNumber = valueDes;
          break;
        case r'contact_person_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactPersonEmail = valueDes;
          break;
        case r'schedule_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.scheduleAt = valueDes;
          break;
        case r'dm_tips':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.dmTips = valueDes;
          break;
        case r'coupon_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.couponCode = valueDes;
          break;
        case r'order_note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderNote = valueDes;
          break;
        case r'delivery_instruction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deliveryInstruction = valueDes;
          break;
        case r'unavailable_item_note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unavailableItemNote = valueDes;
          break;
        case r'cutlery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.cutlery = valueDes;
          break;
        case r'extra_packaging_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.extraPackagingAmount = valueDes;
          break;
        case r'partial_payment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.partialPayment = valueDes;
          break;
        case r'is_buy_now':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isBuyNow = valueDes;
          break;
        case r'cart_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.cartId = valueDes;
          break;
        case r'cart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ConsumerPlaceOrderLineItem)]),
          ) as BuiltList<ConsumerPlaceOrderLineItem>?;
          if (valueDes == null) continue;
          result.cart.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ConsumerPlaceOrderLineItem)]),
          ) as BuiltList<ConsumerPlaceOrderLineItem>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'guest_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.guestId = valueDes;
          break;
        case r'is_guest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isGuest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerPlaceOrderBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerPlaceOrderBodyBuilder();
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


class ConsumerPlaceOrderBodyPaymentMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'cash_on_delivery')
  static const ConsumerPlaceOrderBodyPaymentMethodEnum cashOnDelivery = _$consumerPlaceOrderBodyPaymentMethodEnum_cashOnDelivery;
  @BuiltValueEnumConst(wireName: r'digital_payment')
  static const ConsumerPlaceOrderBodyPaymentMethodEnum digitalPayment = _$consumerPlaceOrderBodyPaymentMethodEnum_digitalPayment;
  @BuiltValueEnumConst(wireName: r'wallet')
  static const ConsumerPlaceOrderBodyPaymentMethodEnum wallet = _$consumerPlaceOrderBodyPaymentMethodEnum_wallet;
  @BuiltValueEnumConst(wireName: r'offline_payment')
  static const ConsumerPlaceOrderBodyPaymentMethodEnum offlinePayment = _$consumerPlaceOrderBodyPaymentMethodEnum_offlinePayment;

  static Serializer<ConsumerPlaceOrderBodyPaymentMethodEnum> get serializer => _$consumerPlaceOrderBodyPaymentMethodEnumSerializer;

  const ConsumerPlaceOrderBodyPaymentMethodEnum._(String name): super(name);

  static BuiltSet<ConsumerPlaceOrderBodyPaymentMethodEnum> get values => _$consumerPlaceOrderBodyPaymentMethodEnumValues;
  static ConsumerPlaceOrderBodyPaymentMethodEnum valueOf(String name) => _$consumerPlaceOrderBodyPaymentMethodEnumValueOf(name);
}

class ConsumerPlaceOrderBodyOrderTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'delivery')
  static const ConsumerPlaceOrderBodyOrderTypeEnum delivery = _$consumerPlaceOrderBodyOrderTypeEnum_delivery;
  @BuiltValueEnumConst(wireName: r'take_away')
  static const ConsumerPlaceOrderBodyOrderTypeEnum takeAway = _$consumerPlaceOrderBodyOrderTypeEnum_takeAway;
  @BuiltValueEnumConst(wireName: r'dine_in')
  static const ConsumerPlaceOrderBodyOrderTypeEnum dineIn = _$consumerPlaceOrderBodyOrderTypeEnum_dineIn;

  static Serializer<ConsumerPlaceOrderBodyOrderTypeEnum> get serializer => _$consumerPlaceOrderBodyOrderTypeEnumSerializer;

  const ConsumerPlaceOrderBodyOrderTypeEnum._(String name): super(name);

  static BuiltSet<ConsumerPlaceOrderBodyOrderTypeEnum> get values => _$consumerPlaceOrderBodyOrderTypeEnumValues;
  static ConsumerPlaceOrderBodyOrderTypeEnum valueOf(String name) => _$consumerPlaceOrderBodyOrderTypeEnumValueOf(name);
}


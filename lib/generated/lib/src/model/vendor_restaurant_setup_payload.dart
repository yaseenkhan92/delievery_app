//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_restaurant_setup_payload_translations_value.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_options.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_schedule_item.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_flags.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_setup_payload.g.dart';

/// Restaurant config screen state
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [active] 
/// * [scheduleOrder] 
/// * [delivery] 
/// * [takeAway] 
/// * [freeDelivery] 
/// * [veg] 
/// * [nonVeg] 
/// * [orderSubscriptionActive] 
/// * [cutlery] 
/// * [manualDispatch] 
/// * [instantOrder] 
/// * [customerDateOrderSratus] 
/// * [customerOrderDate] 
/// * [halalTagStatus] 
/// * [isExtraPackagingActive] 
/// * [extraPackagingStatus] 
/// * [extraPackagingAmount] 
/// * [dineIn] 
/// * [scheduleAdvanceDineInBookingDuration] 
/// * [scheduleAdvanceDineInBookingDurationTimeFormat] 
/// * [minimumOrder] 
/// * [gstStatus] 
/// * [gstCode] 
/// * [minimumDeliveryCharge] 
/// * [perKmDeliveryCharge] 
/// * [maximumShippingCharge] 
/// * [freeDeliveryDistanceStatus] 
/// * [freeDeliveryDistance] 
/// * [cuisineIds] 
/// * [tags] 
/// * [characteristics] 
/// * [metaTitle] 
/// * [metaDescription] 
/// * [metaImage] 
/// * [metaImageUrl] 
/// * [translations] 
/// * [schedules] 
/// * [options] 
/// * [flags] 
@BuiltValue()
abstract class VendorRestaurantSetupPayload implements Built<VendorRestaurantSetupPayload, VendorRestaurantSetupPayloadBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  @BuiltValueField(wireName: r'schedule_order')
  bool? get scheduleOrder;

  @BuiltValueField(wireName: r'delivery')
  bool? get delivery;

  @BuiltValueField(wireName: r'take_away')
  bool? get takeAway;

  @BuiltValueField(wireName: r'free_delivery')
  bool? get freeDelivery;

  @BuiltValueField(wireName: r'veg')
  bool? get veg;

  @BuiltValueField(wireName: r'non_veg')
  bool? get nonVeg;

  @BuiltValueField(wireName: r'order_subscription_active')
  bool? get orderSubscriptionActive;

  @BuiltValueField(wireName: r'cutlery')
  bool? get cutlery;

  @BuiltValueField(wireName: r'manual_dispatch')
  bool? get manualDispatch;

  @BuiltValueField(wireName: r'instant_order')
  bool? get instantOrder;

  @BuiltValueField(wireName: r'customer_date_order_sratus')
  bool? get customerDateOrderSratus;

  @BuiltValueField(wireName: r'customer_order_date')
  int? get customerOrderDate;

  @BuiltValueField(wireName: r'halal_tag_status')
  bool? get halalTagStatus;

  @BuiltValueField(wireName: r'is_extra_packaging_active')
  bool? get isExtraPackagingActive;

  @BuiltValueField(wireName: r'extra_packaging_status')
  bool? get extraPackagingStatus;

  @BuiltValueField(wireName: r'extra_packaging_amount')
  JsonObject? get extraPackagingAmount;

  @BuiltValueField(wireName: r'dine_in')
  bool? get dineIn;

  @BuiltValueField(wireName: r'schedule_advance_dine_in_booking_duration')
  int? get scheduleAdvanceDineInBookingDuration;

  @BuiltValueField(wireName: r'schedule_advance_dine_in_booking_duration_time_format')
  String? get scheduleAdvanceDineInBookingDurationTimeFormat;

  @BuiltValueField(wireName: r'minimum_order')
  num? get minimumOrder;

  @BuiltValueField(wireName: r'gst_status')
  bool? get gstStatus;

  @BuiltValueField(wireName: r'gst_code')
  String? get gstCode;

  @BuiltValueField(wireName: r'minimum_delivery_charge')
  num? get minimumDeliveryCharge;

  @BuiltValueField(wireName: r'per_km_delivery_charge')
  num? get perKmDeliveryCharge;

  @BuiltValueField(wireName: r'maximum_shipping_charge')
  num? get maximumShippingCharge;

  @BuiltValueField(wireName: r'free_delivery_distance_status')
  bool? get freeDeliveryDistanceStatus;

  @BuiltValueField(wireName: r'free_delivery_distance')
  String? get freeDeliveryDistance;

  @BuiltValueField(wireName: r'cuisine_ids')
  BuiltList<int>? get cuisineIds;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'characteristics')
  BuiltList<String>? get characteristics;

  @BuiltValueField(wireName: r'meta_title')
  String? get metaTitle;

  @BuiltValueField(wireName: r'meta_description')
  String? get metaDescription;

  @BuiltValueField(wireName: r'meta_image')
  String? get metaImage;

  @BuiltValueField(wireName: r'meta_image_url')
  String? get metaImageUrl;

  @BuiltValueField(wireName: r'translations')
  BuiltMap<String, VendorRestaurantSetupPayloadTranslationsValue>? get translations;

  @BuiltValueField(wireName: r'schedules')
  BuiltList<VendorRestaurantSetupScheduleItem>? get schedules;

  @BuiltValueField(wireName: r'options')
  VendorRestaurantSetupOptions? get options;

  @BuiltValueField(wireName: r'flags')
  VendorRestaurantSetupFlags? get flags;

  VendorRestaurantSetupPayload._();

  factory VendorRestaurantSetupPayload([void updates(VendorRestaurantSetupPayloadBuilder b)]) = _$VendorRestaurantSetupPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantSetupPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantSetupPayload> get serializer => _$VendorRestaurantSetupPayloadSerializer();
}

class _$VendorRestaurantSetupPayloadSerializer implements PrimitiveSerializer<VendorRestaurantSetupPayload> {
  @override
  final Iterable<Type> types = const [VendorRestaurantSetupPayload, _$VendorRestaurantSetupPayload];

  @override
  final String wireName = r'VendorRestaurantSetupPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantSetupPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scheduleOrder != null) {
      yield r'schedule_order';
      yield serializers.serialize(
        object.scheduleOrder,
        specifiedType: const FullType(bool),
      );
    }
    if (object.delivery != null) {
      yield r'delivery';
      yield serializers.serialize(
        object.delivery,
        specifiedType: const FullType(bool),
      );
    }
    if (object.takeAway != null) {
      yield r'take_away';
      yield serializers.serialize(
        object.takeAway,
        specifiedType: const FullType(bool),
      );
    }
    if (object.freeDelivery != null) {
      yield r'free_delivery';
      yield serializers.serialize(
        object.freeDelivery,
        specifiedType: const FullType(bool),
      );
    }
    if (object.veg != null) {
      yield r'veg';
      yield serializers.serialize(
        object.veg,
        specifiedType: const FullType(bool),
      );
    }
    if (object.nonVeg != null) {
      yield r'non_veg';
      yield serializers.serialize(
        object.nonVeg,
        specifiedType: const FullType(bool),
      );
    }
    if (object.orderSubscriptionActive != null) {
      yield r'order_subscription_active';
      yield serializers.serialize(
        object.orderSubscriptionActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cutlery != null) {
      yield r'cutlery';
      yield serializers.serialize(
        object.cutlery,
        specifiedType: const FullType(bool),
      );
    }
    if (object.manualDispatch != null) {
      yield r'manual_dispatch';
      yield serializers.serialize(
        object.manualDispatch,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.instantOrder != null) {
      yield r'instant_order';
      yield serializers.serialize(
        object.instantOrder,
        specifiedType: const FullType(bool),
      );
    }
    if (object.customerDateOrderSratus != null) {
      yield r'customer_date_order_sratus';
      yield serializers.serialize(
        object.customerDateOrderSratus,
        specifiedType: const FullType(bool),
      );
    }
    if (object.customerOrderDate != null) {
      yield r'customer_order_date';
      yield serializers.serialize(
        object.customerOrderDate,
        specifiedType: const FullType(int),
      );
    }
    if (object.halalTagStatus != null) {
      yield r'halal_tag_status';
      yield serializers.serialize(
        object.halalTagStatus,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isExtraPackagingActive != null) {
      yield r'is_extra_packaging_active';
      yield serializers.serialize(
        object.isExtraPackagingActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.extraPackagingStatus != null) {
      yield r'extra_packaging_status';
      yield serializers.serialize(
        object.extraPackagingStatus,
        specifiedType: const FullType(bool),
      );
    }
    if (object.extraPackagingAmount != null) {
      yield r'extra_packaging_amount';
      yield serializers.serialize(
        object.extraPackagingAmount,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.dineIn != null) {
      yield r'dine_in';
      yield serializers.serialize(
        object.dineIn,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scheduleAdvanceDineInBookingDuration != null) {
      yield r'schedule_advance_dine_in_booking_duration';
      yield serializers.serialize(
        object.scheduleAdvanceDineInBookingDuration,
        specifiedType: const FullType(int),
      );
    }
    if (object.scheduleAdvanceDineInBookingDurationTimeFormat != null) {
      yield r'schedule_advance_dine_in_booking_duration_time_format';
      yield serializers.serialize(
        object.scheduleAdvanceDineInBookingDurationTimeFormat,
        specifiedType: const FullType(String),
      );
    }
    if (object.minimumOrder != null) {
      yield r'minimum_order';
      yield serializers.serialize(
        object.minimumOrder,
        specifiedType: const FullType(num),
      );
    }
    if (object.gstStatus != null) {
      yield r'gst_status';
      yield serializers.serialize(
        object.gstStatus,
        specifiedType: const FullType(bool),
      );
    }
    if (object.gstCode != null) {
      yield r'gst_code';
      yield serializers.serialize(
        object.gstCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.minimumDeliveryCharge != null) {
      yield r'minimum_delivery_charge';
      yield serializers.serialize(
        object.minimumDeliveryCharge,
        specifiedType: const FullType(num),
      );
    }
    if (object.perKmDeliveryCharge != null) {
      yield r'per_km_delivery_charge';
      yield serializers.serialize(
        object.perKmDeliveryCharge,
        specifiedType: const FullType(num),
      );
    }
    if (object.maximumShippingCharge != null) {
      yield r'maximum_shipping_charge';
      yield serializers.serialize(
        object.maximumShippingCharge,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.freeDeliveryDistanceStatus != null) {
      yield r'free_delivery_distance_status';
      yield serializers.serialize(
        object.freeDeliveryDistanceStatus,
        specifiedType: const FullType(bool),
      );
    }
    if (object.freeDeliveryDistance != null) {
      yield r'free_delivery_distance';
      yield serializers.serialize(
        object.freeDeliveryDistance,
        specifiedType: const FullType(String),
      );
    }
    if (object.cuisineIds != null) {
      yield r'cuisine_ids';
      yield serializers.serialize(
        object.cuisineIds,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.characteristics != null) {
      yield r'characteristics';
      yield serializers.serialize(
        object.characteristics,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.metaTitle != null) {
      yield r'meta_title';
      yield serializers.serialize(
        object.metaTitle,
        specifiedType: const FullType(String),
      );
    }
    if (object.metaDescription != null) {
      yield r'meta_description';
      yield serializers.serialize(
        object.metaDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.metaImage != null) {
      yield r'meta_image';
      yield serializers.serialize(
        object.metaImage,
        specifiedType: const FullType(String),
      );
    }
    if (object.metaImageUrl != null) {
      yield r'meta_image_url';
      yield serializers.serialize(
        object.metaImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.translations != null) {
      yield r'translations';
      yield serializers.serialize(
        object.translations,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(VendorRestaurantSetupPayloadTranslationsValue)]),
      );
    }
    if (object.schedules != null) {
      yield r'schedules';
      yield serializers.serialize(
        object.schedules,
        specifiedType: const FullType(BuiltList, [FullType(VendorRestaurantSetupScheduleItem)]),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(VendorRestaurantSetupOptions),
      );
    }
    if (object.flags != null) {
      yield r'flags';
      yield serializers.serialize(
        object.flags,
        specifiedType: const FullType(VendorRestaurantSetupFlags),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantSetupPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantSetupPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        case r'schedule_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scheduleOrder = valueDes;
          break;
        case r'delivery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.delivery = valueDes;
          break;
        case r'take_away':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.takeAway = valueDes;
          break;
        case r'free_delivery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.freeDelivery = valueDes;
          break;
        case r'veg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.veg = valueDes;
          break;
        case r'non_veg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.nonVeg = valueDes;
          break;
        case r'order_subscription_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.orderSubscriptionActive = valueDes;
          break;
        case r'cutlery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.cutlery = valueDes;
          break;
        case r'manual_dispatch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.manualDispatch = valueDes;
          break;
        case r'instant_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.instantOrder = valueDes;
          break;
        case r'customer_date_order_sratus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.customerDateOrderSratus = valueDes;
          break;
        case r'customer_order_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.customerOrderDate = valueDes;
          break;
        case r'halal_tag_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.halalTagStatus = valueDes;
          break;
        case r'is_extra_packaging_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isExtraPackagingActive = valueDes;
          break;
        case r'extra_packaging_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.extraPackagingStatus = valueDes;
          break;
        case r'extra_packaging_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.extraPackagingAmount = valueDes;
          break;
        case r'dine_in':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.dineIn = valueDes;
          break;
        case r'schedule_advance_dine_in_booking_duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.scheduleAdvanceDineInBookingDuration = valueDes;
          break;
        case r'schedule_advance_dine_in_booking_duration_time_format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.scheduleAdvanceDineInBookingDurationTimeFormat = valueDes;
          break;
        case r'minimum_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minimumOrder = valueDes;
          break;
        case r'gst_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.gstStatus = valueDes;
          break;
        case r'gst_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gstCode = valueDes;
          break;
        case r'minimum_delivery_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minimumDeliveryCharge = valueDes;
          break;
        case r'per_km_delivery_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.perKmDeliveryCharge = valueDes;
          break;
        case r'maximum_shipping_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maximumShippingCharge = valueDes;
          break;
        case r'free_delivery_distance_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.freeDeliveryDistanceStatus = valueDes;
          break;
        case r'free_delivery_distance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.freeDeliveryDistance = valueDes;
          break;
        case r'cuisine_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.cuisineIds.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'characteristics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.characteristics.replace(valueDes);
          break;
        case r'meta_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.metaTitle = valueDes;
          break;
        case r'meta_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.metaDescription = valueDes;
          break;
        case r'meta_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.metaImage = valueDes;
          break;
        case r'meta_image_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.metaImageUrl = valueDes;
          break;
        case r'translations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(VendorRestaurantSetupPayloadTranslationsValue)]),
          ) as BuiltMap<String, VendorRestaurantSetupPayloadTranslationsValue>?;
          if (valueDes == null) continue;
          result.translations.replace(valueDes);
          break;
        case r'schedules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(VendorRestaurantSetupScheduleItem)]),
          ) as BuiltList<VendorRestaurantSetupScheduleItem>?;
          if (valueDes == null) continue;
          result.schedules.replace(valueDes);
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorRestaurantSetupOptions),
          ) as VendorRestaurantSetupOptions?;
          if (valueDes == null) continue;
          result.options.replace(valueDes);
          break;
        case r'flags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorRestaurantSetupFlags),
          ) as VendorRestaurantSetupFlags?;
          if (valueDes == null) continue;
          result.flags.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantSetupPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantSetupPayloadBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_business_setup_body.g.dart';

/// VendorRestaurantBusinessSetupBody
///
/// Properties:
/// * [minimumOrder] 
/// * [gstStatus] 
/// * [gstCode] 
/// * [cuisineIds] 
/// * [tags] 
/// * [characteristics] 
/// * [customerOrderDate] 
/// * [extraPackagingStatus] 
/// * [extraPackagingAmount] 
/// * [minimumDeliveryCharge] 
/// * [perKmDeliveryCharge] 
/// * [maximumShippingCharge] 
/// * [freeDeliveryDistanceStatus] 
/// * [freeDeliveryDistance] 
/// * [scheduleAdvanceDineInBookingDuration] 
/// * [scheduleAdvanceDineInBookingDurationTimeFormat] 
@BuiltValue()
abstract class VendorRestaurantBusinessSetupBody implements Built<VendorRestaurantBusinessSetupBody, VendorRestaurantBusinessSetupBodyBuilder> {
  @BuiltValueField(wireName: r'minimum_order')
  num get minimumOrder;

  @BuiltValueField(wireName: r'gst_status')
  bool get gstStatus;

  @BuiltValueField(wireName: r'gst_code')
  String get gstCode;

  @BuiltValueField(wireName: r'cuisine_ids')
  BuiltList<int>? get cuisineIds;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'characteristics')
  BuiltList<String>? get characteristics;

  @BuiltValueField(wireName: r'customer_order_date')
  int? get customerOrderDate;

  @BuiltValueField(wireName: r'extra_packaging_status')
  bool? get extraPackagingStatus;

  @BuiltValueField(wireName: r'extra_packaging_amount')
  num? get extraPackagingAmount;

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

  @BuiltValueField(wireName: r'schedule_advance_dine_in_booking_duration')
  int? get scheduleAdvanceDineInBookingDuration;

  @BuiltValueField(wireName: r'schedule_advance_dine_in_booking_duration_time_format')
  VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum? get scheduleAdvanceDineInBookingDurationTimeFormat;
  // enum scheduleAdvanceDineInBookingDurationTimeFormatEnum {  min,  hour,  day,  };

  VendorRestaurantBusinessSetupBody._();

  factory VendorRestaurantBusinessSetupBody([void updates(VendorRestaurantBusinessSetupBodyBuilder b)]) = _$VendorRestaurantBusinessSetupBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantBusinessSetupBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantBusinessSetupBody> get serializer => _$VendorRestaurantBusinessSetupBodySerializer();
}

class _$VendorRestaurantBusinessSetupBodySerializer implements PrimitiveSerializer<VendorRestaurantBusinessSetupBody> {
  @override
  final Iterable<Type> types = const [VendorRestaurantBusinessSetupBody, _$VendorRestaurantBusinessSetupBody];

  @override
  final String wireName = r'VendorRestaurantBusinessSetupBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantBusinessSetupBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'minimum_order';
    yield serializers.serialize(
      object.minimumOrder,
      specifiedType: const FullType(num),
    );
    yield r'gst_status';
    yield serializers.serialize(
      object.gstStatus,
      specifiedType: const FullType(bool),
    );
    yield r'gst_code';
    yield serializers.serialize(
      object.gstCode,
      specifiedType: const FullType(String),
    );
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
    if (object.customerOrderDate != null) {
      yield r'customer_order_date';
      yield serializers.serialize(
        object.customerOrderDate,
        specifiedType: const FullType(int),
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
        specifiedType: const FullType.nullable(num),
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
        specifiedType: const FullType(VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantBusinessSetupBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantBusinessSetupBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minimum_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minimumOrder = valueDes;
          break;
        case r'gst_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.gstStatus = valueDes;
          break;
        case r'gst_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gstCode = valueDes;
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
        case r'customer_order_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.customerOrderDate = valueDes;
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
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.extraPackagingAmount = valueDes;
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
            specifiedType: const FullType.nullable(VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum),
          ) as VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum?;
          if (valueDes == null) continue;
          result.scheduleAdvanceDineInBookingDurationTimeFormat = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantBusinessSetupBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantBusinessSetupBodyBuilder();
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


class VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'min')
  static const VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum min = _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_min;
  @BuiltValueEnumConst(wireName: r'hour')
  static const VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum hour = _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_hour;
  @BuiltValueEnumConst(wireName: r'day')
  static const VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum day = _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_day;

  static Serializer<VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum> get serializer => _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnumSerializer;

  const VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum._(String name): super(name);

  static BuiltSet<VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum> get values => _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnumValues;
  static VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum valueOf(String name) => _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnumValueOf(name);
}


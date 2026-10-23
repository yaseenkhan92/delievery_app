//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_setting_toggle_body.g.dart';

/// VendorRestaurantSettingToggleBody
///
/// Properties:
/// * [key] 
/// * [status] 
@BuiltValue()
abstract class VendorRestaurantSettingToggleBody implements Built<VendorRestaurantSettingToggleBody, VendorRestaurantSettingToggleBodyBuilder> {
  @BuiltValueField(wireName: r'key')
  VendorRestaurantSettingToggleBodyKeyEnum get key;
  // enum keyEnum {  schedule_order,  delivery,  take_away,  free_delivery,  veg,  non_veg,  order_subscription_active,  cutlery,  manual_dispatch,  instant_order,  customer_date_order_sratus,  halal_tag_status,  is_extra_packaging_active,  dine_in,  };

  @BuiltValueField(wireName: r'status')
  bool get status;

  VendorRestaurantSettingToggleBody._();

  factory VendorRestaurantSettingToggleBody([void updates(VendorRestaurantSettingToggleBodyBuilder b)]) = _$VendorRestaurantSettingToggleBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantSettingToggleBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantSettingToggleBody> get serializer => _$VendorRestaurantSettingToggleBodySerializer();
}

class _$VendorRestaurantSettingToggleBodySerializer implements PrimitiveSerializer<VendorRestaurantSettingToggleBody> {
  @override
  final Iterable<Type> types = const [VendorRestaurantSettingToggleBody, _$VendorRestaurantSettingToggleBody];

  @override
  final String wireName = r'VendorRestaurantSettingToggleBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantSettingToggleBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(VendorRestaurantSettingToggleBodyKeyEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantSettingToggleBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantSettingToggleBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VendorRestaurantSettingToggleBodyKeyEnum),
          ) as VendorRestaurantSettingToggleBodyKeyEnum;
          result.key = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantSettingToggleBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantSettingToggleBodyBuilder();
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


class VendorRestaurantSettingToggleBodyKeyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'schedule_order')
  static const VendorRestaurantSettingToggleBodyKeyEnum scheduleOrder = _$vendorRestaurantSettingToggleBodyKeyEnum_scheduleOrder;
  @BuiltValueEnumConst(wireName: r'delivery')
  static const VendorRestaurantSettingToggleBodyKeyEnum delivery = _$vendorRestaurantSettingToggleBodyKeyEnum_delivery;
  @BuiltValueEnumConst(wireName: r'take_away')
  static const VendorRestaurantSettingToggleBodyKeyEnum takeAway = _$vendorRestaurantSettingToggleBodyKeyEnum_takeAway;
  @BuiltValueEnumConst(wireName: r'free_delivery')
  static const VendorRestaurantSettingToggleBodyKeyEnum freeDelivery = _$vendorRestaurantSettingToggleBodyKeyEnum_freeDelivery;
  @BuiltValueEnumConst(wireName: r'veg')
  static const VendorRestaurantSettingToggleBodyKeyEnum veg = _$vendorRestaurantSettingToggleBodyKeyEnum_veg;
  @BuiltValueEnumConst(wireName: r'non_veg')
  static const VendorRestaurantSettingToggleBodyKeyEnum nonVeg = _$vendorRestaurantSettingToggleBodyKeyEnum_nonVeg;
  @BuiltValueEnumConst(wireName: r'order_subscription_active')
  static const VendorRestaurantSettingToggleBodyKeyEnum orderSubscriptionActive = _$vendorRestaurantSettingToggleBodyKeyEnum_orderSubscriptionActive;
  @BuiltValueEnumConst(wireName: r'cutlery')
  static const VendorRestaurantSettingToggleBodyKeyEnum cutlery = _$vendorRestaurantSettingToggleBodyKeyEnum_cutlery;
  @BuiltValueEnumConst(wireName: r'manual_dispatch')
  static const VendorRestaurantSettingToggleBodyKeyEnum manualDispatch = _$vendorRestaurantSettingToggleBodyKeyEnum_manualDispatch;
  @BuiltValueEnumConst(wireName: r'instant_order')
  static const VendorRestaurantSettingToggleBodyKeyEnum instantOrder = _$vendorRestaurantSettingToggleBodyKeyEnum_instantOrder;
  @BuiltValueEnumConst(wireName: r'customer_date_order_sratus')
  static const VendorRestaurantSettingToggleBodyKeyEnum customerDateOrderSratus = _$vendorRestaurantSettingToggleBodyKeyEnum_customerDateOrderSratus;
  @BuiltValueEnumConst(wireName: r'halal_tag_status')
  static const VendorRestaurantSettingToggleBodyKeyEnum halalTagStatus = _$vendorRestaurantSettingToggleBodyKeyEnum_halalTagStatus;
  @BuiltValueEnumConst(wireName: r'is_extra_packaging_active')
  static const VendorRestaurantSettingToggleBodyKeyEnum isExtraPackagingActive = _$vendorRestaurantSettingToggleBodyKeyEnum_isExtraPackagingActive;
  @BuiltValueEnumConst(wireName: r'dine_in')
  static const VendorRestaurantSettingToggleBodyKeyEnum dineIn = _$vendorRestaurantSettingToggleBodyKeyEnum_dineIn;

  static Serializer<VendorRestaurantSettingToggleBodyKeyEnum> get serializer => _$vendorRestaurantSettingToggleBodyKeyEnumSerializer;

  const VendorRestaurantSettingToggleBodyKeyEnum._(String name): super(name);

  static BuiltSet<VendorRestaurantSettingToggleBodyKeyEnum> get values => _$vendorRestaurantSettingToggleBodyKeyEnumValues;
  static VendorRestaurantSettingToggleBodyKeyEnum valueOf(String name) => _$vendorRestaurantSettingToggleBodyKeyEnumValueOf(name);
}


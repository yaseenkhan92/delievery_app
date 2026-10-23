//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_setup_flags.g.dart';

/// VendorRestaurantSetupFlags
///
/// Properties:
/// * [toggleVegNonVeg] 
/// * [orderSubscription] 
/// * [extraPackagingCharge] 
/// * [dineInOrderOption] 
/// * [selfDelivery] 
/// * [homeDeliveryEnabled] 
/// * [takeAwayEnabled] 
/// * [instantOrderEnabled] 
/// * [scheduleOrderEnabled] 
/// * [manualDispatchAvailable] 
@BuiltValue()
abstract class VendorRestaurantSetupFlags implements Built<VendorRestaurantSetupFlags, VendorRestaurantSetupFlagsBuilder> {
  @BuiltValueField(wireName: r'toggle_veg_non_veg')
  bool? get toggleVegNonVeg;

  @BuiltValueField(wireName: r'order_subscription')
  bool? get orderSubscription;

  @BuiltValueField(wireName: r'extra_packaging_charge')
  bool? get extraPackagingCharge;

  @BuiltValueField(wireName: r'dine_in_order_option')
  bool? get dineInOrderOption;

  @BuiltValueField(wireName: r'self_delivery')
  bool? get selfDelivery;

  @BuiltValueField(wireName: r'home_delivery_enabled')
  bool? get homeDeliveryEnabled;

  @BuiltValueField(wireName: r'take_away_enabled')
  bool? get takeAwayEnabled;

  @BuiltValueField(wireName: r'instant_order_enabled')
  bool? get instantOrderEnabled;

  @BuiltValueField(wireName: r'schedule_order_enabled')
  bool? get scheduleOrderEnabled;

  @BuiltValueField(wireName: r'manual_dispatch_available')
  bool? get manualDispatchAvailable;

  VendorRestaurantSetupFlags._();

  factory VendorRestaurantSetupFlags([void updates(VendorRestaurantSetupFlagsBuilder b)]) = _$VendorRestaurantSetupFlags;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantSetupFlagsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantSetupFlags> get serializer => _$VendorRestaurantSetupFlagsSerializer();
}

class _$VendorRestaurantSetupFlagsSerializer implements PrimitiveSerializer<VendorRestaurantSetupFlags> {
  @override
  final Iterable<Type> types = const [VendorRestaurantSetupFlags, _$VendorRestaurantSetupFlags];

  @override
  final String wireName = r'VendorRestaurantSetupFlags';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantSetupFlags object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.toggleVegNonVeg != null) {
      yield r'toggle_veg_non_veg';
      yield serializers.serialize(
        object.toggleVegNonVeg,
        specifiedType: const FullType(bool),
      );
    }
    if (object.orderSubscription != null) {
      yield r'order_subscription';
      yield serializers.serialize(
        object.orderSubscription,
        specifiedType: const FullType(bool),
      );
    }
    if (object.extraPackagingCharge != null) {
      yield r'extra_packaging_charge';
      yield serializers.serialize(
        object.extraPackagingCharge,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dineInOrderOption != null) {
      yield r'dine_in_order_option';
      yield serializers.serialize(
        object.dineInOrderOption,
        specifiedType: const FullType(bool),
      );
    }
    if (object.selfDelivery != null) {
      yield r'self_delivery';
      yield serializers.serialize(
        object.selfDelivery,
        specifiedType: const FullType(bool),
      );
    }
    if (object.homeDeliveryEnabled != null) {
      yield r'home_delivery_enabled';
      yield serializers.serialize(
        object.homeDeliveryEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.takeAwayEnabled != null) {
      yield r'take_away_enabled';
      yield serializers.serialize(
        object.takeAwayEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.instantOrderEnabled != null) {
      yield r'instant_order_enabled';
      yield serializers.serialize(
        object.instantOrderEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scheduleOrderEnabled != null) {
      yield r'schedule_order_enabled';
      yield serializers.serialize(
        object.scheduleOrderEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.manualDispatchAvailable != null) {
      yield r'manual_dispatch_available';
      yield serializers.serialize(
        object.manualDispatchAvailable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantSetupFlags object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantSetupFlagsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'toggle_veg_non_veg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.toggleVegNonVeg = valueDes;
          break;
        case r'order_subscription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.orderSubscription = valueDes;
          break;
        case r'extra_packaging_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.extraPackagingCharge = valueDes;
          break;
        case r'dine_in_order_option':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.dineInOrderOption = valueDes;
          break;
        case r'self_delivery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.selfDelivery = valueDes;
          break;
        case r'home_delivery_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.homeDeliveryEnabled = valueDes;
          break;
        case r'take_away_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.takeAwayEnabled = valueDes;
          break;
        case r'instant_order_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.instantOrderEnabled = valueDes;
          break;
        case r'schedule_order_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scheduleOrderEnabled = valueDes;
          break;
        case r'manual_dispatch_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.manualDispatchAvailable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantSetupFlags deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantSetupFlagsBuilder();
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



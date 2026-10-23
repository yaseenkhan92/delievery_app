//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_setup_schedule_item.g.dart';

/// VendorRestaurantSetupScheduleItem
///
/// Properties:
/// * [id] 
/// * [day] 
/// * [openingTime] 
/// * [closingTime] 
@BuiltValue()
abstract class VendorRestaurantSetupScheduleItem implements Built<VendorRestaurantSetupScheduleItem, VendorRestaurantSetupScheduleItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'day')
  int? get day;

  @BuiltValueField(wireName: r'opening_time')
  String? get openingTime;

  @BuiltValueField(wireName: r'closing_time')
  String? get closingTime;

  VendorRestaurantSetupScheduleItem._();

  factory VendorRestaurantSetupScheduleItem([void updates(VendorRestaurantSetupScheduleItemBuilder b)]) = _$VendorRestaurantSetupScheduleItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantSetupScheduleItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantSetupScheduleItem> get serializer => _$VendorRestaurantSetupScheduleItemSerializer();
}

class _$VendorRestaurantSetupScheduleItemSerializer implements PrimitiveSerializer<VendorRestaurantSetupScheduleItem> {
  @override
  final Iterable<Type> types = const [VendorRestaurantSetupScheduleItem, _$VendorRestaurantSetupScheduleItem];

  @override
  final String wireName = r'VendorRestaurantSetupScheduleItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantSetupScheduleItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.day != null) {
      yield r'day';
      yield serializers.serialize(
        object.day,
        specifiedType: const FullType(int),
      );
    }
    if (object.openingTime != null) {
      yield r'opening_time';
      yield serializers.serialize(
        object.openingTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.closingTime != null) {
      yield r'closing_time';
      yield serializers.serialize(
        object.closingTime,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantSetupScheduleItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantSetupScheduleItemBuilder result,
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
        case r'day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.day = valueDes;
          break;
        case r'opening_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.openingTime = valueDes;
          break;
        case r'closing_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.closingTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantSetupScheduleItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantSetupScheduleItemBuilder();
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



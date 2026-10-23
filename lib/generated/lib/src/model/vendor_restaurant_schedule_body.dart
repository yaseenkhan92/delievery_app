//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_schedule_body.g.dart';

/// VendorRestaurantScheduleBody
///
/// Properties:
/// * [day] - 0=Sunday … 6=Saturday
/// * [startTime] 
/// * [endTime] 
@BuiltValue()
abstract class VendorRestaurantScheduleBody implements Built<VendorRestaurantScheduleBody, VendorRestaurantScheduleBodyBuilder> {
  /// 0=Sunday … 6=Saturday
  @BuiltValueField(wireName: r'day')
  int get day;

  @BuiltValueField(wireName: r'start_time')
  String get startTime;

  @BuiltValueField(wireName: r'end_time')
  String get endTime;

  VendorRestaurantScheduleBody._();

  factory VendorRestaurantScheduleBody([void updates(VendorRestaurantScheduleBodyBuilder b)]) = _$VendorRestaurantScheduleBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantScheduleBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantScheduleBody> get serializer => _$VendorRestaurantScheduleBodySerializer();
}

class _$VendorRestaurantScheduleBodySerializer implements PrimitiveSerializer<VendorRestaurantScheduleBody> {
  @override
  final Iterable<Type> types = const [VendorRestaurantScheduleBody, _$VendorRestaurantScheduleBody];

  @override
  final String wireName = r'VendorRestaurantScheduleBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantScheduleBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'day';
    yield serializers.serialize(
      object.day,
      specifiedType: const FullType(int),
    );
    yield r'start_time';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(String),
    );
    yield r'end_time';
    yield serializers.serialize(
      object.endTime,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantScheduleBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantScheduleBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.day = valueDes;
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startTime = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantScheduleBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantScheduleBodyBuilder();
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



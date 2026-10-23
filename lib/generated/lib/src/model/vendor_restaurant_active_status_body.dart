//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_active_status_body.g.dart';

/// VendorRestaurantActiveStatusBody
///
/// Properties:
/// * [closed] - true = temporarily closed; false = open for orders
@BuiltValue()
abstract class VendorRestaurantActiveStatusBody implements Built<VendorRestaurantActiveStatusBody, VendorRestaurantActiveStatusBodyBuilder> {
  /// true = temporarily closed; false = open for orders
  @BuiltValueField(wireName: r'closed')
  bool get closed;

  VendorRestaurantActiveStatusBody._();

  factory VendorRestaurantActiveStatusBody([void updates(VendorRestaurantActiveStatusBodyBuilder b)]) = _$VendorRestaurantActiveStatusBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantActiveStatusBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantActiveStatusBody> get serializer => _$VendorRestaurantActiveStatusBodySerializer();
}

class _$VendorRestaurantActiveStatusBodySerializer implements PrimitiveSerializer<VendorRestaurantActiveStatusBody> {
  @override
  final Iterable<Type> types = const [VendorRestaurantActiveStatusBody, _$VendorRestaurantActiveStatusBody];

  @override
  final String wireName = r'VendorRestaurantActiveStatusBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantActiveStatusBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'closed';
    yield serializers.serialize(
      object.closed,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantActiveStatusBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantActiveStatusBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'closed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.closed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantActiveStatusBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantActiveStatusBodyBuilder();
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



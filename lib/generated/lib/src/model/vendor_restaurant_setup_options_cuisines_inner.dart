//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_setup_options_cuisines_inner.g.dart';

/// VendorRestaurantSetupOptionsCuisinesInner
///
/// Properties:
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class VendorRestaurantSetupOptionsCuisinesInner implements Built<VendorRestaurantSetupOptionsCuisinesInner, VendorRestaurantSetupOptionsCuisinesInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  VendorRestaurantSetupOptionsCuisinesInner._();

  factory VendorRestaurantSetupOptionsCuisinesInner([void updates(VendorRestaurantSetupOptionsCuisinesInnerBuilder b)]) = _$VendorRestaurantSetupOptionsCuisinesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantSetupOptionsCuisinesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantSetupOptionsCuisinesInner> get serializer => _$VendorRestaurantSetupOptionsCuisinesInnerSerializer();
}

class _$VendorRestaurantSetupOptionsCuisinesInnerSerializer implements PrimitiveSerializer<VendorRestaurantSetupOptionsCuisinesInner> {
  @override
  final Iterable<Type> types = const [VendorRestaurantSetupOptionsCuisinesInner, _$VendorRestaurantSetupOptionsCuisinesInner];

  @override
  final String wireName = r'VendorRestaurantSetupOptionsCuisinesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantSetupOptionsCuisinesInner object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantSetupOptionsCuisinesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantSetupOptionsCuisinesInnerBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantSetupOptionsCuisinesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantSetupOptionsCuisinesInnerBuilder();
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



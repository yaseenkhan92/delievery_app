//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_restaurant_setup_options_cuisines_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/vendor_restaurant_setup_options_languages_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_setup_options.g.dart';

/// VendorRestaurantSetupOptions
///
/// Properties:
/// * [cuisines] 
/// * [characteristicSuggestions] 
/// * [languages] 
@BuiltValue()
abstract class VendorRestaurantSetupOptions implements Built<VendorRestaurantSetupOptions, VendorRestaurantSetupOptionsBuilder> {
  @BuiltValueField(wireName: r'cuisines')
  BuiltList<VendorRestaurantSetupOptionsCuisinesInner>? get cuisines;

  @BuiltValueField(wireName: r'characteristic_suggestions')
  BuiltList<String>? get characteristicSuggestions;

  @BuiltValueField(wireName: r'languages')
  BuiltList<VendorRestaurantSetupOptionsLanguagesInner>? get languages;

  VendorRestaurantSetupOptions._();

  factory VendorRestaurantSetupOptions([void updates(VendorRestaurantSetupOptionsBuilder b)]) = _$VendorRestaurantSetupOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantSetupOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantSetupOptions> get serializer => _$VendorRestaurantSetupOptionsSerializer();
}

class _$VendorRestaurantSetupOptionsSerializer implements PrimitiveSerializer<VendorRestaurantSetupOptions> {
  @override
  final Iterable<Type> types = const [VendorRestaurantSetupOptions, _$VendorRestaurantSetupOptions];

  @override
  final String wireName = r'VendorRestaurantSetupOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantSetupOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cuisines != null) {
      yield r'cuisines';
      yield serializers.serialize(
        object.cuisines,
        specifiedType: const FullType(BuiltList, [FullType(VendorRestaurantSetupOptionsCuisinesInner)]),
      );
    }
    if (object.characteristicSuggestions != null) {
      yield r'characteristic_suggestions';
      yield serializers.serialize(
        object.characteristicSuggestions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType(BuiltList, [FullType(VendorRestaurantSetupOptionsLanguagesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantSetupOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantSetupOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cuisines':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(VendorRestaurantSetupOptionsCuisinesInner)]),
          ) as BuiltList<VendorRestaurantSetupOptionsCuisinesInner>?;
          if (valueDes == null) continue;
          result.cuisines.replace(valueDes);
          break;
        case r'characteristic_suggestions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.characteristicSuggestions.replace(valueDes);
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(VendorRestaurantSetupOptionsLanguagesInner)]),
          ) as BuiltList<VendorRestaurantSetupOptionsLanguagesInner>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantSetupOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantSetupOptionsBuilder();
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



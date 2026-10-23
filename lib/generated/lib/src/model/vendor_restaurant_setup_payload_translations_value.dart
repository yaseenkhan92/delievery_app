//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_setup_payload_translations_value.g.dart';

/// VendorRestaurantSetupPayloadTranslationsValue
///
/// Properties:
/// * [metaTitle] 
/// * [metaDescription] 
@BuiltValue()
abstract class VendorRestaurantSetupPayloadTranslationsValue implements Built<VendorRestaurantSetupPayloadTranslationsValue, VendorRestaurantSetupPayloadTranslationsValueBuilder> {
  @BuiltValueField(wireName: r'meta_title')
  String? get metaTitle;

  @BuiltValueField(wireName: r'meta_description')
  String? get metaDescription;

  VendorRestaurantSetupPayloadTranslationsValue._();

  factory VendorRestaurantSetupPayloadTranslationsValue([void updates(VendorRestaurantSetupPayloadTranslationsValueBuilder b)]) = _$VendorRestaurantSetupPayloadTranslationsValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantSetupPayloadTranslationsValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantSetupPayloadTranslationsValue> get serializer => _$VendorRestaurantSetupPayloadTranslationsValueSerializer();
}

class _$VendorRestaurantSetupPayloadTranslationsValueSerializer implements PrimitiveSerializer<VendorRestaurantSetupPayloadTranslationsValue> {
  @override
  final Iterable<Type> types = const [VendorRestaurantSetupPayloadTranslationsValue, _$VendorRestaurantSetupPayloadTranslationsValue];

  @override
  final String wireName = r'VendorRestaurantSetupPayloadTranslationsValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantSetupPayloadTranslationsValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantSetupPayloadTranslationsValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantSetupPayloadTranslationsValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantSetupPayloadTranslationsValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantSetupPayloadTranslationsValueBuilder();
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



//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_meta_translation.g.dart';

/// VendorRestaurantMetaTranslation
///
/// Properties:
/// * [locale] 
/// * [metaTitle] 
/// * [metaDescription] 
@BuiltValue()
abstract class VendorRestaurantMetaTranslation implements Built<VendorRestaurantMetaTranslation, VendorRestaurantMetaTranslationBuilder> {
  @BuiltValueField(wireName: r'locale')
  String get locale;

  @BuiltValueField(wireName: r'meta_title')
  String? get metaTitle;

  @BuiltValueField(wireName: r'meta_description')
  String? get metaDescription;

  VendorRestaurantMetaTranslation._();

  factory VendorRestaurantMetaTranslation([void updates(VendorRestaurantMetaTranslationBuilder b)]) = _$VendorRestaurantMetaTranslation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantMetaTranslationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantMetaTranslation> get serializer => _$VendorRestaurantMetaTranslationSerializer();
}

class _$VendorRestaurantMetaTranslationSerializer implements PrimitiveSerializer<VendorRestaurantMetaTranslation> {
  @override
  final Iterable<Type> types = const [VendorRestaurantMetaTranslation, _$VendorRestaurantMetaTranslation];

  @override
  final String wireName = r'VendorRestaurantMetaTranslation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantMetaTranslation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'locale';
    yield serializers.serialize(
      object.locale,
      specifiedType: const FullType(String),
    );
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
    VendorRestaurantMetaTranslation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantMetaTranslationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locale = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantMetaTranslation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantMetaTranslationBuilder();
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



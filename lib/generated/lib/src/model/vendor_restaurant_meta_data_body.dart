//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/vendor_restaurant_meta_translation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_meta_data_body.g.dart';

/// VendorRestaurantMetaDataBody
///
/// Properties:
/// * [metaTitle] 
/// * [metaDescription] 
/// * [metaImage] - URL or R2 path from POST /upload
/// * [translations] 
@BuiltValue()
abstract class VendorRestaurantMetaDataBody implements Built<VendorRestaurantMetaDataBody, VendorRestaurantMetaDataBodyBuilder> {
  @BuiltValueField(wireName: r'meta_title')
  String get metaTitle;

  @BuiltValueField(wireName: r'meta_description')
  String get metaDescription;

  /// URL or R2 path from POST /upload
  @BuiltValueField(wireName: r'meta_image')
  String? get metaImage;

  @BuiltValueField(wireName: r'translations')
  BuiltList<VendorRestaurantMetaTranslation>? get translations;

  VendorRestaurantMetaDataBody._();

  factory VendorRestaurantMetaDataBody([void updates(VendorRestaurantMetaDataBodyBuilder b)]) = _$VendorRestaurantMetaDataBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantMetaDataBodyBuilder b) => b
      ..translations = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantMetaDataBody> get serializer => _$VendorRestaurantMetaDataBodySerializer();
}

class _$VendorRestaurantMetaDataBodySerializer implements PrimitiveSerializer<VendorRestaurantMetaDataBody> {
  @override
  final Iterable<Type> types = const [VendorRestaurantMetaDataBody, _$VendorRestaurantMetaDataBody];

  @override
  final String wireName = r'VendorRestaurantMetaDataBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantMetaDataBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'meta_title';
    yield serializers.serialize(
      object.metaTitle,
      specifiedType: const FullType(String),
    );
    yield r'meta_description';
    yield serializers.serialize(
      object.metaDescription,
      specifiedType: const FullType(String),
    );
    if (object.metaImage != null) {
      yield r'meta_image';
      yield serializers.serialize(
        object.metaImage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.translations != null) {
      yield r'translations';
      yield serializers.serialize(
        object.translations,
        specifiedType: const FullType(BuiltList, [FullType(VendorRestaurantMetaTranslation)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantMetaDataBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantMetaDataBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'meta_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.metaTitle = valueDes;
          break;
        case r'meta_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.metaDescription = valueDes;
          break;
        case r'meta_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.metaImage = valueDes;
          break;
        case r'translations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(VendorRestaurantMetaTranslation)]),
          ) as BuiltList<VendorRestaurantMetaTranslation>?;
          if (valueDes == null) continue;
          result.translations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantMetaDataBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantMetaDataBodyBuilder();
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



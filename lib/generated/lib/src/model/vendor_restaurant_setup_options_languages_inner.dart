//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_setup_options_languages_inner.g.dart';

/// VendorRestaurantSetupOptionsLanguagesInner
///
/// Properties:
/// * [code] 
/// * [label] 
@BuiltValue()
abstract class VendorRestaurantSetupOptionsLanguagesInner implements Built<VendorRestaurantSetupOptionsLanguagesInner, VendorRestaurantSetupOptionsLanguagesInnerBuilder> {
  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'label')
  String? get label;

  VendorRestaurantSetupOptionsLanguagesInner._();

  factory VendorRestaurantSetupOptionsLanguagesInner([void updates(VendorRestaurantSetupOptionsLanguagesInnerBuilder b)]) = _$VendorRestaurantSetupOptionsLanguagesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantSetupOptionsLanguagesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantSetupOptionsLanguagesInner> get serializer => _$VendorRestaurantSetupOptionsLanguagesInnerSerializer();
}

class _$VendorRestaurantSetupOptionsLanguagesInnerSerializer implements PrimitiveSerializer<VendorRestaurantSetupOptionsLanguagesInner> {
  @override
  final Iterable<Type> types = const [VendorRestaurantSetupOptionsLanguagesInner, _$VendorRestaurantSetupOptionsLanguagesInner];

  @override
  final String wireName = r'VendorRestaurantSetupOptionsLanguagesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantSetupOptionsLanguagesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantSetupOptionsLanguagesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantSetupOptionsLanguagesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantSetupOptionsLanguagesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantSetupOptionsLanguagesInnerBuilder();
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



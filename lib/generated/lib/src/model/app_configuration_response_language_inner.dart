//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_configuration_response_language_inner.g.dart';

/// AppConfigurationResponseLanguageInner
///
/// Properties:
/// * [key] 
/// * [value] 
@BuiltValue()
abstract class AppConfigurationResponseLanguageInner implements Built<AppConfigurationResponseLanguageInner, AppConfigurationResponseLanguageInnerBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'value')
  String? get value;

  AppConfigurationResponseLanguageInner._();

  factory AppConfigurationResponseLanguageInner([void updates(AppConfigurationResponseLanguageInnerBuilder b)]) = _$AppConfigurationResponseLanguageInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppConfigurationResponseLanguageInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AppConfigurationResponseLanguageInner> get serializer => _$AppConfigurationResponseLanguageInnerSerializer();
}

class _$AppConfigurationResponseLanguageInnerSerializer implements PrimitiveSerializer<AppConfigurationResponseLanguageInner> {
  @override
  final Iterable<Type> types = const [AppConfigurationResponseLanguageInner, _$AppConfigurationResponseLanguageInner];

  @override
  final String wireName = r'AppConfigurationResponseLanguageInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AppConfigurationResponseLanguageInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AppConfigurationResponseLanguageInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AppConfigurationResponseLanguageInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AppConfigurationResponseLanguageInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppConfigurationResponseLanguageInnerBuilder();
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



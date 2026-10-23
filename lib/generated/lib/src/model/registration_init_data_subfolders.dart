//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'registration_init_data_subfolders.g.dart';

/// RegistrationInitDataSubfolders
///
/// Properties:
/// * [assets] 
/// * [restaurant] 
/// * [identity] 
/// * [profile] 
@BuiltValue()
abstract class RegistrationInitDataSubfolders implements Built<RegistrationInitDataSubfolders, RegistrationInitDataSubfoldersBuilder> {
  @BuiltValueField(wireName: r'assets')
  String? get assets;

  @BuiltValueField(wireName: r'restaurant')
  String? get restaurant;

  @BuiltValueField(wireName: r'identity')
  String? get identity;

  @BuiltValueField(wireName: r'profile')
  String? get profile;

  RegistrationInitDataSubfolders._();

  factory RegistrationInitDataSubfolders([void updates(RegistrationInitDataSubfoldersBuilder b)]) = _$RegistrationInitDataSubfolders;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegistrationInitDataSubfoldersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegistrationInitDataSubfolders> get serializer => _$RegistrationInitDataSubfoldersSerializer();
}

class _$RegistrationInitDataSubfoldersSerializer implements PrimitiveSerializer<RegistrationInitDataSubfolders> {
  @override
  final Iterable<Type> types = const [RegistrationInitDataSubfolders, _$RegistrationInitDataSubfolders];

  @override
  final String wireName = r'RegistrationInitDataSubfolders';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegistrationInitDataSubfolders object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.assets != null) {
      yield r'assets';
      yield serializers.serialize(
        object.assets,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType(String),
      );
    }
    if (object.identity != null) {
      yield r'identity';
      yield serializers.serialize(
        object.identity,
        specifiedType: const FullType(String),
      );
    }
    if (object.profile != null) {
      yield r'profile';
      yield serializers.serialize(
        object.profile,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegistrationInitDataSubfolders object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegistrationInitDataSubfoldersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assets = valueDes;
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurant = valueDes;
          break;
        case r'identity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.identity = valueDes;
          break;
        case r'profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.profile = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegistrationInitDataSubfolders deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegistrationInitDataSubfoldersBuilder();
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



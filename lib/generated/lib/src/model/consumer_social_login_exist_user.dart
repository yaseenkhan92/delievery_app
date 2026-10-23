//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_social_login_exist_user.g.dart';

/// ConsumerSocialLoginExistUser
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [image] 
@BuiltValue()
abstract class ConsumerSocialLoginExistUser implements Built<ConsumerSocialLoginExistUser, ConsumerSocialLoginExistUserBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'image')
  String? get image;

  ConsumerSocialLoginExistUser._();

  factory ConsumerSocialLoginExistUser([void updates(ConsumerSocialLoginExistUserBuilder b)]) = _$ConsumerSocialLoginExistUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerSocialLoginExistUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerSocialLoginExistUser> get serializer => _$ConsumerSocialLoginExistUserSerializer();
}

class _$ConsumerSocialLoginExistUserSerializer implements PrimitiveSerializer<ConsumerSocialLoginExistUser> {
  @override
  final Iterable<Type> types = const [ConsumerSocialLoginExistUser, _$ConsumerSocialLoginExistUser];

  @override
  final String wireName = r'ConsumerSocialLoginExistUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerSocialLoginExistUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerSocialLoginExistUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerSocialLoginExistUserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerSocialLoginExistUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerSocialLoginExistUserBuilder();
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



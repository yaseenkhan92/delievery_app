//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/consumer_social_login_exist_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_social_login_data.g.dart';

/// ConsumerSocialLoginData
///
/// Properties:
/// * [token] - JWT when is_personal_info=1; null until profile has name
/// * [isPhoneVerified] 
/// * [isEmailVerified] 
/// * [isPersonalInfo] - 1 if user has f_name (full JWT issued)
/// * [isExistUser] 
/// * [loginType] 
/// * [email] 
@BuiltValue()
abstract class ConsumerSocialLoginData implements Built<ConsumerSocialLoginData, ConsumerSocialLoginDataBuilder> {
  /// JWT when is_personal_info=1; null until profile has name
  @BuiltValueField(wireName: r'token')
  String? get token;

  @BuiltValueField(wireName: r'is_phone_verified')
  int? get isPhoneVerified;

  @BuiltValueField(wireName: r'is_email_verified')
  int? get isEmailVerified;

  /// 1 if user has f_name (full JWT issued)
  @BuiltValueField(wireName: r'is_personal_info')
  ConsumerSocialLoginDataIsPersonalInfoEnum? get isPersonalInfo;
  // enum isPersonalInfoEnum {  0,  1,  };

  @BuiltValueField(wireName: r'is_exist_user')
  ConsumerSocialLoginExistUser? get isExistUser;

  @BuiltValueField(wireName: r'login_type')
  String? get loginType;

  @BuiltValueField(wireName: r'email')
  String? get email;

  ConsumerSocialLoginData._();

  factory ConsumerSocialLoginData([void updates(ConsumerSocialLoginDataBuilder b)]) = _$ConsumerSocialLoginData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerSocialLoginDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerSocialLoginData> get serializer => _$ConsumerSocialLoginDataSerializer();
}

class _$ConsumerSocialLoginDataSerializer implements PrimitiveSerializer<ConsumerSocialLoginData> {
  @override
  final Iterable<Type> types = const [ConsumerSocialLoginData, _$ConsumerSocialLoginData];

  @override
  final String wireName = r'ConsumerSocialLoginData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerSocialLoginData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isPhoneVerified != null) {
      yield r'is_phone_verified';
      yield serializers.serialize(
        object.isPhoneVerified,
        specifiedType: const FullType(int),
      );
    }
    if (object.isEmailVerified != null) {
      yield r'is_email_verified';
      yield serializers.serialize(
        object.isEmailVerified,
        specifiedType: const FullType(int),
      );
    }
    if (object.isPersonalInfo != null) {
      yield r'is_personal_info';
      yield serializers.serialize(
        object.isPersonalInfo,
        specifiedType: const FullType(ConsumerSocialLoginDataIsPersonalInfoEnum),
      );
    }
    if (object.isExistUser != null) {
      yield r'is_exist_user';
      yield serializers.serialize(
        object.isExistUser,
        specifiedType: const FullType.nullable(ConsumerSocialLoginExistUser),
      );
    }
    if (object.loginType != null) {
      yield r'login_type';
      yield serializers.serialize(
        object.loginType,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerSocialLoginData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerSocialLoginDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'is_phone_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.isPhoneVerified = valueDes;
          break;
        case r'is_email_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.isEmailVerified = valueDes;
          break;
        case r'is_personal_info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerSocialLoginDataIsPersonalInfoEnum),
          ) as ConsumerSocialLoginDataIsPersonalInfoEnum?;
          if (valueDes == null) continue;
          result.isPersonalInfo = valueDes;
          break;
        case r'is_exist_user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerSocialLoginExistUser),
          ) as ConsumerSocialLoginExistUser?;
          if (valueDes == null) continue;
          result.isExistUser.replace(valueDes);
          break;
        case r'login_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.loginType = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerSocialLoginData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerSocialLoginDataBuilder();
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


/// 1 if user has f_name (full JWT issued)
class ConsumerSocialLoginDataIsPersonalInfoEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 0)
  static const ConsumerSocialLoginDataIsPersonalInfoEnum number0 = _$consumerSocialLoginDataIsPersonalInfoEnum_number0;
  @BuiltValueEnumConst(wireNumber: 1)
  static const ConsumerSocialLoginDataIsPersonalInfoEnum number1 = _$consumerSocialLoginDataIsPersonalInfoEnum_number1;

  static Serializer<ConsumerSocialLoginDataIsPersonalInfoEnum> get serializer => _$consumerSocialLoginDataIsPersonalInfoEnumSerializer;

  const ConsumerSocialLoginDataIsPersonalInfoEnum._(String name): super(name);

  static BuiltSet<ConsumerSocialLoginDataIsPersonalInfoEnum> get values => _$consumerSocialLoginDataIsPersonalInfoEnumValues;
  static ConsumerSocialLoginDataIsPersonalInfoEnum valueOf(String name) => _$consumerSocialLoginDataIsPersonalInfoEnumValueOf(name);
}


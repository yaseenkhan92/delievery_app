//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/consumer_login_body_access_token.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_login_body.g.dart';

/// ConsumerLoginBody
///
/// Properties:
/// * [loginType] 
/// * [fieldType] - Required when login_type=manual
/// * [emailOrPhone] - Required when login_type=manual
/// * [password] - Required when login_type=manual
/// * [token] - Google id token or access token when login_type=social
/// * [uniqueId] - Google user id (sub) when login_type=social
/// * [email] - Required when login_type=social
/// * [medium] - Required when login_type=social (only google implemented)
/// * [accessToken] 
/// * [verified] - Social account linking mode (legacy PHP)
/// * [guestId] - From POST `/consumer/guest/request` — merges guest cart after successful login
@BuiltValue()
abstract class ConsumerLoginBody implements Built<ConsumerLoginBody, ConsumerLoginBodyBuilder> {
  @BuiltValueField(wireName: r'login_type')
  ConsumerLoginBodyLoginTypeEnum get loginType;
  // enum loginTypeEnum {  manual,  otp,  social,  };

  /// Required when login_type=manual
  @BuiltValueField(wireName: r'field_type')
  ConsumerLoginBodyFieldTypeEnum? get fieldType;
  // enum fieldTypeEnum {  phone,  email,  };

  /// Required when login_type=manual
  @BuiltValueField(wireName: r'email_or_phone')
  String? get emailOrPhone;

  /// Required when login_type=manual
  @BuiltValueField(wireName: r'password')
  String? get password;

  /// Google id token or access token when login_type=social
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// Google user id (sub) when login_type=social
  @BuiltValueField(wireName: r'unique_id')
  String? get uniqueId;

  /// Required when login_type=social
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Required when login_type=social (only google implemented)
  @BuiltValueField(wireName: r'medium')
  ConsumerLoginBodyMediumEnum? get medium;
  // enum mediumEnum {  google,  facebook,  apple,  };

  @BuiltValueField(wireName: r'access_token')
  ConsumerLoginBodyAccessToken? get accessToken;

  /// Social account linking mode (legacy PHP)
  @BuiltValueField(wireName: r'verified')
  ConsumerLoginBodyVerifiedEnum? get verified;
  // enum verifiedEnum {  default,  no,  };

  /// From POST `/consumer/guest/request` — merges guest cart after successful login
  @BuiltValueField(wireName: r'guest_id')
  int? get guestId;

  ConsumerLoginBody._();

  factory ConsumerLoginBody([void updates(ConsumerLoginBodyBuilder b)]) = _$ConsumerLoginBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerLoginBodyBuilder b) => b
      ..verified = ConsumerLoginBodyVerifiedEnum.valueOf('default');

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerLoginBody> get serializer => _$ConsumerLoginBodySerializer();
}

class _$ConsumerLoginBodySerializer implements PrimitiveSerializer<ConsumerLoginBody> {
  @override
  final Iterable<Type> types = const [ConsumerLoginBody, _$ConsumerLoginBody];

  @override
  final String wireName = r'ConsumerLoginBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerLoginBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'login_type';
    yield serializers.serialize(
      object.loginType,
      specifiedType: const FullType(ConsumerLoginBodyLoginTypeEnum),
    );
    if (object.fieldType != null) {
      yield r'field_type';
      yield serializers.serialize(
        object.fieldType,
        specifiedType: const FullType(ConsumerLoginBodyFieldTypeEnum),
      );
    }
    if (object.emailOrPhone != null) {
      yield r'email_or_phone';
      yield serializers.serialize(
        object.emailOrPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.uniqueId != null) {
      yield r'unique_id';
      yield serializers.serialize(
        object.uniqueId,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.medium != null) {
      yield r'medium';
      yield serializers.serialize(
        object.medium,
        specifiedType: const FullType(ConsumerLoginBodyMediumEnum),
      );
    }
    if (object.accessToken != null) {
      yield r'access_token';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(ConsumerLoginBodyAccessToken),
      );
    }
    if (object.verified != null) {
      yield r'verified';
      yield serializers.serialize(
        object.verified,
        specifiedType: const FullType(ConsumerLoginBodyVerifiedEnum),
      );
    }
    if (object.guestId != null) {
      yield r'guest_id';
      yield serializers.serialize(
        object.guestId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerLoginBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerLoginBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'login_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConsumerLoginBodyLoginTypeEnum),
          ) as ConsumerLoginBodyLoginTypeEnum;
          result.loginType = valueDes;
          break;
        case r'field_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerLoginBodyFieldTypeEnum),
          ) as ConsumerLoginBodyFieldTypeEnum?;
          if (valueDes == null) continue;
          result.fieldType = valueDes;
          break;
        case r'email_or_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.emailOrPhone = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'unique_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uniqueId = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'medium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerLoginBodyMediumEnum),
          ) as ConsumerLoginBodyMediumEnum?;
          if (valueDes == null) continue;
          result.medium = valueDes;
          break;
        case r'access_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerLoginBodyAccessToken),
          ) as ConsumerLoginBodyAccessToken?;
          if (valueDes == null) continue;
          result.accessToken.replace(valueDes);
          break;
        case r'verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerLoginBodyVerifiedEnum),
          ) as ConsumerLoginBodyVerifiedEnum?;
          if (valueDes == null) continue;
          result.verified = valueDes;
          break;
        case r'guest_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.guestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerLoginBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerLoginBodyBuilder();
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


class ConsumerLoginBodyLoginTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'manual')
  static const ConsumerLoginBodyLoginTypeEnum manual = _$consumerLoginBodyLoginTypeEnum_manual;
  @BuiltValueEnumConst(wireName: r'otp')
  static const ConsumerLoginBodyLoginTypeEnum otp = _$consumerLoginBodyLoginTypeEnum_otp;
  @BuiltValueEnumConst(wireName: r'social')
  static const ConsumerLoginBodyLoginTypeEnum social = _$consumerLoginBodyLoginTypeEnum_social;

  static Serializer<ConsumerLoginBodyLoginTypeEnum> get serializer => _$consumerLoginBodyLoginTypeEnumSerializer;

  const ConsumerLoginBodyLoginTypeEnum._(String name): super(name);

  static BuiltSet<ConsumerLoginBodyLoginTypeEnum> get values => _$consumerLoginBodyLoginTypeEnumValues;
  static ConsumerLoginBodyLoginTypeEnum valueOf(String name) => _$consumerLoginBodyLoginTypeEnumValueOf(name);
}

/// Required when login_type=manual
class ConsumerLoginBodyFieldTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'phone')
  static const ConsumerLoginBodyFieldTypeEnum phone = _$consumerLoginBodyFieldTypeEnum_phone;
  @BuiltValueEnumConst(wireName: r'email')
  static const ConsumerLoginBodyFieldTypeEnum email = _$consumerLoginBodyFieldTypeEnum_email;

  static Serializer<ConsumerLoginBodyFieldTypeEnum> get serializer => _$consumerLoginBodyFieldTypeEnumSerializer;

  const ConsumerLoginBodyFieldTypeEnum._(String name): super(name);

  static BuiltSet<ConsumerLoginBodyFieldTypeEnum> get values => _$consumerLoginBodyFieldTypeEnumValues;
  static ConsumerLoginBodyFieldTypeEnum valueOf(String name) => _$consumerLoginBodyFieldTypeEnumValueOf(name);
}

/// Required when login_type=social (only google implemented)
class ConsumerLoginBodyMediumEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'google')
  static const ConsumerLoginBodyMediumEnum google = _$consumerLoginBodyMediumEnum_google;
  @BuiltValueEnumConst(wireName: r'facebook')
  static const ConsumerLoginBodyMediumEnum facebook = _$consumerLoginBodyMediumEnum_facebook;
  @BuiltValueEnumConst(wireName: r'apple')
  static const ConsumerLoginBodyMediumEnum apple = _$consumerLoginBodyMediumEnum_apple;

  static Serializer<ConsumerLoginBodyMediumEnum> get serializer => _$consumerLoginBodyMediumEnumSerializer;

  const ConsumerLoginBodyMediumEnum._(String name): super(name);

  static BuiltSet<ConsumerLoginBodyMediumEnum> get values => _$consumerLoginBodyMediumEnumValues;
  static ConsumerLoginBodyMediumEnum valueOf(String name) => _$consumerLoginBodyMediumEnumValueOf(name);
}

/// Social account linking mode (legacy PHP)
class ConsumerLoginBodyVerifiedEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const ConsumerLoginBodyVerifiedEnum default_ = _$consumerLoginBodyVerifiedEnum_default_;
  @BuiltValueEnumConst(wireName: r'no')
  static const ConsumerLoginBodyVerifiedEnum no = _$consumerLoginBodyVerifiedEnum_no;

  static Serializer<ConsumerLoginBodyVerifiedEnum> get serializer => _$consumerLoginBodyVerifiedEnumSerializer;

  const ConsumerLoginBodyVerifiedEnum._(String name): super(name);

  static BuiltSet<ConsumerLoginBodyVerifiedEnum> get values => _$consumerLoginBodyVerifiedEnumValues;
  static ConsumerLoginBodyVerifiedEnum valueOf(String name) => _$consumerLoginBodyVerifiedEnumValueOf(name);
}


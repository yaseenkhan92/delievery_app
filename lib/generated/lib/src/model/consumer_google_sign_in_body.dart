//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/consumer_google_sign_in_body_access_token.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_google_sign_in_body.g.dart';

/// ConsumerGoogleSignInBody
///
/// Properties:
/// * [token] - Google id token from mobile/web SDK (default)
/// * [email] 
/// * [uniqueId] - Stable Google user id (sub)
/// * [accessToken] 
/// * [guestId] - From POST `/consumer/guest/request` (`guest_id` or `data.guest_id`). Merges guest cart when customer JWT is issued
/// * [verified] 
@BuiltValue()
abstract class ConsumerGoogleSignInBody implements Built<ConsumerGoogleSignInBody, ConsumerGoogleSignInBodyBuilder> {
  /// Google id token from mobile/web SDK (default)
  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'email')
  String get email;

  /// Stable Google user id (sub)
  @BuiltValueField(wireName: r'unique_id')
  String get uniqueId;

  @BuiltValueField(wireName: r'access_token')
  ConsumerGoogleSignInBodyAccessToken? get accessToken;

  /// From POST `/consumer/guest/request` (`guest_id` or `data.guest_id`). Merges guest cart when customer JWT is issued
  @BuiltValueField(wireName: r'guest_id')
  int? get guestId;

  @BuiltValueField(wireName: r'verified')
  ConsumerGoogleSignInBodyVerifiedEnum? get verified;
  // enum verifiedEnum {  default,  no,  };

  ConsumerGoogleSignInBody._();

  factory ConsumerGoogleSignInBody([void updates(ConsumerGoogleSignInBodyBuilder b)]) = _$ConsumerGoogleSignInBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerGoogleSignInBodyBuilder b) => b
      ..verified = ConsumerGoogleSignInBodyVerifiedEnum.valueOf('default');

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerGoogleSignInBody> get serializer => _$ConsumerGoogleSignInBodySerializer();
}

class _$ConsumerGoogleSignInBodySerializer implements PrimitiveSerializer<ConsumerGoogleSignInBody> {
  @override
  final Iterable<Type> types = const [ConsumerGoogleSignInBody, _$ConsumerGoogleSignInBody];

  @override
  final String wireName = r'ConsumerGoogleSignInBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerGoogleSignInBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'unique_id';
    yield serializers.serialize(
      object.uniqueId,
      specifiedType: const FullType(String),
    );
    if (object.accessToken != null) {
      yield r'access_token';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(ConsumerGoogleSignInBodyAccessToken),
      );
    }
    if (object.guestId != null) {
      yield r'guest_id';
      yield serializers.serialize(
        object.guestId,
        specifiedType: const FullType(int),
      );
    }
    if (object.verified != null) {
      yield r'verified';
      yield serializers.serialize(
        object.verified,
        specifiedType: const FullType(ConsumerGoogleSignInBodyVerifiedEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerGoogleSignInBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerGoogleSignInBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'unique_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uniqueId = valueDes;
          break;
        case r'access_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerGoogleSignInBodyAccessToken),
          ) as ConsumerGoogleSignInBodyAccessToken?;
          if (valueDes == null) continue;
          result.accessToken.replace(valueDes);
          break;
        case r'guest_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.guestId = valueDes;
          break;
        case r'verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerGoogleSignInBodyVerifiedEnum),
          ) as ConsumerGoogleSignInBodyVerifiedEnum?;
          if (valueDes == null) continue;
          result.verified = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerGoogleSignInBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerGoogleSignInBodyBuilder();
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


class ConsumerGoogleSignInBodyVerifiedEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const ConsumerGoogleSignInBodyVerifiedEnum default_ = _$consumerGoogleSignInBodyVerifiedEnum_default_;
  @BuiltValueEnumConst(wireName: r'no')
  static const ConsumerGoogleSignInBodyVerifiedEnum no = _$consumerGoogleSignInBodyVerifiedEnum_no;

  static Serializer<ConsumerGoogleSignInBodyVerifiedEnum> get serializer => _$consumerGoogleSignInBodyVerifiedEnumSerializer;

  const ConsumerGoogleSignInBodyVerifiedEnum._(String name): super(name);

  static BuiltSet<ConsumerGoogleSignInBodyVerifiedEnum> get values => _$consumerGoogleSignInBodyVerifiedEnumValues;
  static ConsumerGoogleSignInBodyVerifiedEnum valueOf(String name) => _$consumerGoogleSignInBodyVerifiedEnumValueOf(name);
}


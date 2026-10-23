//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_profile_user.g.dart';

/// ConsumerProfileUser
///
/// Properties:
/// * [id] 
/// * [fName] 
/// * [lName] 
/// * [phone] 
/// * [email] 
/// * [image] 
/// * [isPhoneVerified] 
/// * [isEmailVerified] 
/// * [refCode] 
/// * [zoneId] 
/// * [walletBalance] 
/// * [loyaltyPoint] 
/// * [interest] - JSON array string of category ids
/// * [cmFirebaseToken] 
/// * [currentLanguageKey] 
/// * [orderCount] 
@BuiltValue(instantiable: false)
abstract class ConsumerProfileUser  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'f_name')
  String? get fName;

  @BuiltValueField(wireName: r'l_name')
  String? get lName;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'is_phone_verified')
  int? get isPhoneVerified;

  @BuiltValueField(wireName: r'is_email_verified')
  int? get isEmailVerified;

  @BuiltValueField(wireName: r'ref_code')
  String? get refCode;

  @BuiltValueField(wireName: r'zone_id')
  int? get zoneId;

  @BuiltValueField(wireName: r'wallet_balance')
  num? get walletBalance;

  @BuiltValueField(wireName: r'loyalty_point')
  num? get loyaltyPoint;

  /// JSON array string of category ids
  @BuiltValueField(wireName: r'interest')
  String? get interest;

  @BuiltValueField(wireName: r'cm_firebase_token')
  String? get cmFirebaseToken;

  @BuiltValueField(wireName: r'current_language_key')
  String? get currentLanguageKey;

  @BuiltValueField(wireName: r'order_count')
  int? get orderCount;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerProfileUser> get serializer => _$ConsumerProfileUserSerializer();
}

class _$ConsumerProfileUserSerializer implements PrimitiveSerializer<ConsumerProfileUser> {
  @override
  final Iterable<Type> types = const [ConsumerProfileUser];

  @override
  final String wireName = r'ConsumerProfileUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerProfileUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.fName != null) {
      yield r'f_name';
      yield serializers.serialize(
        object.fName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lName != null) {
      yield r'l_name';
      yield serializers.serialize(
        object.lName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
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
    if (object.refCode != null) {
      yield r'ref_code';
      yield serializers.serialize(
        object.refCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.zoneId != null) {
      yield r'zone_id';
      yield serializers.serialize(
        object.zoneId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.walletBalance != null) {
      yield r'wallet_balance';
      yield serializers.serialize(
        object.walletBalance,
        specifiedType: const FullType(num),
      );
    }
    if (object.loyaltyPoint != null) {
      yield r'loyalty_point';
      yield serializers.serialize(
        object.loyaltyPoint,
        specifiedType: const FullType(num),
      );
    }
    if (object.interest != null) {
      yield r'interest';
      yield serializers.serialize(
        object.interest,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cmFirebaseToken != null) {
      yield r'cm_firebase_token';
      yield serializers.serialize(
        object.cmFirebaseToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.currentLanguageKey != null) {
      yield r'current_language_key';
      yield serializers.serialize(
        object.currentLanguageKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderCount != null) {
      yield r'order_count';
      yield serializers.serialize(
        object.orderCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerProfileUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ConsumerProfileUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ConsumerProfileUser)) as $ConsumerProfileUser;
  }
}


/// a concrete implementation of [ConsumerProfileUser], since [ConsumerProfileUser] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ConsumerProfileUser implements ConsumerProfileUser, Built<$ConsumerProfileUser, $ConsumerProfileUserBuilder> {
  $ConsumerProfileUser._();

  factory $ConsumerProfileUser([void Function($ConsumerProfileUserBuilder)? updates]) = _$$ConsumerProfileUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ConsumerProfileUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ConsumerProfileUser> get serializer => _$$ConsumerProfileUserSerializer();
}

class _$$ConsumerProfileUserSerializer implements PrimitiveSerializer<$ConsumerProfileUser> {
  @override
  final Iterable<Type> types = const [$ConsumerProfileUser, _$$ConsumerProfileUser];

  @override
  final String wireName = r'$ConsumerProfileUser';

  @override
  Object serialize(
    Serializers serializers,
    $ConsumerProfileUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ConsumerProfileUser))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerProfileUserBuilder result,
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
        case r'f_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fName = valueDes;
          break;
        case r'l_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lName = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
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
        case r'ref_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.refCode = valueDes;
          break;
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.zoneId = valueDes;
          break;
        case r'wallet_balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.walletBalance = valueDes;
          break;
        case r'loyalty_point':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.loyaltyPoint = valueDes;
          break;
        case r'interest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.interest = valueDes;
          break;
        case r'cm_firebase_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cmFirebaseToken = valueDes;
          break;
        case r'current_language_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.currentLanguageKey = valueDes;
          break;
        case r'order_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.orderCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ConsumerProfileUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ConsumerProfileUserBuilder();
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


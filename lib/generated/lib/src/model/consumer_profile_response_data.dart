//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:openapi/src/model/consumer_profile_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_profile_response_data.g.dart';

/// ConsumerProfileResponseData
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
/// * [userinfo] 
/// * [memberSinceDays] 
/// * [isValidForDiscount] 
/// * [discountAmount] 
/// * [discountAmountType] 
/// * [validity] 
@BuiltValue()
abstract class ConsumerProfileResponseData implements ConsumerProfileUser, Built<ConsumerProfileResponseData, ConsumerProfileResponseDataBuilder> {
  @BuiltValueField(wireName: r'is_valid_for_discount')
  bool? get isValidForDiscount;

  @BuiltValueField(wireName: r'member_since_days')
  int? get memberSinceDays;

  @BuiltValueField(wireName: r'discount_amount')
  num? get discountAmount;

  @BuiltValueField(wireName: r'validity')
  String? get validity;

  @BuiltValueField(wireName: r'discount_amount_type')
  String? get discountAmountType;

  @BuiltValueField(wireName: r'userinfo')
  JsonObject? get userinfo;

  ConsumerProfileResponseData._();

  factory ConsumerProfileResponseData([void updates(ConsumerProfileResponseDataBuilder b)]) = _$ConsumerProfileResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerProfileResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerProfileResponseData> get serializer => _$ConsumerProfileResponseDataSerializer();
}

class _$ConsumerProfileResponseDataSerializer implements PrimitiveSerializer<ConsumerProfileResponseData> {
  @override
  final Iterable<Type> types = const [ConsumerProfileResponseData, _$ConsumerProfileResponseData];

  @override
  final String wireName = r'ConsumerProfileResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerProfileResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isValidForDiscount != null) {
      yield r'is_valid_for_discount';
      yield serializers.serialize(
        object.isValidForDiscount,
        specifiedType: const FullType(bool),
      );
    }
    if (object.lName != null) {
      yield r'l_name';
      yield serializers.serialize(
        object.lName,
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
    if (object.cmFirebaseToken != null) {
      yield r'cm_firebase_token';
      yield serializers.serialize(
        object.cmFirebaseToken,
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
    if (object.memberSinceDays != null) {
      yield r'member_since_days';
      yield serializers.serialize(
        object.memberSinceDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.orderCount != null) {
      yield r'order_count';
      yield serializers.serialize(
        object.orderCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.discountAmount != null) {
      yield r'discount_amount';
      yield serializers.serialize(
        object.discountAmount,
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
    if (object.isEmailVerified != null) {
      yield r'is_email_verified';
      yield serializers.serialize(
        object.isEmailVerified,
        specifiedType: const FullType(int),
      );
    }
    if (object.fName != null) {
      yield r'f_name';
      yield serializers.serialize(
        object.fName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.walletBalance != null) {
      yield r'wallet_balance';
      yield serializers.serialize(
        object.walletBalance,
        specifiedType: const FullType(num),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.interest != null) {
      yield r'interest';
      yield serializers.serialize(
        object.interest,
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
    if (object.zoneId != null) {
      yield r'zone_id';
      yield serializers.serialize(
        object.zoneId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.validity != null) {
      yield r'validity';
      yield serializers.serialize(
        object.validity,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.discountAmountType != null) {
      yield r'discount_amount_type';
      yield serializers.serialize(
        object.discountAmountType,
        specifiedType: const FullType(String),
      );
    }
    if (object.refCode != null) {
      yield r'ref_code';
      yield serializers.serialize(
        object.refCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.userinfo != null) {
      yield r'userinfo';
      yield serializers.serialize(
        object.userinfo,
        specifiedType: const FullType.nullable(JsonObject),
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
    ConsumerProfileResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerProfileResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'is_valid_for_discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isValidForDiscount = valueDes;
          break;
        case r'l_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lName = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'cm_firebase_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cmFirebaseToken = valueDes;
          break;
        case r'is_phone_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.isPhoneVerified = valueDes;
          break;
        case r'member_since_days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.memberSinceDays = valueDes;
          break;
        case r'order_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.orderCount = valueDes;
          break;
        case r'discount_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.discountAmount = valueDes;
          break;
        case r'loyalty_point':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.loyaltyPoint = valueDes;
          break;
        case r'is_email_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.isEmailVerified = valueDes;
          break;
        case r'f_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fName = valueDes;
          break;
        case r'wallet_balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.walletBalance = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'interest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.interest = valueDes;
          break;
        case r'current_language_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.currentLanguageKey = valueDes;
          break;
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.zoneId = valueDes;
          break;
        case r'validity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.validity = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'discount_amount_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.discountAmountType = valueDes;
          break;
        case r'ref_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.refCode = valueDes;
          break;
        case r'userinfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.userinfo = valueDes;
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
  ConsumerProfileResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerProfileResponseDataBuilder();
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



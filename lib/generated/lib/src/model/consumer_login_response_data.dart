//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_login_response_data_one_of.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/consumer_social_login_exist_user.dart';
import 'package:openapi/src/model/consumer_social_login_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'consumer_login_response_data.g.dart';

/// ConsumerLoginResponseData
///
/// Properties:
/// * [token] - JWT when is_personal_info=1; null until profile has name
/// * [isPhoneVerified] 
/// * [isEmailVerified] 
/// * [loginType] 
/// * [isPersonalInfo] - 1 if user has f_name (full JWT issued)
/// * [isExistUser] 
/// * [email] 
@BuiltValue()
abstract class ConsumerLoginResponseData implements Built<ConsumerLoginResponseData, ConsumerLoginResponseDataBuilder> {
  /// One Of [ConsumerLoginResponseDataOneOf], [ConsumerSocialLoginData]
  OneOf get oneOf;

  ConsumerLoginResponseData._();

  factory ConsumerLoginResponseData([void updates(ConsumerLoginResponseDataBuilder b)]) = _$ConsumerLoginResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerLoginResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerLoginResponseData> get serializer => _$ConsumerLoginResponseDataSerializer();
}

class _$ConsumerLoginResponseDataSerializer implements PrimitiveSerializer<ConsumerLoginResponseData> {
  @override
  final Iterable<Type> types = const [ConsumerLoginResponseData, _$ConsumerLoginResponseData];

  @override
  final String wireName = r'ConsumerLoginResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerLoginResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerLoginResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ConsumerLoginResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerLoginResponseDataBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(ConsumerLoginResponseDataOneOf), FullType(ConsumerSocialLoginData), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


/// 1 if user has f_name (full JWT issued)
class ConsumerLoginResponseDataIsPersonalInfoEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 0)
  static const ConsumerLoginResponseDataIsPersonalInfoEnum number0 = _$consumerLoginResponseDataIsPersonalInfoEnum_number0;
  @BuiltValueEnumConst(wireNumber: 1)
  static const ConsumerLoginResponseDataIsPersonalInfoEnum number1 = _$consumerLoginResponseDataIsPersonalInfoEnum_number1;

  static Serializer<ConsumerLoginResponseDataIsPersonalInfoEnum> get serializer => _$consumerLoginResponseDataIsPersonalInfoEnumSerializer;

  const ConsumerLoginResponseDataIsPersonalInfoEnum._(String name): super(name);

  static BuiltSet<ConsumerLoginResponseDataIsPersonalInfoEnum> get values => _$consumerLoginResponseDataIsPersonalInfoEnumValues;
  static ConsumerLoginResponseDataIsPersonalInfoEnum valueOf(String name) => _$consumerLoginResponseDataIsPersonalInfoEnumValueOf(name);
}


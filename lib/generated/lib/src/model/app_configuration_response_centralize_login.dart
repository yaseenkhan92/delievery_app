//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_configuration_response_centralize_login.g.dart';

/// AppConfigurationResponseCentralizeLogin
///
/// Properties:
/// * [manualLoginStatus] 
/// * [otpLoginStatus] 
/// * [socialLoginStatus] 
@BuiltValue()
abstract class AppConfigurationResponseCentralizeLogin implements Built<AppConfigurationResponseCentralizeLogin, AppConfigurationResponseCentralizeLoginBuilder> {
  @BuiltValueField(wireName: r'manual_login_status')
  int? get manualLoginStatus;

  @BuiltValueField(wireName: r'otp_login_status')
  int? get otpLoginStatus;

  @BuiltValueField(wireName: r'social_login_status')
  int? get socialLoginStatus;

  AppConfigurationResponseCentralizeLogin._();

  factory AppConfigurationResponseCentralizeLogin([void updates(AppConfigurationResponseCentralizeLoginBuilder b)]) = _$AppConfigurationResponseCentralizeLogin;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppConfigurationResponseCentralizeLoginBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AppConfigurationResponseCentralizeLogin> get serializer => _$AppConfigurationResponseCentralizeLoginSerializer();
}

class _$AppConfigurationResponseCentralizeLoginSerializer implements PrimitiveSerializer<AppConfigurationResponseCentralizeLogin> {
  @override
  final Iterable<Type> types = const [AppConfigurationResponseCentralizeLogin, _$AppConfigurationResponseCentralizeLogin];

  @override
  final String wireName = r'AppConfigurationResponseCentralizeLogin';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AppConfigurationResponseCentralizeLogin object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.manualLoginStatus != null) {
      yield r'manual_login_status';
      yield serializers.serialize(
        object.manualLoginStatus,
        specifiedType: const FullType(int),
      );
    }
    if (object.otpLoginStatus != null) {
      yield r'otp_login_status';
      yield serializers.serialize(
        object.otpLoginStatus,
        specifiedType: const FullType(int),
      );
    }
    if (object.socialLoginStatus != null) {
      yield r'social_login_status';
      yield serializers.serialize(
        object.socialLoginStatus,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AppConfigurationResponseCentralizeLogin object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AppConfigurationResponseCentralizeLoginBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'manual_login_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.manualLoginStatus = valueDes;
          break;
        case r'otp_login_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.otpLoginStatus = valueDes;
          break;
        case r'social_login_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.socialLoginStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AppConfigurationResponseCentralizeLogin deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppConfigurationResponseCentralizeLoginBuilder();
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



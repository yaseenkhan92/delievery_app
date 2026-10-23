//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_password_reset_body.g.dart';

/// DeliveryManPasswordResetBody
///
/// Properties:
/// * [phone] 
/// * [otp] 
/// * [password] 
/// * [confirmPassword] 
@BuiltValue()
abstract class DeliveryManPasswordResetBody implements Built<DeliveryManPasswordResetBody, DeliveryManPasswordResetBodyBuilder> {
  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'otp')
  String get otp;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'confirm_password')
  String get confirmPassword;

  DeliveryManPasswordResetBody._();

  factory DeliveryManPasswordResetBody([void updates(DeliveryManPasswordResetBodyBuilder b)]) = _$DeliveryManPasswordResetBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManPasswordResetBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManPasswordResetBody> get serializer => _$DeliveryManPasswordResetBodySerializer();
}

class _$DeliveryManPasswordResetBodySerializer implements PrimitiveSerializer<DeliveryManPasswordResetBody> {
  @override
  final Iterable<Type> types = const [DeliveryManPasswordResetBody, _$DeliveryManPasswordResetBody];

  @override
  final String wireName = r'DeliveryManPasswordResetBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManPasswordResetBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    yield r'otp';
    yield serializers.serialize(
      object.otp,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'confirm_password';
    yield serializers.serialize(
      object.confirmPassword,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManPasswordResetBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManPasswordResetBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'otp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.otp = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'confirm_password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confirmPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManPasswordResetBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManPasswordResetBodyBuilder();
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



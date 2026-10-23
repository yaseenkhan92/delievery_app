//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_change_password_body.g.dart';

/// DeliveryManChangePasswordBody
///
/// Properties:
/// * [currentPassword] 
/// * [password] 
/// * [confirmPassword] 
@BuiltValue()
abstract class DeliveryManChangePasswordBody implements Built<DeliveryManChangePasswordBody, DeliveryManChangePasswordBodyBuilder> {
  @BuiltValueField(wireName: r'current_password')
  String get currentPassword;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'confirm_password')
  String get confirmPassword;

  DeliveryManChangePasswordBody._();

  factory DeliveryManChangePasswordBody([void updates(DeliveryManChangePasswordBodyBuilder b)]) = _$DeliveryManChangePasswordBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManChangePasswordBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManChangePasswordBody> get serializer => _$DeliveryManChangePasswordBodySerializer();
}

class _$DeliveryManChangePasswordBodySerializer implements PrimitiveSerializer<DeliveryManChangePasswordBody> {
  @override
  final Iterable<Type> types = const [DeliveryManChangePasswordBody, _$DeliveryManChangePasswordBody];

  @override
  final String wireName = r'DeliveryManChangePasswordBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManChangePasswordBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'current_password';
    yield serializers.serialize(
      object.currentPassword,
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
    DeliveryManChangePasswordBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManChangePasswordBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'current_password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currentPassword = valueDes;
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
  DeliveryManChangePasswordBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManChangePasswordBodyBuilder();
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



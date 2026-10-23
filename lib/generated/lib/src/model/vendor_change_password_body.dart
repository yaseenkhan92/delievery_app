//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_change_password_body.g.dart';

/// VendorChangePasswordBody
///
/// Properties:
/// * [currentPassword] 
/// * [password] 
/// * [confirmPassword] 
@BuiltValue()
abstract class VendorChangePasswordBody implements Built<VendorChangePasswordBody, VendorChangePasswordBodyBuilder> {
  @BuiltValueField(wireName: r'current_password')
  String get currentPassword;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'confirm_password')
  String get confirmPassword;

  VendorChangePasswordBody._();

  factory VendorChangePasswordBody([void updates(VendorChangePasswordBodyBuilder b)]) = _$VendorChangePasswordBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorChangePasswordBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorChangePasswordBody> get serializer => _$VendorChangePasswordBodySerializer();
}

class _$VendorChangePasswordBodySerializer implements PrimitiveSerializer<VendorChangePasswordBody> {
  @override
  final Iterable<Type> types = const [VendorChangePasswordBody, _$VendorChangePasswordBody];

  @override
  final String wireName = r'VendorChangePasswordBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorChangePasswordBody object, {
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
    VendorChangePasswordBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorChangePasswordBodyBuilder result,
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
  VendorChangePasswordBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorChangePasswordBodyBuilder();
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



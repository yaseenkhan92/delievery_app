//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_login_body.g.dart';

/// DeliveryManLoginBody
///
/// Properties:
/// * [phone] 
/// * [password] 
/// * [rememberMe] 
@BuiltValue()
abstract class DeliveryManLoginBody implements Built<DeliveryManLoginBody, DeliveryManLoginBodyBuilder> {
  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'remember_me')
  bool? get rememberMe;

  DeliveryManLoginBody._();

  factory DeliveryManLoginBody([void updates(DeliveryManLoginBodyBuilder b)]) = _$DeliveryManLoginBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManLoginBodyBuilder b) => b
      ..rememberMe = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManLoginBody> get serializer => _$DeliveryManLoginBodySerializer();
}

class _$DeliveryManLoginBodySerializer implements PrimitiveSerializer<DeliveryManLoginBody> {
  @override
  final Iterable<Type> types = const [DeliveryManLoginBody, _$DeliveryManLoginBody];

  @override
  final String wireName = r'DeliveryManLoginBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManLoginBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    if (object.rememberMe != null) {
      yield r'remember_me';
      yield serializers.serialize(
        object.rememberMe,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManLoginBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManLoginBodyBuilder result,
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
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'remember_me':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.rememberMe = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManLoginBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManLoginBodyBuilder();
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



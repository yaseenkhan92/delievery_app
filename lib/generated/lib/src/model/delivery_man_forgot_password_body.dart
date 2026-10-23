//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_forgot_password_body.g.dart';

/// DeliveryManForgotPasswordBody
///
/// Properties:
/// * [phone] 
@BuiltValue()
abstract class DeliveryManForgotPasswordBody implements Built<DeliveryManForgotPasswordBody, DeliveryManForgotPasswordBodyBuilder> {
  @BuiltValueField(wireName: r'phone')
  String get phone;

  DeliveryManForgotPasswordBody._();

  factory DeliveryManForgotPasswordBody([void updates(DeliveryManForgotPasswordBodyBuilder b)]) = _$DeliveryManForgotPasswordBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManForgotPasswordBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManForgotPasswordBody> get serializer => _$DeliveryManForgotPasswordBodySerializer();
}

class _$DeliveryManForgotPasswordBodySerializer implements PrimitiveSerializer<DeliveryManForgotPasswordBody> {
  @override
  final Iterable<Type> types = const [DeliveryManForgotPasswordBody, _$DeliveryManForgotPasswordBody];

  @override
  final String wireName = r'DeliveryManForgotPasswordBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManForgotPasswordBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManForgotPasswordBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManForgotPasswordBodyBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManForgotPasswordBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManForgotPasswordBodyBuilder();
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



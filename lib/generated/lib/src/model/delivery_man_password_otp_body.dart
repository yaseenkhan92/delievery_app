//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_password_otp_body.g.dart';

/// DeliveryManPasswordOtpBody
///
/// Properties:
/// * [phone] 
/// * [otp] 
@BuiltValue()
abstract class DeliveryManPasswordOtpBody implements Built<DeliveryManPasswordOtpBody, DeliveryManPasswordOtpBodyBuilder> {
  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'otp')
  String get otp;

  DeliveryManPasswordOtpBody._();

  factory DeliveryManPasswordOtpBody([void updates(DeliveryManPasswordOtpBodyBuilder b)]) = _$DeliveryManPasswordOtpBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManPasswordOtpBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManPasswordOtpBody> get serializer => _$DeliveryManPasswordOtpBodySerializer();
}

class _$DeliveryManPasswordOtpBodySerializer implements PrimitiveSerializer<DeliveryManPasswordOtpBody> {
  @override
  final Iterable<Type> types = const [DeliveryManPasswordOtpBody, _$DeliveryManPasswordOtpBody];

  @override
  final String wireName = r'DeliveryManPasswordOtpBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManPasswordOtpBody object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManPasswordOtpBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManPasswordOtpBodyBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManPasswordOtpBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManPasswordOtpBodyBuilder();
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



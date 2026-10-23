//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_register_body.g.dart';

/// ConsumerRegisterBody
///
/// Properties:
/// * [fName] 
/// * [lName] 
/// * [phone] 
/// * [email] 
/// * [password] 
/// * [refCode] 
@BuiltValue()
abstract class ConsumerRegisterBody implements Built<ConsumerRegisterBody, ConsumerRegisterBodyBuilder> {
  @BuiltValueField(wireName: r'f_name')
  String get fName;

  @BuiltValueField(wireName: r'l_name')
  String? get lName;

  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'ref_code')
  String? get refCode;

  ConsumerRegisterBody._();

  factory ConsumerRegisterBody([void updates(ConsumerRegisterBodyBuilder b)]) = _$ConsumerRegisterBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerRegisterBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerRegisterBody> get serializer => _$ConsumerRegisterBodySerializer();
}

class _$ConsumerRegisterBodySerializer implements PrimitiveSerializer<ConsumerRegisterBody> {
  @override
  final Iterable<Type> types = const [ConsumerRegisterBody, _$ConsumerRegisterBody];

  @override
  final String wireName = r'ConsumerRegisterBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerRegisterBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'f_name';
    yield serializers.serialize(
      object.fName,
      specifiedType: const FullType(String),
    );
    if (object.lName != null) {
      yield r'l_name';
      yield serializers.serialize(
        object.lName,
        specifiedType: const FullType(String),
      );
    }
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    if (object.refCode != null) {
      yield r'ref_code';
      yield serializers.serialize(
        object.refCode,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerRegisterBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerRegisterBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'f_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
            specifiedType: const FullType(String),
          ) as String;
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
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'ref_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.refCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerRegisterBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerRegisterBodyBuilder();
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



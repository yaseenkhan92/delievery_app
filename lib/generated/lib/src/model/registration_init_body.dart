//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'registration_init_body.g.dart';

/// RegistrationInitBody
///
/// Properties:
/// * [role] - Partner type applying (not the consumer user role)
@BuiltValue()
abstract class RegistrationInitBody implements Built<RegistrationInitBody, RegistrationInitBodyBuilder> {
  /// Partner type applying (not the consumer user role)
  @BuiltValueField(wireName: r'role')
  RegistrationInitBodyRoleEnum get role;
  // enum roleEnum {  vendor,  deliveryman,  };

  RegistrationInitBody._();

  factory RegistrationInitBody([void updates(RegistrationInitBodyBuilder b)]) = _$RegistrationInitBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegistrationInitBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegistrationInitBody> get serializer => _$RegistrationInitBodySerializer();
}

class _$RegistrationInitBodySerializer implements PrimitiveSerializer<RegistrationInitBody> {
  @override
  final Iterable<Type> types = const [RegistrationInitBody, _$RegistrationInitBody];

  @override
  final String wireName = r'RegistrationInitBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegistrationInitBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(RegistrationInitBodyRoleEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RegistrationInitBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegistrationInitBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RegistrationInitBodyRoleEnum),
          ) as RegistrationInitBodyRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegistrationInitBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegistrationInitBodyBuilder();
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


/// Partner type applying (not the consumer user role)
class RegistrationInitBodyRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'vendor')
  static const RegistrationInitBodyRoleEnum vendor = _$registrationInitBodyRoleEnum_vendor;
  @BuiltValueEnumConst(wireName: r'deliveryman')
  static const RegistrationInitBodyRoleEnum deliveryman = _$registrationInitBodyRoleEnum_deliveryman;

  static Serializer<RegistrationInitBodyRoleEnum> get serializer => _$registrationInitBodyRoleEnumSerializer;

  const RegistrationInitBodyRoleEnum._(String name): super(name);

  static BuiltSet<RegistrationInitBodyRoleEnum> get values => _$registrationInitBodyRoleEnumValues;
  static RegistrationInitBodyRoleEnum valueOf(String name) => _$registrationInitBodyRoleEnumValueOf(name);
}


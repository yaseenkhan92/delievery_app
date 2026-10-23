//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_apply_delivery_man_body.g.dart';

/// ConsumerApplyDeliveryManBody
///
/// Properties:
/// * [fName] 
/// * [lName] 
/// * [phone] 
/// * [email] 
/// * [password] 
/// * [otp] - Phone OTP (not confirm_password)
/// * [cloudflareId] - Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
/// * [identityImage] - R2 path from POST /upload `path` (category identity)
/// * [image] - Optional profile photo path (category profile)
/// * [zoneId] - From GET /consumer/config/zone-id (query or body)
@BuiltValue()
abstract class ConsumerApplyDeliveryManBody implements Built<ConsumerApplyDeliveryManBody, ConsumerApplyDeliveryManBodyBuilder> {
  @BuiltValueField(wireName: r'f_name')
  String get fName;

  @BuiltValueField(wireName: r'l_name')
  String get lName;

  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  /// Phone OTP (not confirm_password)
  @BuiltValueField(wireName: r'otp')
  String get otp;

  /// Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
  @BuiltValueField(wireName: r'cloudflare_id')
  String? get cloudflareId;

  /// R2 path from POST /upload `path` (category identity)
  @BuiltValueField(wireName: r'identity_image')
  String? get identityImage;

  /// Optional profile photo path (category profile)
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// From GET /consumer/config/zone-id (query or body)
  @BuiltValueField(wireName: r'zone_id')
  int? get zoneId;

  ConsumerApplyDeliveryManBody._();

  factory ConsumerApplyDeliveryManBody([void updates(ConsumerApplyDeliveryManBodyBuilder b)]) = _$ConsumerApplyDeliveryManBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerApplyDeliveryManBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerApplyDeliveryManBody> get serializer => _$ConsumerApplyDeliveryManBodySerializer();
}

class _$ConsumerApplyDeliveryManBodySerializer implements PrimitiveSerializer<ConsumerApplyDeliveryManBody> {
  @override
  final Iterable<Type> types = const [ConsumerApplyDeliveryManBody, _$ConsumerApplyDeliveryManBody];

  @override
  final String wireName = r'ConsumerApplyDeliveryManBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerApplyDeliveryManBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'f_name';
    yield serializers.serialize(
      object.fName,
      specifiedType: const FullType(String),
    );
    yield r'l_name';
    yield serializers.serialize(
      object.lName,
      specifiedType: const FullType(String),
    );
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'otp';
    yield serializers.serialize(
      object.otp,
      specifiedType: const FullType(String),
    );
    if (object.cloudflareId != null) {
      yield r'cloudflare_id';
      yield serializers.serialize(
        object.cloudflareId,
        specifiedType: const FullType(String),
      );
    }
    if (object.identityImage != null) {
      yield r'identity_image';
      yield serializers.serialize(
        object.identityImage,
        specifiedType: const FullType(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.zoneId != null) {
      yield r'zone_id';
      yield serializers.serialize(
        object.zoneId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerApplyDeliveryManBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerApplyDeliveryManBodyBuilder result,
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
            specifiedType: const FullType(String),
          ) as String;
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
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'otp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.otp = valueDes;
          break;
        case r'cloudflare_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cloudflareId = valueDes;
          break;
        case r'identity_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.identityImage = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.zoneId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerApplyDeliveryManBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerApplyDeliveryManBodyBuilder();
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



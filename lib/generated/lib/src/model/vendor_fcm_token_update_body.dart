//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_fcm_token_update_body.g.dart';

/// VendorFcmTokenUpdateBody
///
/// Properties:
/// * [fcmToken] - Firebase Cloud Messaging device token
/// * [platform] - mobile → vendors.firebase_token (POS/app); web → vendors.fcm_token_web (browser panel)
@BuiltValue()
abstract class VendorFcmTokenUpdateBody implements Built<VendorFcmTokenUpdateBody, VendorFcmTokenUpdateBodyBuilder> {
  /// Firebase Cloud Messaging device token
  @BuiltValueField(wireName: r'fcm_token')
  String get fcmToken;

  /// mobile → vendors.firebase_token (POS/app); web → vendors.fcm_token_web (browser panel)
  @BuiltValueField(wireName: r'platform')
  VendorFcmTokenUpdateBodyPlatformEnum? get platform;
  // enum platformEnum {  mobile,  web,  };

  VendorFcmTokenUpdateBody._();

  factory VendorFcmTokenUpdateBody([void updates(VendorFcmTokenUpdateBodyBuilder b)]) = _$VendorFcmTokenUpdateBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorFcmTokenUpdateBodyBuilder b) => b
      ..platform = VendorFcmTokenUpdateBodyPlatformEnum.valueOf('mobile');

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorFcmTokenUpdateBody> get serializer => _$VendorFcmTokenUpdateBodySerializer();
}

class _$VendorFcmTokenUpdateBodySerializer implements PrimitiveSerializer<VendorFcmTokenUpdateBody> {
  @override
  final Iterable<Type> types = const [VendorFcmTokenUpdateBody, _$VendorFcmTokenUpdateBody];

  @override
  final String wireName = r'VendorFcmTokenUpdateBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorFcmTokenUpdateBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fcm_token';
    yield serializers.serialize(
      object.fcmToken,
      specifiedType: const FullType(String),
    );
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(VendorFcmTokenUpdateBodyPlatformEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorFcmTokenUpdateBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorFcmTokenUpdateBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fcm_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fcmToken = valueDes;
          break;
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorFcmTokenUpdateBodyPlatformEnum),
          ) as VendorFcmTokenUpdateBodyPlatformEnum?;
          if (valueDes == null) continue;
          result.platform = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorFcmTokenUpdateBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorFcmTokenUpdateBodyBuilder();
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


/// mobile → vendors.firebase_token (POS/app); web → vendors.fcm_token_web (browser panel)
class VendorFcmTokenUpdateBodyPlatformEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'mobile')
  static const VendorFcmTokenUpdateBodyPlatformEnum mobile = _$vendorFcmTokenUpdateBodyPlatformEnum_mobile;
  @BuiltValueEnumConst(wireName: r'web')
  static const VendorFcmTokenUpdateBodyPlatformEnum web = _$vendorFcmTokenUpdateBodyPlatformEnum_web;

  static Serializer<VendorFcmTokenUpdateBodyPlatformEnum> get serializer => _$vendorFcmTokenUpdateBodyPlatformEnumSerializer;

  const VendorFcmTokenUpdateBodyPlatformEnum._(String name): super(name);

  static BuiltSet<VendorFcmTokenUpdateBodyPlatformEnum> get values => _$vendorFcmTokenUpdateBodyPlatformEnumValues;
  static VendorFcmTokenUpdateBodyPlatformEnum valueOf(String name) => _$vendorFcmTokenUpdateBodyPlatformEnumValueOf(name);
}


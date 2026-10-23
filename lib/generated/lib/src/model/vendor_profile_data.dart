//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_profile_data.g.dart';

/// Vendor row without password, auth_token, or remember_token
///
/// Properties:
/// * [id] 
/// * [fName] 
/// * [lName] 
/// * [phone] 
/// * [email] 
/// * [emailVerifiedAt] 
/// * [image] 
/// * [status] 
/// * [firebaseToken] - FCM token for mobile POS / vendor app
/// * [fcmTokenWeb] - FCM token for Restaurant Web Panel
/// * [bankName] 
/// * [branch] 
/// * [holderName] 
/// * [accountNo] 
/// * [cloudflareId] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class VendorProfileData implements Built<VendorProfileData, VendorProfileDataBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'f_name')
  String? get fName;

  @BuiltValueField(wireName: r'l_name')
  String? get lName;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'email_verified_at')
  DateTime? get emailVerifiedAt;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  /// FCM token for mobile POS / vendor app
  @BuiltValueField(wireName: r'firebase_token')
  String? get firebaseToken;

  /// FCM token for Restaurant Web Panel
  @BuiltValueField(wireName: r'fcm_token_web')
  String? get fcmTokenWeb;

  @BuiltValueField(wireName: r'bank_name')
  String? get bankName;

  @BuiltValueField(wireName: r'branch')
  String? get branch;

  @BuiltValueField(wireName: r'holder_name')
  String? get holderName;

  @BuiltValueField(wireName: r'account_no')
  String? get accountNo;

  @BuiltValueField(wireName: r'cloudflareId')
  String? get cloudflareId;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  VendorProfileData._();

  factory VendorProfileData([void updates(VendorProfileDataBuilder b)]) = _$VendorProfileData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorProfileDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorProfileData> get serializer => _$VendorProfileDataSerializer();
}

class _$VendorProfileDataSerializer implements PrimitiveSerializer<VendorProfileData> {
  @override
  final Iterable<Type> types = const [VendorProfileData, _$VendorProfileData];

  @override
  final String wireName = r'VendorProfileData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorProfileData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.fName != null) {
      yield r'f_name';
      yield serializers.serialize(
        object.fName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lName != null) {
      yield r'l_name';
      yield serializers.serialize(
        object.lName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.emailVerifiedAt != null) {
      yield r'email_verified_at';
      yield serializers.serialize(
        object.emailVerifiedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.firebaseToken != null) {
      yield r'firebase_token';
      yield serializers.serialize(
        object.firebaseToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fcmTokenWeb != null) {
      yield r'fcm_token_web';
      yield serializers.serialize(
        object.fcmTokenWeb,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bankName != null) {
      yield r'bank_name';
      yield serializers.serialize(
        object.bankName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.branch != null) {
      yield r'branch';
      yield serializers.serialize(
        object.branch,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.holderName != null) {
      yield r'holder_name';
      yield serializers.serialize(
        object.holderName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.accountNo != null) {
      yield r'account_no';
      yield serializers.serialize(
        object.accountNo,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cloudflareId != null) {
      yield r'cloudflareId';
      yield serializers.serialize(
        object.cloudflareId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorProfileData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorProfileDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'f_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
        case r'email_verified_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.emailVerifiedAt = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'firebase_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firebaseToken = valueDes;
          break;
        case r'fcm_token_web':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fcmTokenWeb = valueDes;
          break;
        case r'bank_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bankName = valueDes;
          break;
        case r'branch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.branch = valueDes;
          break;
        case r'holder_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.holderName = valueDes;
          break;
        case r'account_no':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountNo = valueDes;
          break;
        case r'cloudflareId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cloudflareId = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorProfileData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorProfileDataBuilder();
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



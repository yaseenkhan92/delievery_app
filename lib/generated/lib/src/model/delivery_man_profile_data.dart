//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_profile_data.g.dart';

/// Delivery man row without password or auth_token (GET whoami / profile)
///
/// Properties:
/// * [id] 
/// * [fName] 
/// * [lName] 
/// * [phone] 
/// * [email] 
/// * [identityNumber] 
/// * [identityType] 
/// * [identityImage] - JSON array string of R2 paths
/// * [image] - Profile photo path
/// * [fcmToken] 
/// * [zoneId] 
/// * [restaurantId] 
/// * [vehicleId] 
/// * [shiftId] 
/// * [status] - Account enabled by admin
/// * [active] - Online — available for new requests
/// * [earning] 
/// * [currentOrders] - Active assignment count (BigInt serialized)
/// * [type] 
/// * [applicationStatus] 
/// * [orderCount] 
/// * [assignedOrderCount] 
/// * [additionalData] 
/// * [additionalDocuments] 
/// * [cloudflareId] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class DeliveryManProfileData implements Built<DeliveryManProfileData, DeliveryManProfileDataBuilder> {
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

  @BuiltValueField(wireName: r'identity_number')
  String? get identityNumber;

  @BuiltValueField(wireName: r'identity_type')
  String? get identityType;

  /// JSON array string of R2 paths
  @BuiltValueField(wireName: r'identity_image')
  String? get identityImage;

  /// Profile photo path
  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'fcm_token')
  String? get fcmToken;

  @BuiltValueField(wireName: r'zone_id')
  String? get zoneId;

  @BuiltValueField(wireName: r'restaurant_id')
  String? get restaurantId;

  @BuiltValueField(wireName: r'vehicle_id')
  String? get vehicleId;

  @BuiltValueField(wireName: r'shift_id')
  String? get shiftId;

  /// Account enabled by admin
  @BuiltValueField(wireName: r'status')
  bool? get status;

  /// Online — available for new requests
  @BuiltValueField(wireName: r'active')
  bool? get active;

  @BuiltValueField(wireName: r'earning')
  bool? get earning;

  /// Active assignment count (BigInt serialized)
  @BuiltValueField(wireName: r'current_orders')
  String? get currentOrders;

  @BuiltValueField(wireName: r'type')
  DeliveryManProfileDataTypeEnum? get type;
  // enum typeEnum {  zone_wise,  restaurant_wise,  };

  @BuiltValueField(wireName: r'application_status')
  DeliveryManProfileDataApplicationStatusEnum? get applicationStatus;
  // enum applicationStatusEnum {  pending,  approved,  denied,  };

  @BuiltValueField(wireName: r'order_count')
  String? get orderCount;

  @BuiltValueField(wireName: r'assigned_order_count')
  String? get assignedOrderCount;

  @BuiltValueField(wireName: r'additional_data')
  String? get additionalData;

  @BuiltValueField(wireName: r'additional_documents')
  String? get additionalDocuments;

  @BuiltValueField(wireName: r'cloudflareId')
  String? get cloudflareId;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  DeliveryManProfileData._();

  factory DeliveryManProfileData([void updates(DeliveryManProfileDataBuilder b)]) = _$DeliveryManProfileData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManProfileDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManProfileData> get serializer => _$DeliveryManProfileDataSerializer();
}

class _$DeliveryManProfileDataSerializer implements PrimitiveSerializer<DeliveryManProfileData> {
  @override
  final Iterable<Type> types = const [DeliveryManProfileData, _$DeliveryManProfileData];

  @override
  final String wireName = r'DeliveryManProfileData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManProfileData object, {
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
        specifiedType: const FullType.nullable(String),
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
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.identityNumber != null) {
      yield r'identity_number';
      yield serializers.serialize(
        object.identityNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.identityType != null) {
      yield r'identity_type';
      yield serializers.serialize(
        object.identityType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.identityImage != null) {
      yield r'identity_image';
      yield serializers.serialize(
        object.identityImage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fcmToken != null) {
      yield r'fcm_token';
      yield serializers.serialize(
        object.fcmToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.zoneId != null) {
      yield r'zone_id';
      yield serializers.serialize(
        object.zoneId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurant_id';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.vehicleId != null) {
      yield r'vehicle_id';
      yield serializers.serialize(
        object.vehicleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shiftId != null) {
      yield r'shift_id';
      yield serializers.serialize(
        object.shiftId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    if (object.earning != null) {
      yield r'earning';
      yield serializers.serialize(
        object.earning,
        specifiedType: const FullType(bool),
      );
    }
    if (object.currentOrders != null) {
      yield r'current_orders';
      yield serializers.serialize(
        object.currentOrders,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(DeliveryManProfileDataTypeEnum),
      );
    }
    if (object.applicationStatus != null) {
      yield r'application_status';
      yield serializers.serialize(
        object.applicationStatus,
        specifiedType: const FullType(DeliveryManProfileDataApplicationStatusEnum),
      );
    }
    if (object.orderCount != null) {
      yield r'order_count';
      yield serializers.serialize(
        object.orderCount,
        specifiedType: const FullType(String),
      );
    }
    if (object.assignedOrderCount != null) {
      yield r'assigned_order_count';
      yield serializers.serialize(
        object.assignedOrderCount,
        specifiedType: const FullType(String),
      );
    }
    if (object.additionalData != null) {
      yield r'additional_data';
      yield serializers.serialize(
        object.additionalData,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.additionalDocuments != null) {
      yield r'additional_documents';
      yield serializers.serialize(
        object.additionalDocuments,
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
    DeliveryManProfileData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManProfileDataBuilder result,
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
        case r'identity_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.identityNumber = valueDes;
          break;
        case r'identity_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.identityType = valueDes;
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
        case r'fcm_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fcmToken = valueDes;
          break;
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.zoneId = valueDes;
          break;
        case r'restaurant_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        case r'vehicle_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.vehicleId = valueDes;
          break;
        case r'shift_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shiftId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        case r'earning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.earning = valueDes;
          break;
        case r'current_orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.currentOrders = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManProfileDataTypeEnum),
          ) as DeliveryManProfileDataTypeEnum?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'application_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManProfileDataApplicationStatusEnum),
          ) as DeliveryManProfileDataApplicationStatusEnum?;
          if (valueDes == null) continue;
          result.applicationStatus = valueDes;
          break;
        case r'order_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderCount = valueDes;
          break;
        case r'assigned_order_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assignedOrderCount = valueDes;
          break;
        case r'additional_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.additionalData = valueDes;
          break;
        case r'additional_documents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.additionalDocuments = valueDes;
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
  DeliveryManProfileData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManProfileDataBuilder();
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


class DeliveryManProfileDataTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'zone_wise')
  static const DeliveryManProfileDataTypeEnum zoneWise = _$deliveryManProfileDataTypeEnum_zoneWise;
  @BuiltValueEnumConst(wireName: r'restaurant_wise')
  static const DeliveryManProfileDataTypeEnum restaurantWise = _$deliveryManProfileDataTypeEnum_restaurantWise;

  static Serializer<DeliveryManProfileDataTypeEnum> get serializer => _$deliveryManProfileDataTypeEnumSerializer;

  const DeliveryManProfileDataTypeEnum._(String name): super(name);

  static BuiltSet<DeliveryManProfileDataTypeEnum> get values => _$deliveryManProfileDataTypeEnumValues;
  static DeliveryManProfileDataTypeEnum valueOf(String name) => _$deliveryManProfileDataTypeEnumValueOf(name);
}

class DeliveryManProfileDataApplicationStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const DeliveryManProfileDataApplicationStatusEnum pending = _$deliveryManProfileDataApplicationStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'approved')
  static const DeliveryManProfileDataApplicationStatusEnum approved = _$deliveryManProfileDataApplicationStatusEnum_approved;
  @BuiltValueEnumConst(wireName: r'denied')
  static const DeliveryManProfileDataApplicationStatusEnum denied = _$deliveryManProfileDataApplicationStatusEnum_denied;

  static Serializer<DeliveryManProfileDataApplicationStatusEnum> get serializer => _$deliveryManProfileDataApplicationStatusEnumSerializer;

  const DeliveryManProfileDataApplicationStatusEnum._(String name): super(name);

  static BuiltSet<DeliveryManProfileDataApplicationStatusEnum> get values => _$deliveryManProfileDataApplicationStatusEnumValues;
  static DeliveryManProfileDataApplicationStatusEnum valueOf(String name) => _$deliveryManProfileDataApplicationStatusEnumValueOf(name);
}


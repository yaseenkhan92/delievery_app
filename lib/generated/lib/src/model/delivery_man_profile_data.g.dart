// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_profile_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeliveryManProfileDataTypeEnum _$deliveryManProfileDataTypeEnum_zoneWise =
    const DeliveryManProfileDataTypeEnum._('zoneWise');
const DeliveryManProfileDataTypeEnum
    _$deliveryManProfileDataTypeEnum_restaurantWise =
    const DeliveryManProfileDataTypeEnum._('restaurantWise');

DeliveryManProfileDataTypeEnum _$deliveryManProfileDataTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'zoneWise':
      return _$deliveryManProfileDataTypeEnum_zoneWise;
    case 'restaurantWise':
      return _$deliveryManProfileDataTypeEnum_restaurantWise;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeliveryManProfileDataTypeEnum>
    _$deliveryManProfileDataTypeEnumValues = BuiltSet<
        DeliveryManProfileDataTypeEnum>(const <DeliveryManProfileDataTypeEnum>[
  _$deliveryManProfileDataTypeEnum_zoneWise,
  _$deliveryManProfileDataTypeEnum_restaurantWise,
]);

const DeliveryManProfileDataApplicationStatusEnum
    _$deliveryManProfileDataApplicationStatusEnum_pending =
    const DeliveryManProfileDataApplicationStatusEnum._('pending');
const DeliveryManProfileDataApplicationStatusEnum
    _$deliveryManProfileDataApplicationStatusEnum_approved =
    const DeliveryManProfileDataApplicationStatusEnum._('approved');
const DeliveryManProfileDataApplicationStatusEnum
    _$deliveryManProfileDataApplicationStatusEnum_denied =
    const DeliveryManProfileDataApplicationStatusEnum._('denied');

DeliveryManProfileDataApplicationStatusEnum
    _$deliveryManProfileDataApplicationStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$deliveryManProfileDataApplicationStatusEnum_pending;
    case 'approved':
      return _$deliveryManProfileDataApplicationStatusEnum_approved;
    case 'denied':
      return _$deliveryManProfileDataApplicationStatusEnum_denied;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeliveryManProfileDataApplicationStatusEnum>
    _$deliveryManProfileDataApplicationStatusEnumValues = BuiltSet<
        DeliveryManProfileDataApplicationStatusEnum>(const <DeliveryManProfileDataApplicationStatusEnum>[
  _$deliveryManProfileDataApplicationStatusEnum_pending,
  _$deliveryManProfileDataApplicationStatusEnum_approved,
  _$deliveryManProfileDataApplicationStatusEnum_denied,
]);

Serializer<DeliveryManProfileDataTypeEnum>
    _$deliveryManProfileDataTypeEnumSerializer =
    _$DeliveryManProfileDataTypeEnumSerializer();
Serializer<DeliveryManProfileDataApplicationStatusEnum>
    _$deliveryManProfileDataApplicationStatusEnumSerializer =
    _$DeliveryManProfileDataApplicationStatusEnumSerializer();

class _$DeliveryManProfileDataTypeEnumSerializer
    implements PrimitiveSerializer<DeliveryManProfileDataTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'zoneWise': 'zone_wise',
    'restaurantWise': 'restaurant_wise',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'zone_wise': 'zoneWise',
    'restaurant_wise': 'restaurantWise',
  };

  @override
  final Iterable<Type> types = const <Type>[DeliveryManProfileDataTypeEnum];
  @override
  final String wireName = 'DeliveryManProfileDataTypeEnum';

  @override
  Object serialize(
          Serializers serializers, DeliveryManProfileDataTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeliveryManProfileDataTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeliveryManProfileDataTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DeliveryManProfileDataApplicationStatusEnumSerializer
    implements
        PrimitiveSerializer<DeliveryManProfileDataApplicationStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'approved': 'approved',
    'denied': 'denied',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'approved': 'approved',
    'denied': 'denied',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DeliveryManProfileDataApplicationStatusEnum
  ];
  @override
  final String wireName = 'DeliveryManProfileDataApplicationStatusEnum';

  @override
  Object serialize(Serializers serializers,
          DeliveryManProfileDataApplicationStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeliveryManProfileDataApplicationStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeliveryManProfileDataApplicationStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DeliveryManProfileData extends DeliveryManProfileData {
  @override
  final String? id;
  @override
  final String? fName;
  @override
  final String? lName;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? identityNumber;
  @override
  final String? identityType;
  @override
  final String? identityImage;
  @override
  final String? image;
  @override
  final String? fcmToken;
  @override
  final String? zoneId;
  @override
  final String? restaurantId;
  @override
  final String? vehicleId;
  @override
  final String? shiftId;
  @override
  final bool? status;
  @override
  final bool? active;
  @override
  final bool? earning;
  @override
  final String? currentOrders;
  @override
  final DeliveryManProfileDataTypeEnum? type;
  @override
  final DeliveryManProfileDataApplicationStatusEnum? applicationStatus;
  @override
  final String? orderCount;
  @override
  final String? assignedOrderCount;
  @override
  final String? additionalData;
  @override
  final String? additionalDocuments;
  @override
  final String? cloudflareId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$DeliveryManProfileData(
          [void Function(DeliveryManProfileDataBuilder)? updates]) =>
      (DeliveryManProfileDataBuilder()..update(updates))._build();

  _$DeliveryManProfileData._(
      {this.id,
      this.fName,
      this.lName,
      this.phone,
      this.email,
      this.identityNumber,
      this.identityType,
      this.identityImage,
      this.image,
      this.fcmToken,
      this.zoneId,
      this.restaurantId,
      this.vehicleId,
      this.shiftId,
      this.status,
      this.active,
      this.earning,
      this.currentOrders,
      this.type,
      this.applicationStatus,
      this.orderCount,
      this.assignedOrderCount,
      this.additionalData,
      this.additionalDocuments,
      this.cloudflareId,
      this.createdAt,
      this.updatedAt})
      : super._();
  @override
  DeliveryManProfileData rebuild(
          void Function(DeliveryManProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManProfileDataBuilder toBuilder() =>
      DeliveryManProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManProfileData &&
        id == other.id &&
        fName == other.fName &&
        lName == other.lName &&
        phone == other.phone &&
        email == other.email &&
        identityNumber == other.identityNumber &&
        identityType == other.identityType &&
        identityImage == other.identityImage &&
        image == other.image &&
        fcmToken == other.fcmToken &&
        zoneId == other.zoneId &&
        restaurantId == other.restaurantId &&
        vehicleId == other.vehicleId &&
        shiftId == other.shiftId &&
        status == other.status &&
        active == other.active &&
        earning == other.earning &&
        currentOrders == other.currentOrders &&
        type == other.type &&
        applicationStatus == other.applicationStatus &&
        orderCount == other.orderCount &&
        assignedOrderCount == other.assignedOrderCount &&
        additionalData == other.additionalData &&
        additionalDocuments == other.additionalDocuments &&
        cloudflareId == other.cloudflareId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fName.hashCode);
    _$hash = $jc(_$hash, lName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, identityNumber.hashCode);
    _$hash = $jc(_$hash, identityType.hashCode);
    _$hash = $jc(_$hash, identityImage.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, vehicleId.hashCode);
    _$hash = $jc(_$hash, shiftId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, earning.hashCode);
    _$hash = $jc(_$hash, currentOrders.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, applicationStatus.hashCode);
    _$hash = $jc(_$hash, orderCount.hashCode);
    _$hash = $jc(_$hash, assignedOrderCount.hashCode);
    _$hash = $jc(_$hash, additionalData.hashCode);
    _$hash = $jc(_$hash, additionalDocuments.hashCode);
    _$hash = $jc(_$hash, cloudflareId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManProfileData')
          ..add('id', id)
          ..add('fName', fName)
          ..add('lName', lName)
          ..add('phone', phone)
          ..add('email', email)
          ..add('identityNumber', identityNumber)
          ..add('identityType', identityType)
          ..add('identityImage', identityImage)
          ..add('image', image)
          ..add('fcmToken', fcmToken)
          ..add('zoneId', zoneId)
          ..add('restaurantId', restaurantId)
          ..add('vehicleId', vehicleId)
          ..add('shiftId', shiftId)
          ..add('status', status)
          ..add('active', active)
          ..add('earning', earning)
          ..add('currentOrders', currentOrders)
          ..add('type', type)
          ..add('applicationStatus', applicationStatus)
          ..add('orderCount', orderCount)
          ..add('assignedOrderCount', assignedOrderCount)
          ..add('additionalData', additionalData)
          ..add('additionalDocuments', additionalDocuments)
          ..add('cloudflareId', cloudflareId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class DeliveryManProfileDataBuilder
    implements Builder<DeliveryManProfileData, DeliveryManProfileDataBuilder> {
  _$DeliveryManProfileData? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fName;
  String? get fName => _$this._fName;
  set fName(String? fName) => _$this._fName = fName;

  String? _lName;
  String? get lName => _$this._lName;
  set lName(String? lName) => _$this._lName = lName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _identityNumber;
  String? get identityNumber => _$this._identityNumber;
  set identityNumber(String? identityNumber) =>
      _$this._identityNumber = identityNumber;

  String? _identityType;
  String? get identityType => _$this._identityType;
  set identityType(String? identityType) => _$this._identityType = identityType;

  String? _identityImage;
  String? get identityImage => _$this._identityImage;
  set identityImage(String? identityImage) =>
      _$this._identityImage = identityImage;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  String? _zoneId;
  String? get zoneId => _$this._zoneId;
  set zoneId(String? zoneId) => _$this._zoneId = zoneId;

  String? _restaurantId;
  String? get restaurantId => _$this._restaurantId;
  set restaurantId(String? restaurantId) => _$this._restaurantId = restaurantId;

  String? _vehicleId;
  String? get vehicleId => _$this._vehicleId;
  set vehicleId(String? vehicleId) => _$this._vehicleId = vehicleId;

  String? _shiftId;
  String? get shiftId => _$this._shiftId;
  set shiftId(String? shiftId) => _$this._shiftId = shiftId;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  bool? _earning;
  bool? get earning => _$this._earning;
  set earning(bool? earning) => _$this._earning = earning;

  String? _currentOrders;
  String? get currentOrders => _$this._currentOrders;
  set currentOrders(String? currentOrders) =>
      _$this._currentOrders = currentOrders;

  DeliveryManProfileDataTypeEnum? _type;
  DeliveryManProfileDataTypeEnum? get type => _$this._type;
  set type(DeliveryManProfileDataTypeEnum? type) => _$this._type = type;

  DeliveryManProfileDataApplicationStatusEnum? _applicationStatus;
  DeliveryManProfileDataApplicationStatusEnum? get applicationStatus =>
      _$this._applicationStatus;
  set applicationStatus(
          DeliveryManProfileDataApplicationStatusEnum? applicationStatus) =>
      _$this._applicationStatus = applicationStatus;

  String? _orderCount;
  String? get orderCount => _$this._orderCount;
  set orderCount(String? orderCount) => _$this._orderCount = orderCount;

  String? _assignedOrderCount;
  String? get assignedOrderCount => _$this._assignedOrderCount;
  set assignedOrderCount(String? assignedOrderCount) =>
      _$this._assignedOrderCount = assignedOrderCount;

  String? _additionalData;
  String? get additionalData => _$this._additionalData;
  set additionalData(String? additionalData) =>
      _$this._additionalData = additionalData;

  String? _additionalDocuments;
  String? get additionalDocuments => _$this._additionalDocuments;
  set additionalDocuments(String? additionalDocuments) =>
      _$this._additionalDocuments = additionalDocuments;

  String? _cloudflareId;
  String? get cloudflareId => _$this._cloudflareId;
  set cloudflareId(String? cloudflareId) => _$this._cloudflareId = cloudflareId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DeliveryManProfileDataBuilder() {
    DeliveryManProfileData._defaults(this);
  }

  DeliveryManProfileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fName = $v.fName;
      _lName = $v.lName;
      _phone = $v.phone;
      _email = $v.email;
      _identityNumber = $v.identityNumber;
      _identityType = $v.identityType;
      _identityImage = $v.identityImage;
      _image = $v.image;
      _fcmToken = $v.fcmToken;
      _zoneId = $v.zoneId;
      _restaurantId = $v.restaurantId;
      _vehicleId = $v.vehicleId;
      _shiftId = $v.shiftId;
      _status = $v.status;
      _active = $v.active;
      _earning = $v.earning;
      _currentOrders = $v.currentOrders;
      _type = $v.type;
      _applicationStatus = $v.applicationStatus;
      _orderCount = $v.orderCount;
      _assignedOrderCount = $v.assignedOrderCount;
      _additionalData = $v.additionalData;
      _additionalDocuments = $v.additionalDocuments;
      _cloudflareId = $v.cloudflareId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManProfileData other) {
    _$v = other as _$DeliveryManProfileData;
  }

  @override
  void update(void Function(DeliveryManProfileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManProfileData build() => _build();

  _$DeliveryManProfileData _build() {
    final _$result = _$v ??
        _$DeliveryManProfileData._(
          id: id,
          fName: fName,
          lName: lName,
          phone: phone,
          email: email,
          identityNumber: identityNumber,
          identityType: identityType,
          identityImage: identityImage,
          image: image,
          fcmToken: fcmToken,
          zoneId: zoneId,
          restaurantId: restaurantId,
          vehicleId: vehicleId,
          shiftId: shiftId,
          status: status,
          active: active,
          earning: earning,
          currentOrders: currentOrders,
          type: type,
          applicationStatus: applicationStatus,
          orderCount: orderCount,
          assignedOrderCount: assignedOrderCount,
          additionalData: additionalData,
          additionalDocuments: additionalDocuments,
          cloudflareId: cloudflareId,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

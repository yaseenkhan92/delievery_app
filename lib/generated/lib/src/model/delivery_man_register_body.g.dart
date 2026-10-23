// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_register_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeliveryManRegisterBodyIdentityTypeEnum
    _$deliveryManRegisterBodyIdentityTypeEnum_passport =
    const DeliveryManRegisterBodyIdentityTypeEnum._('passport');
const DeliveryManRegisterBodyIdentityTypeEnum
    _$deliveryManRegisterBodyIdentityTypeEnum_drivingLicense =
    const DeliveryManRegisterBodyIdentityTypeEnum._('drivingLicense');
const DeliveryManRegisterBodyIdentityTypeEnum
    _$deliveryManRegisterBodyIdentityTypeEnum_nid =
    const DeliveryManRegisterBodyIdentityTypeEnum._('nid');

DeliveryManRegisterBodyIdentityTypeEnum
    _$deliveryManRegisterBodyIdentityTypeEnumValueOf(String name) {
  switch (name) {
    case 'passport':
      return _$deliveryManRegisterBodyIdentityTypeEnum_passport;
    case 'drivingLicense':
      return _$deliveryManRegisterBodyIdentityTypeEnum_drivingLicense;
    case 'nid':
      return _$deliveryManRegisterBodyIdentityTypeEnum_nid;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeliveryManRegisterBodyIdentityTypeEnum>
    _$deliveryManRegisterBodyIdentityTypeEnumValues = BuiltSet<
        DeliveryManRegisterBodyIdentityTypeEnum>(const <DeliveryManRegisterBodyIdentityTypeEnum>[
  _$deliveryManRegisterBodyIdentityTypeEnum_passport,
  _$deliveryManRegisterBodyIdentityTypeEnum_drivingLicense,
  _$deliveryManRegisterBodyIdentityTypeEnum_nid,
]);

const DeliveryManRegisterBodyDeliveryTypeEnum
    _$deliveryManRegisterBodyDeliveryTypeEnum_commission =
    const DeliveryManRegisterBodyDeliveryTypeEnum._('commission');
const DeliveryManRegisterBodyDeliveryTypeEnum
    _$deliveryManRegisterBodyDeliveryTypeEnum_salary =
    const DeliveryManRegisterBodyDeliveryTypeEnum._('salary');
const DeliveryManRegisterBodyDeliveryTypeEnum
    _$deliveryManRegisterBodyDeliveryTypeEnum_freelance =
    const DeliveryManRegisterBodyDeliveryTypeEnum._('freelance');

DeliveryManRegisterBodyDeliveryTypeEnum
    _$deliveryManRegisterBodyDeliveryTypeEnumValueOf(String name) {
  switch (name) {
    case 'commission':
      return _$deliveryManRegisterBodyDeliveryTypeEnum_commission;
    case 'salary':
      return _$deliveryManRegisterBodyDeliveryTypeEnum_salary;
    case 'freelance':
      return _$deliveryManRegisterBodyDeliveryTypeEnum_freelance;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeliveryManRegisterBodyDeliveryTypeEnum>
    _$deliveryManRegisterBodyDeliveryTypeEnumValues = BuiltSet<
        DeliveryManRegisterBodyDeliveryTypeEnum>(const <DeliveryManRegisterBodyDeliveryTypeEnum>[
  _$deliveryManRegisterBodyDeliveryTypeEnum_commission,
  _$deliveryManRegisterBodyDeliveryTypeEnum_salary,
  _$deliveryManRegisterBodyDeliveryTypeEnum_freelance,
]);

Serializer<DeliveryManRegisterBodyIdentityTypeEnum>
    _$deliveryManRegisterBodyIdentityTypeEnumSerializer =
    _$DeliveryManRegisterBodyIdentityTypeEnumSerializer();
Serializer<DeliveryManRegisterBodyDeliveryTypeEnum>
    _$deliveryManRegisterBodyDeliveryTypeEnumSerializer =
    _$DeliveryManRegisterBodyDeliveryTypeEnumSerializer();

class _$DeliveryManRegisterBodyIdentityTypeEnumSerializer
    implements PrimitiveSerializer<DeliveryManRegisterBodyIdentityTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'passport': 'passport',
    'drivingLicense': 'driving_license',
    'nid': 'nid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'passport': 'passport',
    'driving_license': 'drivingLicense',
    'nid': 'nid',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DeliveryManRegisterBodyIdentityTypeEnum
  ];
  @override
  final String wireName = 'DeliveryManRegisterBodyIdentityTypeEnum';

  @override
  Object serialize(Serializers serializers,
          DeliveryManRegisterBodyIdentityTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeliveryManRegisterBodyIdentityTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeliveryManRegisterBodyIdentityTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DeliveryManRegisterBodyDeliveryTypeEnumSerializer
    implements PrimitiveSerializer<DeliveryManRegisterBodyDeliveryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'commission': 'commission',
    'salary': 'salary',
    'freelance': 'freelance',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'commission': 'commission',
    'salary': 'salary',
    'freelance': 'freelance',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DeliveryManRegisterBodyDeliveryTypeEnum
  ];
  @override
  final String wireName = 'DeliveryManRegisterBodyDeliveryTypeEnum';

  @override
  Object serialize(Serializers serializers,
          DeliveryManRegisterBodyDeliveryTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeliveryManRegisterBodyDeliveryTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeliveryManRegisterBodyDeliveryTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DeliveryManRegisterBody extends DeliveryManRegisterBody {
  @override
  final String fName;
  @override
  final String lName;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final String? cloudflareId;
  @override
  final String image;
  @override
  final DeliveryManRegisterBodyIdentityImage identityImage;
  @override
  final int zoneId;
  @override
  final int? cityId;
  @override
  final DeliveryManRegisterBodyIdentityTypeEnum identityType;
  @override
  final String identityNumber;
  @override
  final DeliveryManRegisterBodyDeliveryTypeEnum? deliveryType;
  @override
  final bool? earning;
  @override
  final int? vehicleId;

  factory _$DeliveryManRegisterBody(
          [void Function(DeliveryManRegisterBodyBuilder)? updates]) =>
      (DeliveryManRegisterBodyBuilder()..update(updates))._build();

  _$DeliveryManRegisterBody._(
      {required this.fName,
      required this.lName,
      required this.phone,
      required this.email,
      required this.password,
      required this.confirmPassword,
      this.cloudflareId,
      required this.image,
      required this.identityImage,
      required this.zoneId,
      this.cityId,
      required this.identityType,
      required this.identityNumber,
      this.deliveryType,
      this.earning,
      this.vehicleId})
      : super._();
  @override
  DeliveryManRegisterBody rebuild(
          void Function(DeliveryManRegisterBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManRegisterBodyBuilder toBuilder() =>
      DeliveryManRegisterBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManRegisterBody &&
        fName == other.fName &&
        lName == other.lName &&
        phone == other.phone &&
        email == other.email &&
        password == other.password &&
        confirmPassword == other.confirmPassword &&
        cloudflareId == other.cloudflareId &&
        image == other.image &&
        identityImage == other.identityImage &&
        zoneId == other.zoneId &&
        cityId == other.cityId &&
        identityType == other.identityType &&
        identityNumber == other.identityNumber &&
        deliveryType == other.deliveryType &&
        earning == other.earning &&
        vehicleId == other.vehicleId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fName.hashCode);
    _$hash = $jc(_$hash, lName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jc(_$hash, cloudflareId.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, identityImage.hashCode);
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jc(_$hash, cityId.hashCode);
    _$hash = $jc(_$hash, identityType.hashCode);
    _$hash = $jc(_$hash, identityNumber.hashCode);
    _$hash = $jc(_$hash, deliveryType.hashCode);
    _$hash = $jc(_$hash, earning.hashCode);
    _$hash = $jc(_$hash, vehicleId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManRegisterBody')
          ..add('fName', fName)
          ..add('lName', lName)
          ..add('phone', phone)
          ..add('email', email)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword)
          ..add('cloudflareId', cloudflareId)
          ..add('image', image)
          ..add('identityImage', identityImage)
          ..add('zoneId', zoneId)
          ..add('cityId', cityId)
          ..add('identityType', identityType)
          ..add('identityNumber', identityNumber)
          ..add('deliveryType', deliveryType)
          ..add('earning', earning)
          ..add('vehicleId', vehicleId))
        .toString();
  }
}

class DeliveryManRegisterBodyBuilder
    implements
        Builder<DeliveryManRegisterBody, DeliveryManRegisterBodyBuilder> {
  _$DeliveryManRegisterBody? _$v;

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

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  String? _cloudflareId;
  String? get cloudflareId => _$this._cloudflareId;
  set cloudflareId(String? cloudflareId) => _$this._cloudflareId = cloudflareId;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DeliveryManRegisterBodyIdentityImageBuilder? _identityImage;
  DeliveryManRegisterBodyIdentityImageBuilder get identityImage =>
      _$this._identityImage ??= DeliveryManRegisterBodyIdentityImageBuilder();
  set identityImage(
          DeliveryManRegisterBodyIdentityImageBuilder? identityImage) =>
      _$this._identityImage = identityImage;

  int? _zoneId;
  int? get zoneId => _$this._zoneId;
  set zoneId(int? zoneId) => _$this._zoneId = zoneId;

  int? _cityId;
  int? get cityId => _$this._cityId;
  set cityId(int? cityId) => _$this._cityId = cityId;

  DeliveryManRegisterBodyIdentityTypeEnum? _identityType;
  DeliveryManRegisterBodyIdentityTypeEnum? get identityType =>
      _$this._identityType;
  set identityType(DeliveryManRegisterBodyIdentityTypeEnum? identityType) =>
      _$this._identityType = identityType;

  String? _identityNumber;
  String? get identityNumber => _$this._identityNumber;
  set identityNumber(String? identityNumber) =>
      _$this._identityNumber = identityNumber;

  DeliveryManRegisterBodyDeliveryTypeEnum? _deliveryType;
  DeliveryManRegisterBodyDeliveryTypeEnum? get deliveryType =>
      _$this._deliveryType;
  set deliveryType(DeliveryManRegisterBodyDeliveryTypeEnum? deliveryType) =>
      _$this._deliveryType = deliveryType;

  bool? _earning;
  bool? get earning => _$this._earning;
  set earning(bool? earning) => _$this._earning = earning;

  int? _vehicleId;
  int? get vehicleId => _$this._vehicleId;
  set vehicleId(int? vehicleId) => _$this._vehicleId = vehicleId;

  DeliveryManRegisterBodyBuilder() {
    DeliveryManRegisterBody._defaults(this);
  }

  DeliveryManRegisterBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fName = $v.fName;
      _lName = $v.lName;
      _phone = $v.phone;
      _email = $v.email;
      _password = $v.password;
      _confirmPassword = $v.confirmPassword;
      _cloudflareId = $v.cloudflareId;
      _image = $v.image;
      _identityImage = $v.identityImage.toBuilder();
      _zoneId = $v.zoneId;
      _cityId = $v.cityId;
      _identityType = $v.identityType;
      _identityNumber = $v.identityNumber;
      _deliveryType = $v.deliveryType;
      _earning = $v.earning;
      _vehicleId = $v.vehicleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManRegisterBody other) {
    _$v = other as _$DeliveryManRegisterBody;
  }

  @override
  void update(void Function(DeliveryManRegisterBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManRegisterBody build() => _build();

  _$DeliveryManRegisterBody _build() {
    _$DeliveryManRegisterBody _$result;
    try {
      _$result = _$v ??
          _$DeliveryManRegisterBody._(
            fName: BuiltValueNullFieldError.checkNotNull(
                fName, r'DeliveryManRegisterBody', 'fName'),
            lName: BuiltValueNullFieldError.checkNotNull(
                lName, r'DeliveryManRegisterBody', 'lName'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'DeliveryManRegisterBody', 'phone'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'DeliveryManRegisterBody', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'DeliveryManRegisterBody', 'password'),
            confirmPassword: BuiltValueNullFieldError.checkNotNull(
                confirmPassword, r'DeliveryManRegisterBody', 'confirmPassword'),
            cloudflareId: cloudflareId,
            image: BuiltValueNullFieldError.checkNotNull(
                image, r'DeliveryManRegisterBody', 'image'),
            identityImage: identityImage.build(),
            zoneId: BuiltValueNullFieldError.checkNotNull(
                zoneId, r'DeliveryManRegisterBody', 'zoneId'),
            cityId: cityId,
            identityType: BuiltValueNullFieldError.checkNotNull(
                identityType, r'DeliveryManRegisterBody', 'identityType'),
            identityNumber: BuiltValueNullFieldError.checkNotNull(
                identityNumber, r'DeliveryManRegisterBody', 'identityNumber'),
            deliveryType: deliveryType,
            earning: earning,
            vehicleId: vehicleId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'identityImage';
        identityImage.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryManRegisterBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

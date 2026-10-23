// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_register_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VendorRegisterBodyLanguageEnum _$vendorRegisterBodyLanguageEnum_en =
    const VendorRegisterBodyLanguageEnum._('en');
const VendorRegisterBodyLanguageEnum _$vendorRegisterBodyLanguageEnum_he =
    const VendorRegisterBodyLanguageEnum._('he');

VendorRegisterBodyLanguageEnum _$vendorRegisterBodyLanguageEnumValueOf(
    String name) {
  switch (name) {
    case 'en':
      return _$vendorRegisterBodyLanguageEnum_en;
    case 'he':
      return _$vendorRegisterBodyLanguageEnum_he;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VendorRegisterBodyLanguageEnum>
    _$vendorRegisterBodyLanguageEnumValues = BuiltSet<
        VendorRegisterBodyLanguageEnum>(const <VendorRegisterBodyLanguageEnum>[
  _$vendorRegisterBodyLanguageEnum_en,
  _$vendorRegisterBodyLanguageEnum_he,
]);

Serializer<VendorRegisterBodyLanguageEnum>
    _$vendorRegisterBodyLanguageEnumSerializer =
    _$VendorRegisterBodyLanguageEnumSerializer();

class _$VendorRegisterBodyLanguageEnumSerializer
    implements PrimitiveSerializer<VendorRegisterBodyLanguageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'en': 'en',
    'he': 'he',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'en': 'en',
    'he': 'he',
  };

  @override
  final Iterable<Type> types = const <Type>[VendorRegisterBodyLanguageEnum];
  @override
  final String wireName = 'VendorRegisterBodyLanguageEnum';

  @override
  Object serialize(
          Serializers serializers, VendorRegisterBodyLanguageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VendorRegisterBodyLanguageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VendorRegisterBodyLanguageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VendorRegisterBody extends VendorRegisterBody {
  @override
  final String fName;
  @override
  final String lName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String password;
  @override
  final String restaurantName;
  @override
  final String restaurantAddress;
  @override
  final VendorRegisterBodyLat? lat;
  @override
  final VendorRegisterBodyLng? lng;
  @override
  final int zoneId;
  @override
  final num tax;
  @override
  final VendorRegisterBodyLanguageEnum? language;
  @override
  final String? cloudflareId;
  @override
  final String? logo;
  @override
  final String? coverPhoto;
  @override
  final BuiltList<int>? cuisines;
  @override
  final String? minimumDeliveryTime;
  @override
  final String? maximumDeliveryTime;
  @override
  final String? deliveryTimeType;

  factory _$VendorRegisterBody(
          [void Function(VendorRegisterBodyBuilder)? updates]) =>
      (VendorRegisterBodyBuilder()..update(updates))._build();

  _$VendorRegisterBody._(
      {required this.fName,
      required this.lName,
      required this.email,
      required this.phone,
      required this.password,
      required this.restaurantName,
      required this.restaurantAddress,
      this.lat,
      this.lng,
      required this.zoneId,
      required this.tax,
      this.language,
      this.cloudflareId,
      this.logo,
      this.coverPhoto,
      this.cuisines,
      this.minimumDeliveryTime,
      this.maximumDeliveryTime,
      this.deliveryTimeType})
      : super._();
  @override
  VendorRegisterBody rebuild(
          void Function(VendorRegisterBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRegisterBodyBuilder toBuilder() =>
      VendorRegisterBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRegisterBody &&
        fName == other.fName &&
        lName == other.lName &&
        email == other.email &&
        phone == other.phone &&
        password == other.password &&
        restaurantName == other.restaurantName &&
        restaurantAddress == other.restaurantAddress &&
        lat == other.lat &&
        lng == other.lng &&
        zoneId == other.zoneId &&
        tax == other.tax &&
        language == other.language &&
        cloudflareId == other.cloudflareId &&
        logo == other.logo &&
        coverPhoto == other.coverPhoto &&
        cuisines == other.cuisines &&
        minimumDeliveryTime == other.minimumDeliveryTime &&
        maximumDeliveryTime == other.maximumDeliveryTime &&
        deliveryTimeType == other.deliveryTimeType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fName.hashCode);
    _$hash = $jc(_$hash, lName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, restaurantName.hashCode);
    _$hash = $jc(_$hash, restaurantAddress.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jc(_$hash, tax.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, cloudflareId.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, coverPhoto.hashCode);
    _$hash = $jc(_$hash, cuisines.hashCode);
    _$hash = $jc(_$hash, minimumDeliveryTime.hashCode);
    _$hash = $jc(_$hash, maximumDeliveryTime.hashCode);
    _$hash = $jc(_$hash, deliveryTimeType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRegisterBody')
          ..add('fName', fName)
          ..add('lName', lName)
          ..add('email', email)
          ..add('phone', phone)
          ..add('password', password)
          ..add('restaurantName', restaurantName)
          ..add('restaurantAddress', restaurantAddress)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('zoneId', zoneId)
          ..add('tax', tax)
          ..add('language', language)
          ..add('cloudflareId', cloudflareId)
          ..add('logo', logo)
          ..add('coverPhoto', coverPhoto)
          ..add('cuisines', cuisines)
          ..add('minimumDeliveryTime', minimumDeliveryTime)
          ..add('maximumDeliveryTime', maximumDeliveryTime)
          ..add('deliveryTimeType', deliveryTimeType))
        .toString();
  }
}

class VendorRegisterBodyBuilder
    implements Builder<VendorRegisterBody, VendorRegisterBodyBuilder> {
  _$VendorRegisterBody? _$v;

  String? _fName;
  String? get fName => _$this._fName;
  set fName(String? fName) => _$this._fName = fName;

  String? _lName;
  String? get lName => _$this._lName;
  set lName(String? lName) => _$this._lName = lName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _restaurantName;
  String? get restaurantName => _$this._restaurantName;
  set restaurantName(String? restaurantName) =>
      _$this._restaurantName = restaurantName;

  String? _restaurantAddress;
  String? get restaurantAddress => _$this._restaurantAddress;
  set restaurantAddress(String? restaurantAddress) =>
      _$this._restaurantAddress = restaurantAddress;

  VendorRegisterBodyLatBuilder? _lat;
  VendorRegisterBodyLatBuilder get lat =>
      _$this._lat ??= VendorRegisterBodyLatBuilder();
  set lat(VendorRegisterBodyLatBuilder? lat) => _$this._lat = lat;

  VendorRegisterBodyLngBuilder? _lng;
  VendorRegisterBodyLngBuilder get lng =>
      _$this._lng ??= VendorRegisterBodyLngBuilder();
  set lng(VendorRegisterBodyLngBuilder? lng) => _$this._lng = lng;

  int? _zoneId;
  int? get zoneId => _$this._zoneId;
  set zoneId(int? zoneId) => _$this._zoneId = zoneId;

  num? _tax;
  num? get tax => _$this._tax;
  set tax(num? tax) => _$this._tax = tax;

  VendorRegisterBodyLanguageEnum? _language;
  VendorRegisterBodyLanguageEnum? get language => _$this._language;
  set language(VendorRegisterBodyLanguageEnum? language) =>
      _$this._language = language;

  String? _cloudflareId;
  String? get cloudflareId => _$this._cloudflareId;
  set cloudflareId(String? cloudflareId) => _$this._cloudflareId = cloudflareId;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _coverPhoto;
  String? get coverPhoto => _$this._coverPhoto;
  set coverPhoto(String? coverPhoto) => _$this._coverPhoto = coverPhoto;

  ListBuilder<int>? _cuisines;
  ListBuilder<int> get cuisines => _$this._cuisines ??= ListBuilder<int>();
  set cuisines(ListBuilder<int>? cuisines) => _$this._cuisines = cuisines;

  String? _minimumDeliveryTime;
  String? get minimumDeliveryTime => _$this._minimumDeliveryTime;
  set minimumDeliveryTime(String? minimumDeliveryTime) =>
      _$this._minimumDeliveryTime = minimumDeliveryTime;

  String? _maximumDeliveryTime;
  String? get maximumDeliveryTime => _$this._maximumDeliveryTime;
  set maximumDeliveryTime(String? maximumDeliveryTime) =>
      _$this._maximumDeliveryTime = maximumDeliveryTime;

  String? _deliveryTimeType;
  String? get deliveryTimeType => _$this._deliveryTimeType;
  set deliveryTimeType(String? deliveryTimeType) =>
      _$this._deliveryTimeType = deliveryTimeType;

  VendorRegisterBodyBuilder() {
    VendorRegisterBody._defaults(this);
  }

  VendorRegisterBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fName = $v.fName;
      _lName = $v.lName;
      _email = $v.email;
      _phone = $v.phone;
      _password = $v.password;
      _restaurantName = $v.restaurantName;
      _restaurantAddress = $v.restaurantAddress;
      _lat = $v.lat?.toBuilder();
      _lng = $v.lng?.toBuilder();
      _zoneId = $v.zoneId;
      _tax = $v.tax;
      _language = $v.language;
      _cloudflareId = $v.cloudflareId;
      _logo = $v.logo;
      _coverPhoto = $v.coverPhoto;
      _cuisines = $v.cuisines?.toBuilder();
      _minimumDeliveryTime = $v.minimumDeliveryTime;
      _maximumDeliveryTime = $v.maximumDeliveryTime;
      _deliveryTimeType = $v.deliveryTimeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRegisterBody other) {
    _$v = other as _$VendorRegisterBody;
  }

  @override
  void update(void Function(VendorRegisterBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRegisterBody build() => _build();

  _$VendorRegisterBody _build() {
    _$VendorRegisterBody _$result;
    try {
      _$result = _$v ??
          _$VendorRegisterBody._(
            fName: BuiltValueNullFieldError.checkNotNull(
                fName, r'VendorRegisterBody', 'fName'),
            lName: BuiltValueNullFieldError.checkNotNull(
                lName, r'VendorRegisterBody', 'lName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'VendorRegisterBody', 'email'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'VendorRegisterBody', 'phone'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'VendorRegisterBody', 'password'),
            restaurantName: BuiltValueNullFieldError.checkNotNull(
                restaurantName, r'VendorRegisterBody', 'restaurantName'),
            restaurantAddress: BuiltValueNullFieldError.checkNotNull(
                restaurantAddress, r'VendorRegisterBody', 'restaurantAddress'),
            lat: _lat?.build(),
            lng: _lng?.build(),
            zoneId: BuiltValueNullFieldError.checkNotNull(
                zoneId, r'VendorRegisterBody', 'zoneId'),
            tax: BuiltValueNullFieldError.checkNotNull(
                tax, r'VendorRegisterBody', 'tax'),
            language: language,
            cloudflareId: cloudflareId,
            logo: logo,
            coverPhoto: coverPhoto,
            cuisines: _cuisines?.build(),
            minimumDeliveryTime: minimumDeliveryTime,
            maximumDeliveryTime: maximumDeliveryTime,
            deliveryTimeType: deliveryTimeType,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lat';
        _lat?.build();
        _$failedField = 'lng';
        _lng?.build();

        _$failedField = 'cuisines';
        _cuisines?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VendorRegisterBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

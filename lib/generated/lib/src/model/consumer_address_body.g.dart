// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_address_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerAddressBody extends ConsumerAddressBody {
  @override
  final String contactPersonName;
  @override
  final String addressType;
  @override
  final String contactPersonNumber;
  @override
  final String address;
  @override
  final PlaceOrderRequestLatitude latitude;
  @override
  final PlaceOrderRequestLatitude longitude;
  @override
  final String? floor;
  @override
  final String? road;
  @override
  final String? house;
  @override
  final num? zoneId;

  factory _$ConsumerAddressBody(
          [void Function(ConsumerAddressBodyBuilder)? updates]) =>
      (ConsumerAddressBodyBuilder()..update(updates))._build();

  _$ConsumerAddressBody._(
      {required this.contactPersonName,
      required this.addressType,
      required this.contactPersonNumber,
      required this.address,
      required this.latitude,
      required this.longitude,
      this.floor,
      this.road,
      this.house,
      this.zoneId})
      : super._();
  @override
  ConsumerAddressBody rebuild(
          void Function(ConsumerAddressBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerAddressBodyBuilder toBuilder() =>
      ConsumerAddressBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerAddressBody &&
        contactPersonName == other.contactPersonName &&
        addressType == other.addressType &&
        contactPersonNumber == other.contactPersonNumber &&
        address == other.address &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        floor == other.floor &&
        road == other.road &&
        house == other.house &&
        zoneId == other.zoneId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contactPersonName.hashCode);
    _$hash = $jc(_$hash, addressType.hashCode);
    _$hash = $jc(_$hash, contactPersonNumber.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, floor.hashCode);
    _$hash = $jc(_$hash, road.hashCode);
    _$hash = $jc(_$hash, house.hashCode);
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerAddressBody')
          ..add('contactPersonName', contactPersonName)
          ..add('addressType', addressType)
          ..add('contactPersonNumber', contactPersonNumber)
          ..add('address', address)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('floor', floor)
          ..add('road', road)
          ..add('house', house)
          ..add('zoneId', zoneId))
        .toString();
  }
}

class ConsumerAddressBodyBuilder
    implements Builder<ConsumerAddressBody, ConsumerAddressBodyBuilder> {
  _$ConsumerAddressBody? _$v;

  String? _contactPersonName;
  String? get contactPersonName => _$this._contactPersonName;
  set contactPersonName(String? contactPersonName) =>
      _$this._contactPersonName = contactPersonName;

  String? _addressType;
  String? get addressType => _$this._addressType;
  set addressType(String? addressType) => _$this._addressType = addressType;

  String? _contactPersonNumber;
  String? get contactPersonNumber => _$this._contactPersonNumber;
  set contactPersonNumber(String? contactPersonNumber) =>
      _$this._contactPersonNumber = contactPersonNumber;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  PlaceOrderRequestLatitudeBuilder? _latitude;
  PlaceOrderRequestLatitudeBuilder get latitude =>
      _$this._latitude ??= PlaceOrderRequestLatitudeBuilder();
  set latitude(PlaceOrderRequestLatitudeBuilder? latitude) =>
      _$this._latitude = latitude;

  PlaceOrderRequestLatitudeBuilder? _longitude;
  PlaceOrderRequestLatitudeBuilder get longitude =>
      _$this._longitude ??= PlaceOrderRequestLatitudeBuilder();
  set longitude(PlaceOrderRequestLatitudeBuilder? longitude) =>
      _$this._longitude = longitude;

  String? _floor;
  String? get floor => _$this._floor;
  set floor(String? floor) => _$this._floor = floor;

  String? _road;
  String? get road => _$this._road;
  set road(String? road) => _$this._road = road;

  String? _house;
  String? get house => _$this._house;
  set house(String? house) => _$this._house = house;

  num? _zoneId;
  num? get zoneId => _$this._zoneId;
  set zoneId(num? zoneId) => _$this._zoneId = zoneId;

  ConsumerAddressBodyBuilder() {
    ConsumerAddressBody._defaults(this);
  }

  ConsumerAddressBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contactPersonName = $v.contactPersonName;
      _addressType = $v.addressType;
      _contactPersonNumber = $v.contactPersonNumber;
      _address = $v.address;
      _latitude = $v.latitude.toBuilder();
      _longitude = $v.longitude.toBuilder();
      _floor = $v.floor;
      _road = $v.road;
      _house = $v.house;
      _zoneId = $v.zoneId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerAddressBody other) {
    _$v = other as _$ConsumerAddressBody;
  }

  @override
  void update(void Function(ConsumerAddressBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerAddressBody build() => _build();

  _$ConsumerAddressBody _build() {
    _$ConsumerAddressBody _$result;
    try {
      _$result = _$v ??
          _$ConsumerAddressBody._(
            contactPersonName: BuiltValueNullFieldError.checkNotNull(
                contactPersonName, r'ConsumerAddressBody', 'contactPersonName'),
            addressType: BuiltValueNullFieldError.checkNotNull(
                addressType, r'ConsumerAddressBody', 'addressType'),
            contactPersonNumber: BuiltValueNullFieldError.checkNotNull(
                contactPersonNumber,
                r'ConsumerAddressBody',
                'contactPersonNumber'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'ConsumerAddressBody', 'address'),
            latitude: latitude.build(),
            longitude: longitude.build(),
            floor: floor,
            road: road,
            house: house,
            zoneId: zoneId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'latitude';
        latitude.build();
        _$failedField = 'longitude';
        longitude.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerAddressBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

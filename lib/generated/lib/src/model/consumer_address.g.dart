// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerAddress extends ConsumerAddress {
  @override
  final String? id;
  @override
  final String? addressType;
  @override
  final String? contactPersonName;
  @override
  final String? contactPersonNumber;
  @override
  final String? address;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? floor;
  @override
  final String? road;
  @override
  final String? house;
  @override
  final String? zoneId;
  @override
  final String? userId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$ConsumerAddress([void Function(ConsumerAddressBuilder)? updates]) =>
      (ConsumerAddressBuilder()..update(updates))._build();

  _$ConsumerAddress._(
      {this.id,
      this.addressType,
      this.contactPersonName,
      this.contactPersonNumber,
      this.address,
      this.latitude,
      this.longitude,
      this.floor,
      this.road,
      this.house,
      this.zoneId,
      this.userId,
      this.createdAt,
      this.updatedAt})
      : super._();
  @override
  ConsumerAddress rebuild(void Function(ConsumerAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerAddressBuilder toBuilder() => ConsumerAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerAddress &&
        id == other.id &&
        addressType == other.addressType &&
        contactPersonName == other.contactPersonName &&
        contactPersonNumber == other.contactPersonNumber &&
        address == other.address &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        floor == other.floor &&
        road == other.road &&
        house == other.house &&
        zoneId == other.zoneId &&
        userId == other.userId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, addressType.hashCode);
    _$hash = $jc(_$hash, contactPersonName.hashCode);
    _$hash = $jc(_$hash, contactPersonNumber.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, floor.hashCode);
    _$hash = $jc(_$hash, road.hashCode);
    _$hash = $jc(_$hash, house.hashCode);
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerAddress')
          ..add('id', id)
          ..add('addressType', addressType)
          ..add('contactPersonName', contactPersonName)
          ..add('contactPersonNumber', contactPersonNumber)
          ..add('address', address)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('floor', floor)
          ..add('road', road)
          ..add('house', house)
          ..add('zoneId', zoneId)
          ..add('userId', userId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ConsumerAddressBuilder
    implements Builder<ConsumerAddress, ConsumerAddressBuilder> {
  _$ConsumerAddress? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _addressType;
  String? get addressType => _$this._addressType;
  set addressType(String? addressType) => _$this._addressType = addressType;

  String? _contactPersonName;
  String? get contactPersonName => _$this._contactPersonName;
  set contactPersonName(String? contactPersonName) =>
      _$this._contactPersonName = contactPersonName;

  String? _contactPersonNumber;
  String? get contactPersonNumber => _$this._contactPersonNumber;
  set contactPersonNumber(String? contactPersonNumber) =>
      _$this._contactPersonNumber = contactPersonNumber;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _latitude;
  String? get latitude => _$this._latitude;
  set latitude(String? latitude) => _$this._latitude = latitude;

  String? _longitude;
  String? get longitude => _$this._longitude;
  set longitude(String? longitude) => _$this._longitude = longitude;

  String? _floor;
  String? get floor => _$this._floor;
  set floor(String? floor) => _$this._floor = floor;

  String? _road;
  String? get road => _$this._road;
  set road(String? road) => _$this._road = road;

  String? _house;
  String? get house => _$this._house;
  set house(String? house) => _$this._house = house;

  String? _zoneId;
  String? get zoneId => _$this._zoneId;
  set zoneId(String? zoneId) => _$this._zoneId = zoneId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ConsumerAddressBuilder() {
    ConsumerAddress._defaults(this);
  }

  ConsumerAddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _addressType = $v.addressType;
      _contactPersonName = $v.contactPersonName;
      _contactPersonNumber = $v.contactPersonNumber;
      _address = $v.address;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _floor = $v.floor;
      _road = $v.road;
      _house = $v.house;
      _zoneId = $v.zoneId;
      _userId = $v.userId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerAddress other) {
    _$v = other as _$ConsumerAddress;
  }

  @override
  void update(void Function(ConsumerAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerAddress build() => _build();

  _$ConsumerAddress _build() {
    final _$result = _$v ??
        _$ConsumerAddress._(
          id: id,
          addressType: addressType,
          contactPersonName: contactPersonName,
          contactPersonNumber: contactPersonNumber,
          address: address,
          latitude: latitude,
          longitude: longitude,
          floor: floor,
          road: road,
          house: house,
          zoneId: zoneId,
          userId: userId,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

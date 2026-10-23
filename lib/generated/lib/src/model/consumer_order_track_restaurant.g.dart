// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_order_track_restaurant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerOrderTrackRestaurant extends ConsumerOrderTrackRestaurant {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? logo;
  @override
  final String? logoUrl;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final num? latitude;
  @override
  final num? longitude;

  factory _$ConsumerOrderTrackRestaurant(
          [void Function(ConsumerOrderTrackRestaurantBuilder)? updates]) =>
      (ConsumerOrderTrackRestaurantBuilder()..update(updates))._build();

  _$ConsumerOrderTrackRestaurant._(
      {this.id,
      this.name,
      this.logo,
      this.logoUrl,
      this.phone,
      this.address,
      this.latitude,
      this.longitude})
      : super._();
  @override
  ConsumerOrderTrackRestaurant rebuild(
          void Function(ConsumerOrderTrackRestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerOrderTrackRestaurantBuilder toBuilder() =>
      ConsumerOrderTrackRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerOrderTrackRestaurant &&
        id == other.id &&
        name == other.name &&
        logo == other.logo &&
        logoUrl == other.logoUrl &&
        phone == other.phone &&
        address == other.address &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, logoUrl.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerOrderTrackRestaurant')
          ..add('id', id)
          ..add('name', name)
          ..add('logo', logo)
          ..add('logoUrl', logoUrl)
          ..add('phone', phone)
          ..add('address', address)
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class ConsumerOrderTrackRestaurantBuilder
    implements
        Builder<ConsumerOrderTrackRestaurant,
            ConsumerOrderTrackRestaurantBuilder> {
  _$ConsumerOrderTrackRestaurant? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _logoUrl;
  String? get logoUrl => _$this._logoUrl;
  set logoUrl(String? logoUrl) => _$this._logoUrl = logoUrl;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  ConsumerOrderTrackRestaurantBuilder() {
    ConsumerOrderTrackRestaurant._defaults(this);
  }

  ConsumerOrderTrackRestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _logo = $v.logo;
      _logoUrl = $v.logoUrl;
      _phone = $v.phone;
      _address = $v.address;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerOrderTrackRestaurant other) {
    _$v = other as _$ConsumerOrderTrackRestaurant;
  }

  @override
  void update(void Function(ConsumerOrderTrackRestaurantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerOrderTrackRestaurant build() => _build();

  _$ConsumerOrderTrackRestaurant _build() {
    final _$result = _$v ??
        _$ConsumerOrderTrackRestaurant._(
          id: id,
          name: name,
          logo: logo,
          logoUrl: logoUrl,
          phone: phone,
          address: address,
          latitude: latitude,
          longitude: longitude,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

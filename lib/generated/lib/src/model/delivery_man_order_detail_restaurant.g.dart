// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_detail_restaurant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderDetailRestaurant
    extends DeliveryManOrderDetailRestaurant {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final String? addressSnippet;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? imageUrl;

  factory _$DeliveryManOrderDetailRestaurant(
          [void Function(DeliveryManOrderDetailRestaurantBuilder)? updates]) =>
      (DeliveryManOrderDetailRestaurantBuilder()..update(updates))._build();

  _$DeliveryManOrderDetailRestaurant._(
      {this.id,
      this.name,
      this.phone,
      this.address,
      this.addressSnippet,
      this.latitude,
      this.longitude,
      this.imageUrl})
      : super._();
  @override
  DeliveryManOrderDetailRestaurant rebuild(
          void Function(DeliveryManOrderDetailRestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderDetailRestaurantBuilder toBuilder() =>
      DeliveryManOrderDetailRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderDetailRestaurant &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        address == other.address &&
        addressSnippet == other.addressSnippet &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, addressSnippet.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManOrderDetailRestaurant')
          ..add('id', id)
          ..add('name', name)
          ..add('phone', phone)
          ..add('address', address)
          ..add('addressSnippet', addressSnippet)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class DeliveryManOrderDetailRestaurantBuilder
    implements
        Builder<DeliveryManOrderDetailRestaurant,
            DeliveryManOrderDetailRestaurantBuilder> {
  _$DeliveryManOrderDetailRestaurant? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _addressSnippet;
  String? get addressSnippet => _$this._addressSnippet;
  set addressSnippet(String? addressSnippet) =>
      _$this._addressSnippet = addressSnippet;

  String? _latitude;
  String? get latitude => _$this._latitude;
  set latitude(String? latitude) => _$this._latitude = latitude;

  String? _longitude;
  String? get longitude => _$this._longitude;
  set longitude(String? longitude) => _$this._longitude = longitude;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  DeliveryManOrderDetailRestaurantBuilder() {
    DeliveryManOrderDetailRestaurant._defaults(this);
  }

  DeliveryManOrderDetailRestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _phone = $v.phone;
      _address = $v.address;
      _addressSnippet = $v.addressSnippet;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManOrderDetailRestaurant other) {
    _$v = other as _$DeliveryManOrderDetailRestaurant;
  }

  @override
  void update(void Function(DeliveryManOrderDetailRestaurantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderDetailRestaurant build() => _build();

  _$DeliveryManOrderDetailRestaurant _build() {
    final _$result = _$v ??
        _$DeliveryManOrderDetailRestaurant._(
          id: id,
          name: name,
          phone: phone,
          address: address,
          addressSnippet: addressSnippet,
          latitude: latitude,
          longitude: longitude,
          imageUrl: imageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

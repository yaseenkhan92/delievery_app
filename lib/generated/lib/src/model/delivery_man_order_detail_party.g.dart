// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_detail_party.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderDetailParty extends DeliveryManOrderDetailParty {
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final String? addressSnippet;
  @override
  final JsonObject? latitude;
  @override
  final JsonObject? longitude;
  @override
  final String? imageUrl;

  factory _$DeliveryManOrderDetailParty(
          [void Function(DeliveryManOrderDetailPartyBuilder)? updates]) =>
      (DeliveryManOrderDetailPartyBuilder()..update(updates))._build();

  _$DeliveryManOrderDetailParty._(
      {this.name,
      this.phone,
      this.address,
      this.addressSnippet,
      this.latitude,
      this.longitude,
      this.imageUrl})
      : super._();
  @override
  DeliveryManOrderDetailParty rebuild(
          void Function(DeliveryManOrderDetailPartyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderDetailPartyBuilder toBuilder() =>
      DeliveryManOrderDetailPartyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderDetailParty &&
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
    return (newBuiltValueToStringHelper(r'DeliveryManOrderDetailParty')
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

class DeliveryManOrderDetailPartyBuilder
    implements
        Builder<DeliveryManOrderDetailParty,
            DeliveryManOrderDetailPartyBuilder> {
  _$DeliveryManOrderDetailParty? _$v;

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

  JsonObject? _latitude;
  JsonObject? get latitude => _$this._latitude;
  set latitude(JsonObject? latitude) => _$this._latitude = latitude;

  JsonObject? _longitude;
  JsonObject? get longitude => _$this._longitude;
  set longitude(JsonObject? longitude) => _$this._longitude = longitude;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  DeliveryManOrderDetailPartyBuilder() {
    DeliveryManOrderDetailParty._defaults(this);
  }

  DeliveryManOrderDetailPartyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(DeliveryManOrderDetailParty other) {
    _$v = other as _$DeliveryManOrderDetailParty;
  }

  @override
  void update(void Function(DeliveryManOrderDetailPartyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderDetailParty build() => _build();

  _$DeliveryManOrderDetailParty _build() {
    final _$result = _$v ??
        _$DeliveryManOrderDetailParty._(
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_whoami_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorWhoamiData extends VendorWhoamiData {
  @override
  final VendorProfileData? vendor;
  @override
  final VendorWhoamiRestaurant? restaurant;
  @override
  final BuiltList<VendorWhoamiRestaurant>? restaurants;

  factory _$VendorWhoamiData(
          [void Function(VendorWhoamiDataBuilder)? updates]) =>
      (VendorWhoamiDataBuilder()..update(updates))._build();

  _$VendorWhoamiData._({this.vendor, this.restaurant, this.restaurants})
      : super._();
  @override
  VendorWhoamiData rebuild(void Function(VendorWhoamiDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorWhoamiDataBuilder toBuilder() =>
      VendorWhoamiDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorWhoamiData &&
        vendor == other.vendor &&
        restaurant == other.restaurant &&
        restaurants == other.restaurants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vendor.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jc(_$hash, restaurants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorWhoamiData')
          ..add('vendor', vendor)
          ..add('restaurant', restaurant)
          ..add('restaurants', restaurants))
        .toString();
  }
}

class VendorWhoamiDataBuilder
    implements Builder<VendorWhoamiData, VendorWhoamiDataBuilder> {
  _$VendorWhoamiData? _$v;

  VendorProfileDataBuilder? _vendor;
  VendorProfileDataBuilder get vendor =>
      _$this._vendor ??= VendorProfileDataBuilder();
  set vendor(VendorProfileDataBuilder? vendor) => _$this._vendor = vendor;

  VendorWhoamiRestaurantBuilder? _restaurant;
  VendorWhoamiRestaurantBuilder get restaurant =>
      _$this._restaurant ??= VendorWhoamiRestaurantBuilder();
  set restaurant(VendorWhoamiRestaurantBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  ListBuilder<VendorWhoamiRestaurant>? _restaurants;
  ListBuilder<VendorWhoamiRestaurant> get restaurants =>
      _$this._restaurants ??= ListBuilder<VendorWhoamiRestaurant>();
  set restaurants(ListBuilder<VendorWhoamiRestaurant>? restaurants) =>
      _$this._restaurants = restaurants;

  VendorWhoamiDataBuilder() {
    VendorWhoamiData._defaults(this);
  }

  VendorWhoamiDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vendor = $v.vendor?.toBuilder();
      _restaurant = $v.restaurant?.toBuilder();
      _restaurants = $v.restaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorWhoamiData other) {
    _$v = other as _$VendorWhoamiData;
  }

  @override
  void update(void Function(VendorWhoamiDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorWhoamiData build() => _build();

  _$VendorWhoamiData _build() {
    _$VendorWhoamiData _$result;
    try {
      _$result = _$v ??
          _$VendorWhoamiData._(
            vendor: _vendor?.build(),
            restaurant: _restaurant?.build(),
            restaurants: _restaurants?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vendor';
        _vendor?.build();
        _$failedField = 'restaurant';
        _restaurant?.build();
        _$failedField = 'restaurants';
        _restaurants?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VendorWhoamiData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

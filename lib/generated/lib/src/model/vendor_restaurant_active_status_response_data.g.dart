// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_active_status_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantActiveStatusResponseData
    extends VendorRestaurantActiveStatusResponseData {
  @override
  final bool? active;

  factory _$VendorRestaurantActiveStatusResponseData(
          [void Function(VendorRestaurantActiveStatusResponseDataBuilder)?
              updates]) =>
      (VendorRestaurantActiveStatusResponseDataBuilder()..update(updates))
          ._build();

  _$VendorRestaurantActiveStatusResponseData._({this.active}) : super._();
  @override
  VendorRestaurantActiveStatusResponseData rebuild(
          void Function(VendorRestaurantActiveStatusResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantActiveStatusResponseDataBuilder toBuilder() =>
      VendorRestaurantActiveStatusResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantActiveStatusResponseData &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'VendorRestaurantActiveStatusResponseData')
          ..add('active', active))
        .toString();
  }
}

class VendorRestaurantActiveStatusResponseDataBuilder
    implements
        Builder<VendorRestaurantActiveStatusResponseData,
            VendorRestaurantActiveStatusResponseDataBuilder> {
  _$VendorRestaurantActiveStatusResponseData? _$v;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  VendorRestaurantActiveStatusResponseDataBuilder() {
    VendorRestaurantActiveStatusResponseData._defaults(this);
  }

  VendorRestaurantActiveStatusResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantActiveStatusResponseData other) {
    _$v = other as _$VendorRestaurantActiveStatusResponseData;
  }

  @override
  void update(
      void Function(VendorRestaurantActiveStatusResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantActiveStatusResponseData build() => _build();

  _$VendorRestaurantActiveStatusResponseData _build() {
    final _$result = _$v ??
        _$VendorRestaurantActiveStatusResponseData._(
          active: active,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

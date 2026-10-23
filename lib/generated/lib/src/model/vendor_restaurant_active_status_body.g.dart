// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_active_status_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantActiveStatusBody
    extends VendorRestaurantActiveStatusBody {
  @override
  final bool closed;

  factory _$VendorRestaurantActiveStatusBody(
          [void Function(VendorRestaurantActiveStatusBodyBuilder)? updates]) =>
      (VendorRestaurantActiveStatusBodyBuilder()..update(updates))._build();

  _$VendorRestaurantActiveStatusBody._({required this.closed}) : super._();
  @override
  VendorRestaurantActiveStatusBody rebuild(
          void Function(VendorRestaurantActiveStatusBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantActiveStatusBodyBuilder toBuilder() =>
      VendorRestaurantActiveStatusBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantActiveStatusBody && closed == other.closed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, closed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRestaurantActiveStatusBody')
          ..add('closed', closed))
        .toString();
  }
}

class VendorRestaurantActiveStatusBodyBuilder
    implements
        Builder<VendorRestaurantActiveStatusBody,
            VendorRestaurantActiveStatusBodyBuilder> {
  _$VendorRestaurantActiveStatusBody? _$v;

  bool? _closed;
  bool? get closed => _$this._closed;
  set closed(bool? closed) => _$this._closed = closed;

  VendorRestaurantActiveStatusBodyBuilder() {
    VendorRestaurantActiveStatusBody._defaults(this);
  }

  VendorRestaurantActiveStatusBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _closed = $v.closed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantActiveStatusBody other) {
    _$v = other as _$VendorRestaurantActiveStatusBody;
  }

  @override
  void update(void Function(VendorRestaurantActiveStatusBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantActiveStatusBody build() => _build();

  _$VendorRestaurantActiveStatusBody _build() {
    final _$result = _$v ??
        _$VendorRestaurantActiveStatusBody._(
          closed: BuiltValueNullFieldError.checkNotNull(
              closed, r'VendorRestaurantActiveStatusBody', 'closed'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

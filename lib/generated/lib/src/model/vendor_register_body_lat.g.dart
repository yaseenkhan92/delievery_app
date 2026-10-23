// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_register_body_lat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRegisterBodyLat extends VendorRegisterBodyLat {
  @override
  final OneOf oneOf;

  factory _$VendorRegisterBodyLat(
          [void Function(VendorRegisterBodyLatBuilder)? updates]) =>
      (VendorRegisterBodyLatBuilder()..update(updates))._build();

  _$VendorRegisterBodyLat._({required this.oneOf}) : super._();
  @override
  VendorRegisterBodyLat rebuild(
          void Function(VendorRegisterBodyLatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRegisterBodyLatBuilder toBuilder() =>
      VendorRegisterBodyLatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRegisterBodyLat && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRegisterBodyLat')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class VendorRegisterBodyLatBuilder
    implements Builder<VendorRegisterBodyLat, VendorRegisterBodyLatBuilder> {
  _$VendorRegisterBodyLat? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  VendorRegisterBodyLatBuilder() {
    VendorRegisterBodyLat._defaults(this);
  }

  VendorRegisterBodyLatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRegisterBodyLat other) {
    _$v = other as _$VendorRegisterBodyLat;
  }

  @override
  void update(void Function(VendorRegisterBodyLatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRegisterBodyLat build() => _build();

  _$VendorRegisterBodyLat _build() {
    final _$result = _$v ??
        _$VendorRegisterBodyLat._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'VendorRegisterBodyLat', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

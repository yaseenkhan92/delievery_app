// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_register_body_lng.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRegisterBodyLng extends VendorRegisterBodyLng {
  @override
  final OneOf oneOf;

  factory _$VendorRegisterBodyLng(
          [void Function(VendorRegisterBodyLngBuilder)? updates]) =>
      (VendorRegisterBodyLngBuilder()..update(updates))._build();

  _$VendorRegisterBodyLng._({required this.oneOf}) : super._();
  @override
  VendorRegisterBodyLng rebuild(
          void Function(VendorRegisterBodyLngBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRegisterBodyLngBuilder toBuilder() =>
      VendorRegisterBodyLngBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRegisterBodyLng && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'VendorRegisterBodyLng')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class VendorRegisterBodyLngBuilder
    implements Builder<VendorRegisterBodyLng, VendorRegisterBodyLngBuilder> {
  _$VendorRegisterBodyLng? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  VendorRegisterBodyLngBuilder() {
    VendorRegisterBodyLng._defaults(this);
  }

  VendorRegisterBodyLngBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRegisterBodyLng other) {
    _$v = other as _$VendorRegisterBodyLng;
  }

  @override
  void update(void Function(VendorRegisterBodyLngBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRegisterBodyLng build() => _build();

  _$VendorRegisterBodyLng _build() {
    final _$result = _$v ??
        _$VendorRegisterBodyLng._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'VendorRegisterBodyLng', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

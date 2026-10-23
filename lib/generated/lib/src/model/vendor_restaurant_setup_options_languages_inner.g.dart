// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_setup_options_languages_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantSetupOptionsLanguagesInner
    extends VendorRestaurantSetupOptionsLanguagesInner {
  @override
  final String? code;
  @override
  final String? label;

  factory _$VendorRestaurantSetupOptionsLanguagesInner(
          [void Function(VendorRestaurantSetupOptionsLanguagesInnerBuilder)?
              updates]) =>
      (VendorRestaurantSetupOptionsLanguagesInnerBuilder()..update(updates))
          ._build();

  _$VendorRestaurantSetupOptionsLanguagesInner._({this.code, this.label})
      : super._();
  @override
  VendorRestaurantSetupOptionsLanguagesInner rebuild(
          void Function(VendorRestaurantSetupOptionsLanguagesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantSetupOptionsLanguagesInnerBuilder toBuilder() =>
      VendorRestaurantSetupOptionsLanguagesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantSetupOptionsLanguagesInner &&
        code == other.code &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'VendorRestaurantSetupOptionsLanguagesInner')
          ..add('code', code)
          ..add('label', label))
        .toString();
  }
}

class VendorRestaurantSetupOptionsLanguagesInnerBuilder
    implements
        Builder<VendorRestaurantSetupOptionsLanguagesInner,
            VendorRestaurantSetupOptionsLanguagesInnerBuilder> {
  _$VendorRestaurantSetupOptionsLanguagesInner? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  VendorRestaurantSetupOptionsLanguagesInnerBuilder() {
    VendorRestaurantSetupOptionsLanguagesInner._defaults(this);
  }

  VendorRestaurantSetupOptionsLanguagesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantSetupOptionsLanguagesInner other) {
    _$v = other as _$VendorRestaurantSetupOptionsLanguagesInner;
  }

  @override
  void update(
      void Function(VendorRestaurantSetupOptionsLanguagesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantSetupOptionsLanguagesInner build() => _build();

  _$VendorRestaurantSetupOptionsLanguagesInner _build() {
    final _$result = _$v ??
        _$VendorRestaurantSetupOptionsLanguagesInner._(
          code: code,
          label: label,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_setup_payload_translations_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantSetupPayloadTranslationsValue
    extends VendorRestaurantSetupPayloadTranslationsValue {
  @override
  final String? metaTitle;
  @override
  final String? metaDescription;

  factory _$VendorRestaurantSetupPayloadTranslationsValue(
          [void Function(VendorRestaurantSetupPayloadTranslationsValueBuilder)?
              updates]) =>
      (VendorRestaurantSetupPayloadTranslationsValueBuilder()..update(updates))
          ._build();

  _$VendorRestaurantSetupPayloadTranslationsValue._(
      {this.metaTitle, this.metaDescription})
      : super._();
  @override
  VendorRestaurantSetupPayloadTranslationsValue rebuild(
          void Function(VendorRestaurantSetupPayloadTranslationsValueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantSetupPayloadTranslationsValueBuilder toBuilder() =>
      VendorRestaurantSetupPayloadTranslationsValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantSetupPayloadTranslationsValue &&
        metaTitle == other.metaTitle &&
        metaDescription == other.metaDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, metaTitle.hashCode);
    _$hash = $jc(_$hash, metaDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'VendorRestaurantSetupPayloadTranslationsValue')
          ..add('metaTitle', metaTitle)
          ..add('metaDescription', metaDescription))
        .toString();
  }
}

class VendorRestaurantSetupPayloadTranslationsValueBuilder
    implements
        Builder<VendorRestaurantSetupPayloadTranslationsValue,
            VendorRestaurantSetupPayloadTranslationsValueBuilder> {
  _$VendorRestaurantSetupPayloadTranslationsValue? _$v;

  String? _metaTitle;
  String? get metaTitle => _$this._metaTitle;
  set metaTitle(String? metaTitle) => _$this._metaTitle = metaTitle;

  String? _metaDescription;
  String? get metaDescription => _$this._metaDescription;
  set metaDescription(String? metaDescription) =>
      _$this._metaDescription = metaDescription;

  VendorRestaurantSetupPayloadTranslationsValueBuilder() {
    VendorRestaurantSetupPayloadTranslationsValue._defaults(this);
  }

  VendorRestaurantSetupPayloadTranslationsValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metaTitle = $v.metaTitle;
      _metaDescription = $v.metaDescription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantSetupPayloadTranslationsValue other) {
    _$v = other as _$VendorRestaurantSetupPayloadTranslationsValue;
  }

  @override
  void update(
      void Function(VendorRestaurantSetupPayloadTranslationsValueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantSetupPayloadTranslationsValue build() => _build();

  _$VendorRestaurantSetupPayloadTranslationsValue _build() {
    final _$result = _$v ??
        _$VendorRestaurantSetupPayloadTranslationsValue._(
          metaTitle: metaTitle,
          metaDescription: metaDescription,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

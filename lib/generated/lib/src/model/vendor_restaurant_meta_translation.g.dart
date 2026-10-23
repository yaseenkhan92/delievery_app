// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_meta_translation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantMetaTranslation
    extends VendorRestaurantMetaTranslation {
  @override
  final String locale;
  @override
  final String? metaTitle;
  @override
  final String? metaDescription;

  factory _$VendorRestaurantMetaTranslation(
          [void Function(VendorRestaurantMetaTranslationBuilder)? updates]) =>
      (VendorRestaurantMetaTranslationBuilder()..update(updates))._build();

  _$VendorRestaurantMetaTranslation._(
      {required this.locale, this.metaTitle, this.metaDescription})
      : super._();
  @override
  VendorRestaurantMetaTranslation rebuild(
          void Function(VendorRestaurantMetaTranslationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantMetaTranslationBuilder toBuilder() =>
      VendorRestaurantMetaTranslationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantMetaTranslation &&
        locale == other.locale &&
        metaTitle == other.metaTitle &&
        metaDescription == other.metaDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, metaTitle.hashCode);
    _$hash = $jc(_$hash, metaDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRestaurantMetaTranslation')
          ..add('locale', locale)
          ..add('metaTitle', metaTitle)
          ..add('metaDescription', metaDescription))
        .toString();
  }
}

class VendorRestaurantMetaTranslationBuilder
    implements
        Builder<VendorRestaurantMetaTranslation,
            VendorRestaurantMetaTranslationBuilder> {
  _$VendorRestaurantMetaTranslation? _$v;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _metaTitle;
  String? get metaTitle => _$this._metaTitle;
  set metaTitle(String? metaTitle) => _$this._metaTitle = metaTitle;

  String? _metaDescription;
  String? get metaDescription => _$this._metaDescription;
  set metaDescription(String? metaDescription) =>
      _$this._metaDescription = metaDescription;

  VendorRestaurantMetaTranslationBuilder() {
    VendorRestaurantMetaTranslation._defaults(this);
  }

  VendorRestaurantMetaTranslationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locale = $v.locale;
      _metaTitle = $v.metaTitle;
      _metaDescription = $v.metaDescription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantMetaTranslation other) {
    _$v = other as _$VendorRestaurantMetaTranslation;
  }

  @override
  void update(void Function(VendorRestaurantMetaTranslationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantMetaTranslation build() => _build();

  _$VendorRestaurantMetaTranslation _build() {
    final _$result = _$v ??
        _$VendorRestaurantMetaTranslation._(
          locale: BuiltValueNullFieldError.checkNotNull(
              locale, r'VendorRestaurantMetaTranslation', 'locale'),
          metaTitle: metaTitle,
          metaDescription: metaDescription,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

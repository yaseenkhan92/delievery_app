// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_meta_data_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantMetaDataBody extends VendorRestaurantMetaDataBody {
  @override
  final String metaTitle;
  @override
  final String metaDescription;
  @override
  final String? metaImage;
  @override
  final BuiltList<VendorRestaurantMetaTranslation>? translations;

  factory _$VendorRestaurantMetaDataBody(
          [void Function(VendorRestaurantMetaDataBodyBuilder)? updates]) =>
      (VendorRestaurantMetaDataBodyBuilder()..update(updates))._build();

  _$VendorRestaurantMetaDataBody._(
      {required this.metaTitle,
      required this.metaDescription,
      this.metaImage,
      this.translations})
      : super._();
  @override
  VendorRestaurantMetaDataBody rebuild(
          void Function(VendorRestaurantMetaDataBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantMetaDataBodyBuilder toBuilder() =>
      VendorRestaurantMetaDataBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantMetaDataBody &&
        metaTitle == other.metaTitle &&
        metaDescription == other.metaDescription &&
        metaImage == other.metaImage &&
        translations == other.translations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, metaTitle.hashCode);
    _$hash = $jc(_$hash, metaDescription.hashCode);
    _$hash = $jc(_$hash, metaImage.hashCode);
    _$hash = $jc(_$hash, translations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRestaurantMetaDataBody')
          ..add('metaTitle', metaTitle)
          ..add('metaDescription', metaDescription)
          ..add('metaImage', metaImage)
          ..add('translations', translations))
        .toString();
  }
}

class VendorRestaurantMetaDataBodyBuilder
    implements
        Builder<VendorRestaurantMetaDataBody,
            VendorRestaurantMetaDataBodyBuilder> {
  _$VendorRestaurantMetaDataBody? _$v;

  String? _metaTitle;
  String? get metaTitle => _$this._metaTitle;
  set metaTitle(String? metaTitle) => _$this._metaTitle = metaTitle;

  String? _metaDescription;
  String? get metaDescription => _$this._metaDescription;
  set metaDescription(String? metaDescription) =>
      _$this._metaDescription = metaDescription;

  String? _metaImage;
  String? get metaImage => _$this._metaImage;
  set metaImage(String? metaImage) => _$this._metaImage = metaImage;

  ListBuilder<VendorRestaurantMetaTranslation>? _translations;
  ListBuilder<VendorRestaurantMetaTranslation> get translations =>
      _$this._translations ??= ListBuilder<VendorRestaurantMetaTranslation>();
  set translations(
          ListBuilder<VendorRestaurantMetaTranslation>? translations) =>
      _$this._translations = translations;

  VendorRestaurantMetaDataBodyBuilder() {
    VendorRestaurantMetaDataBody._defaults(this);
  }

  VendorRestaurantMetaDataBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metaTitle = $v.metaTitle;
      _metaDescription = $v.metaDescription;
      _metaImage = $v.metaImage;
      _translations = $v.translations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantMetaDataBody other) {
    _$v = other as _$VendorRestaurantMetaDataBody;
  }

  @override
  void update(void Function(VendorRestaurantMetaDataBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantMetaDataBody build() => _build();

  _$VendorRestaurantMetaDataBody _build() {
    _$VendorRestaurantMetaDataBody _$result;
    try {
      _$result = _$v ??
          _$VendorRestaurantMetaDataBody._(
            metaTitle: BuiltValueNullFieldError.checkNotNull(
                metaTitle, r'VendorRestaurantMetaDataBody', 'metaTitle'),
            metaDescription: BuiltValueNullFieldError.checkNotNull(
                metaDescription,
                r'VendorRestaurantMetaDataBody',
                'metaDescription'),
            metaImage: metaImage,
            translations: _translations?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'translations';
        _translations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VendorRestaurantMetaDataBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

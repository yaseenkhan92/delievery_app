// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_setup_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantSetupOptions extends VendorRestaurantSetupOptions {
  @override
  final BuiltList<VendorRestaurantSetupOptionsCuisinesInner>? cuisines;
  @override
  final BuiltList<String>? characteristicSuggestions;
  @override
  final BuiltList<VendorRestaurantSetupOptionsLanguagesInner>? languages;

  factory _$VendorRestaurantSetupOptions(
          [void Function(VendorRestaurantSetupOptionsBuilder)? updates]) =>
      (VendorRestaurantSetupOptionsBuilder()..update(updates))._build();

  _$VendorRestaurantSetupOptions._(
      {this.cuisines, this.characteristicSuggestions, this.languages})
      : super._();
  @override
  VendorRestaurantSetupOptions rebuild(
          void Function(VendorRestaurantSetupOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantSetupOptionsBuilder toBuilder() =>
      VendorRestaurantSetupOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantSetupOptions &&
        cuisines == other.cuisines &&
        characteristicSuggestions == other.characteristicSuggestions &&
        languages == other.languages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cuisines.hashCode);
    _$hash = $jc(_$hash, characteristicSuggestions.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRestaurantSetupOptions')
          ..add('cuisines', cuisines)
          ..add('characteristicSuggestions', characteristicSuggestions)
          ..add('languages', languages))
        .toString();
  }
}

class VendorRestaurantSetupOptionsBuilder
    implements
        Builder<VendorRestaurantSetupOptions,
            VendorRestaurantSetupOptionsBuilder> {
  _$VendorRestaurantSetupOptions? _$v;

  ListBuilder<VendorRestaurantSetupOptionsCuisinesInner>? _cuisines;
  ListBuilder<VendorRestaurantSetupOptionsCuisinesInner> get cuisines =>
      _$this._cuisines ??=
          ListBuilder<VendorRestaurantSetupOptionsCuisinesInner>();
  set cuisines(
          ListBuilder<VendorRestaurantSetupOptionsCuisinesInner>? cuisines) =>
      _$this._cuisines = cuisines;

  ListBuilder<String>? _characteristicSuggestions;
  ListBuilder<String> get characteristicSuggestions =>
      _$this._characteristicSuggestions ??= ListBuilder<String>();
  set characteristicSuggestions(
          ListBuilder<String>? characteristicSuggestions) =>
      _$this._characteristicSuggestions = characteristicSuggestions;

  ListBuilder<VendorRestaurantSetupOptionsLanguagesInner>? _languages;
  ListBuilder<VendorRestaurantSetupOptionsLanguagesInner> get languages =>
      _$this._languages ??=
          ListBuilder<VendorRestaurantSetupOptionsLanguagesInner>();
  set languages(
          ListBuilder<VendorRestaurantSetupOptionsLanguagesInner>? languages) =>
      _$this._languages = languages;

  VendorRestaurantSetupOptionsBuilder() {
    VendorRestaurantSetupOptions._defaults(this);
  }

  VendorRestaurantSetupOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cuisines = $v.cuisines?.toBuilder();
      _characteristicSuggestions = $v.characteristicSuggestions?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantSetupOptions other) {
    _$v = other as _$VendorRestaurantSetupOptions;
  }

  @override
  void update(void Function(VendorRestaurantSetupOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantSetupOptions build() => _build();

  _$VendorRestaurantSetupOptions _build() {
    _$VendorRestaurantSetupOptions _$result;
    try {
      _$result = _$v ??
          _$VendorRestaurantSetupOptions._(
            cuisines: _cuisines?.build(),
            characteristicSuggestions: _characteristicSuggestions?.build(),
            languages: _languages?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cuisines';
        _cuisines?.build();
        _$failedField = 'characteristicSuggestions';
        _characteristicSuggestions?.build();
        _$failedField = 'languages';
        _languages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VendorRestaurantSetupOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

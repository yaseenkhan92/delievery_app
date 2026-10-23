// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_configuration_response_language_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppConfigurationResponseLanguageInner
    extends AppConfigurationResponseLanguageInner {
  @override
  final String? key;
  @override
  final String? value;

  factory _$AppConfigurationResponseLanguageInner(
          [void Function(AppConfigurationResponseLanguageInnerBuilder)?
              updates]) =>
      (AppConfigurationResponseLanguageInnerBuilder()..update(updates))
          ._build();

  _$AppConfigurationResponseLanguageInner._({this.key, this.value}) : super._();
  @override
  AppConfigurationResponseLanguageInner rebuild(
          void Function(AppConfigurationResponseLanguageInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppConfigurationResponseLanguageInnerBuilder toBuilder() =>
      AppConfigurationResponseLanguageInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppConfigurationResponseLanguageInner &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AppConfigurationResponseLanguageInner')
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class AppConfigurationResponseLanguageInnerBuilder
    implements
        Builder<AppConfigurationResponseLanguageInner,
            AppConfigurationResponseLanguageInnerBuilder> {
  _$AppConfigurationResponseLanguageInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  AppConfigurationResponseLanguageInnerBuilder() {
    AppConfigurationResponseLanguageInner._defaults(this);
  }

  AppConfigurationResponseLanguageInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppConfigurationResponseLanguageInner other) {
    _$v = other as _$AppConfigurationResponseLanguageInner;
  }

  @override
  void update(
      void Function(AppConfigurationResponseLanguageInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppConfigurationResponseLanguageInner build() => _build();

  _$AppConfigurationResponseLanguageInner _build() {
    final _$result = _$v ??
        _$AppConfigurationResponseLanguageInner._(
          key: key,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

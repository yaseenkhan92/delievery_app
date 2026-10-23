// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_init_data_subfolders.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationInitDataSubfolders extends RegistrationInitDataSubfolders {
  @override
  final String? assets;
  @override
  final String? restaurant;
  @override
  final String? identity;
  @override
  final String? profile;

  factory _$RegistrationInitDataSubfolders(
          [void Function(RegistrationInitDataSubfoldersBuilder)? updates]) =>
      (RegistrationInitDataSubfoldersBuilder()..update(updates))._build();

  _$RegistrationInitDataSubfolders._(
      {this.assets, this.restaurant, this.identity, this.profile})
      : super._();
  @override
  RegistrationInitDataSubfolders rebuild(
          void Function(RegistrationInitDataSubfoldersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationInitDataSubfoldersBuilder toBuilder() =>
      RegistrationInitDataSubfoldersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationInitDataSubfolders &&
        assets == other.assets &&
        restaurant == other.restaurant &&
        identity == other.identity &&
        profile == other.profile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assets.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jc(_$hash, identity.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegistrationInitDataSubfolders')
          ..add('assets', assets)
          ..add('restaurant', restaurant)
          ..add('identity', identity)
          ..add('profile', profile))
        .toString();
  }
}

class RegistrationInitDataSubfoldersBuilder
    implements
        Builder<RegistrationInitDataSubfolders,
            RegistrationInitDataSubfoldersBuilder> {
  _$RegistrationInitDataSubfolders? _$v;

  String? _assets;
  String? get assets => _$this._assets;
  set assets(String? assets) => _$this._assets = assets;

  String? _restaurant;
  String? get restaurant => _$this._restaurant;
  set restaurant(String? restaurant) => _$this._restaurant = restaurant;

  String? _identity;
  String? get identity => _$this._identity;
  set identity(String? identity) => _$this._identity = identity;

  String? _profile;
  String? get profile => _$this._profile;
  set profile(String? profile) => _$this._profile = profile;

  RegistrationInitDataSubfoldersBuilder() {
    RegistrationInitDataSubfolders._defaults(this);
  }

  RegistrationInitDataSubfoldersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assets = $v.assets;
      _restaurant = $v.restaurant;
      _identity = $v.identity;
      _profile = $v.profile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationInitDataSubfolders other) {
    _$v = other as _$RegistrationInitDataSubfolders;
  }

  @override
  void update(void Function(RegistrationInitDataSubfoldersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationInitDataSubfolders build() => _build();

  _$RegistrationInitDataSubfolders _build() {
    final _$result = _$v ??
        _$RegistrationInitDataSubfolders._(
          assets: assets,
          restaurant: restaurant,
          identity: identity,
          profile: profile,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

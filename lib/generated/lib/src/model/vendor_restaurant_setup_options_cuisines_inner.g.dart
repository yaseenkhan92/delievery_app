// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_setup_options_cuisines_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantSetupOptionsCuisinesInner
    extends VendorRestaurantSetupOptionsCuisinesInner {
  @override
  final int? id;
  @override
  final String? name;

  factory _$VendorRestaurantSetupOptionsCuisinesInner(
          [void Function(VendorRestaurantSetupOptionsCuisinesInnerBuilder)?
              updates]) =>
      (VendorRestaurantSetupOptionsCuisinesInnerBuilder()..update(updates))
          ._build();

  _$VendorRestaurantSetupOptionsCuisinesInner._({this.id, this.name})
      : super._();
  @override
  VendorRestaurantSetupOptionsCuisinesInner rebuild(
          void Function(VendorRestaurantSetupOptionsCuisinesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantSetupOptionsCuisinesInnerBuilder toBuilder() =>
      VendorRestaurantSetupOptionsCuisinesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantSetupOptionsCuisinesInner &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'VendorRestaurantSetupOptionsCuisinesInner')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class VendorRestaurantSetupOptionsCuisinesInnerBuilder
    implements
        Builder<VendorRestaurantSetupOptionsCuisinesInner,
            VendorRestaurantSetupOptionsCuisinesInnerBuilder> {
  _$VendorRestaurantSetupOptionsCuisinesInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  VendorRestaurantSetupOptionsCuisinesInnerBuilder() {
    VendorRestaurantSetupOptionsCuisinesInner._defaults(this);
  }

  VendorRestaurantSetupOptionsCuisinesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantSetupOptionsCuisinesInner other) {
    _$v = other as _$VendorRestaurantSetupOptionsCuisinesInner;
  }

  @override
  void update(
      void Function(VendorRestaurantSetupOptionsCuisinesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantSetupOptionsCuisinesInner build() => _build();

  _$VendorRestaurantSetupOptionsCuisinesInner _build() {
    final _$result = _$v ??
        _$VendorRestaurantSetupOptionsCuisinesInner._(
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_request_latitude.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceOrderRequestLatitude extends PlaceOrderRequestLatitude {
  @override
  final OneOf oneOf;

  factory _$PlaceOrderRequestLatitude(
          [void Function(PlaceOrderRequestLatitudeBuilder)? updates]) =>
      (PlaceOrderRequestLatitudeBuilder()..update(updates))._build();

  _$PlaceOrderRequestLatitude._({required this.oneOf}) : super._();
  @override
  PlaceOrderRequestLatitude rebuild(
          void Function(PlaceOrderRequestLatitudeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceOrderRequestLatitudeBuilder toBuilder() =>
      PlaceOrderRequestLatitudeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceOrderRequestLatitude && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'PlaceOrderRequestLatitude')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class PlaceOrderRequestLatitudeBuilder
    implements
        Builder<PlaceOrderRequestLatitude, PlaceOrderRequestLatitudeBuilder> {
  _$PlaceOrderRequestLatitude? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  PlaceOrderRequestLatitudeBuilder() {
    PlaceOrderRequestLatitude._defaults(this);
  }

  PlaceOrderRequestLatitudeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceOrderRequestLatitude other) {
    _$v = other as _$PlaceOrderRequestLatitude;
  }

  @override
  void update(void Function(PlaceOrderRequestLatitudeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceOrderRequestLatitude build() => _build();

  _$PlaceOrderRequestLatitude _build() {
    final _$result = _$v ??
        _$PlaceOrderRequestLatitude._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'PlaceOrderRequestLatitude', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

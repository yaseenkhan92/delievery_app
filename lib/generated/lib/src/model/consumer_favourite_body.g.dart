// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_favourite_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerFavouriteBody extends ConsumerFavouriteBody {
  @override
  final int? foodId;
  @override
  final int? restaurantId;

  factory _$ConsumerFavouriteBody(
          [void Function(ConsumerFavouriteBodyBuilder)? updates]) =>
      (ConsumerFavouriteBodyBuilder()..update(updates))._build();

  _$ConsumerFavouriteBody._({this.foodId, this.restaurantId}) : super._();
  @override
  ConsumerFavouriteBody rebuild(
          void Function(ConsumerFavouriteBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerFavouriteBodyBuilder toBuilder() =>
      ConsumerFavouriteBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerFavouriteBody &&
        foodId == other.foodId &&
        restaurantId == other.restaurantId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foodId.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerFavouriteBody')
          ..add('foodId', foodId)
          ..add('restaurantId', restaurantId))
        .toString();
  }
}

class ConsumerFavouriteBodyBuilder
    implements Builder<ConsumerFavouriteBody, ConsumerFavouriteBodyBuilder> {
  _$ConsumerFavouriteBody? _$v;

  int? _foodId;
  int? get foodId => _$this._foodId;
  set foodId(int? foodId) => _$this._foodId = foodId;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  ConsumerFavouriteBodyBuilder() {
    ConsumerFavouriteBody._defaults(this);
  }

  ConsumerFavouriteBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foodId = $v.foodId;
      _restaurantId = $v.restaurantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerFavouriteBody other) {
    _$v = other as _$ConsumerFavouriteBody;
  }

  @override
  void update(void Function(ConsumerFavouriteBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerFavouriteBody build() => _build();

  _$ConsumerFavouriteBody _build() {
    final _$result = _$v ??
        _$ConsumerFavouriteBody._(
          foodId: foodId,
          restaurantId: restaurantId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

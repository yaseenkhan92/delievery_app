// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_favourite_list_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerFavouriteListData extends ConsumerFavouriteListData {
  @override
  final BuiltList<ConsumerFavouriteFoodItem> foods;
  @override
  final BuiltList<ConsumerFavouriteRestaurantItem> restaurants;

  factory _$ConsumerFavouriteListData(
          [void Function(ConsumerFavouriteListDataBuilder)? updates]) =>
      (ConsumerFavouriteListDataBuilder()..update(updates))._build();

  _$ConsumerFavouriteListData._(
      {required this.foods, required this.restaurants})
      : super._();
  @override
  ConsumerFavouriteListData rebuild(
          void Function(ConsumerFavouriteListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerFavouriteListDataBuilder toBuilder() =>
      ConsumerFavouriteListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerFavouriteListData &&
        foods == other.foods &&
        restaurants == other.restaurants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foods.hashCode);
    _$hash = $jc(_$hash, restaurants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerFavouriteListData')
          ..add('foods', foods)
          ..add('restaurants', restaurants))
        .toString();
  }
}

class ConsumerFavouriteListDataBuilder
    implements
        Builder<ConsumerFavouriteListData, ConsumerFavouriteListDataBuilder> {
  _$ConsumerFavouriteListData? _$v;

  ListBuilder<ConsumerFavouriteFoodItem>? _foods;
  ListBuilder<ConsumerFavouriteFoodItem> get foods =>
      _$this._foods ??= ListBuilder<ConsumerFavouriteFoodItem>();
  set foods(ListBuilder<ConsumerFavouriteFoodItem>? foods) =>
      _$this._foods = foods;

  ListBuilder<ConsumerFavouriteRestaurantItem>? _restaurants;
  ListBuilder<ConsumerFavouriteRestaurantItem> get restaurants =>
      _$this._restaurants ??= ListBuilder<ConsumerFavouriteRestaurantItem>();
  set restaurants(ListBuilder<ConsumerFavouriteRestaurantItem>? restaurants) =>
      _$this._restaurants = restaurants;

  ConsumerFavouriteListDataBuilder() {
    ConsumerFavouriteListData._defaults(this);
  }

  ConsumerFavouriteListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foods = $v.foods.toBuilder();
      _restaurants = $v.restaurants.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerFavouriteListData other) {
    _$v = other as _$ConsumerFavouriteListData;
  }

  @override
  void update(void Function(ConsumerFavouriteListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerFavouriteListData build() => _build();

  _$ConsumerFavouriteListData _build() {
    _$ConsumerFavouriteListData _$result;
    try {
      _$result = _$v ??
          _$ConsumerFavouriteListData._(
            foods: foods.build(),
            restaurants: restaurants.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'foods';
        foods.build();
        _$failedField = 'restaurants';
        restaurants.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerFavouriteListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_restaurants_id_foods_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerRestaurantsIdFoodsGet200ResponseData
    extends ConsumerRestaurantsIdFoodsGet200ResponseData {
  @override
  final num? totalSize;
  @override
  final num? limit;
  @override
  final num? offset;
  @override
  final BuiltList<ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner>?
      foods;

  factory _$ConsumerRestaurantsIdFoodsGet200ResponseData(
          [void Function(ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder)?
              updates]) =>
      (ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder()..update(updates))
          ._build();

  _$ConsumerRestaurantsIdFoodsGet200ResponseData._(
      {this.totalSize, this.limit, this.offset, this.foods})
      : super._();
  @override
  ConsumerRestaurantsIdFoodsGet200ResponseData rebuild(
          void Function(ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder toBuilder() =>
      ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerRestaurantsIdFoodsGet200ResponseData &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        foods == other.foods;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, foods.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ConsumerRestaurantsIdFoodsGet200ResponseData')
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('foods', foods))
        .toString();
  }
}

class ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder
    implements
        Builder<ConsumerRestaurantsIdFoodsGet200ResponseData,
            ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder> {
  _$ConsumerRestaurantsIdFoodsGet200ResponseData? _$v;

  num? _totalSize;
  num? get totalSize => _$this._totalSize;
  set totalSize(num? totalSize) => _$this._totalSize = totalSize;

  num? _limit;
  num? get limit => _$this._limit;
  set limit(num? limit) => _$this._limit = limit;

  num? _offset;
  num? get offset => _$this._offset;
  set offset(num? offset) => _$this._offset = offset;

  ListBuilder<ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner>? _foods;
  ListBuilder<ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner>
      get foods => _$this._foods ??=
          ListBuilder<ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner>();
  set foods(
          ListBuilder<ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner>?
              foods) =>
      _$this._foods = foods;

  ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder() {
    ConsumerRestaurantsIdFoodsGet200ResponseData._defaults(this);
  }

  ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _foods = $v.foods?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerRestaurantsIdFoodsGet200ResponseData other) {
    _$v = other as _$ConsumerRestaurantsIdFoodsGet200ResponseData;
  }

  @override
  void update(
      void Function(ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerRestaurantsIdFoodsGet200ResponseData build() => _build();

  _$ConsumerRestaurantsIdFoodsGet200ResponseData _build() {
    _$ConsumerRestaurantsIdFoodsGet200ResponseData _$result;
    try {
      _$result = _$v ??
          _$ConsumerRestaurantsIdFoodsGet200ResponseData._(
            totalSize: totalSize,
            limit: limit,
            offset: offset,
            foods: _foods?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'foods';
        _foods?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerRestaurantsIdFoodsGet200ResponseData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

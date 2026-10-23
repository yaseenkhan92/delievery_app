// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_restaurant_list_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerRestaurantListResponseData
    extends ConsumerRestaurantListResponseData {
  @override
  final int totalSize;
  @override
  final int limit;
  @override
  final int offset;
  @override
  final BuiltList<ConsumerRestaurantSummary> restaurants;

  factory _$ConsumerRestaurantListResponseData(
          [void Function(ConsumerRestaurantListResponseDataBuilder)?
              updates]) =>
      (ConsumerRestaurantListResponseDataBuilder()..update(updates))._build();

  _$ConsumerRestaurantListResponseData._(
      {required this.totalSize,
      required this.limit,
      required this.offset,
      required this.restaurants})
      : super._();
  @override
  ConsumerRestaurantListResponseData rebuild(
          void Function(ConsumerRestaurantListResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerRestaurantListResponseDataBuilder toBuilder() =>
      ConsumerRestaurantListResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerRestaurantListResponseData &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        restaurants == other.restaurants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, restaurants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerRestaurantListResponseData')
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('restaurants', restaurants))
        .toString();
  }
}

class ConsumerRestaurantListResponseDataBuilder
    implements
        Builder<ConsumerRestaurantListResponseData,
            ConsumerRestaurantListResponseDataBuilder> {
  _$ConsumerRestaurantListResponseData? _$v;

  int? _totalSize;
  int? get totalSize => _$this._totalSize;
  set totalSize(int? totalSize) => _$this._totalSize = totalSize;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  ListBuilder<ConsumerRestaurantSummary>? _restaurants;
  ListBuilder<ConsumerRestaurantSummary> get restaurants =>
      _$this._restaurants ??= ListBuilder<ConsumerRestaurantSummary>();
  set restaurants(ListBuilder<ConsumerRestaurantSummary>? restaurants) =>
      _$this._restaurants = restaurants;

  ConsumerRestaurantListResponseDataBuilder() {
    ConsumerRestaurantListResponseData._defaults(this);
  }

  ConsumerRestaurantListResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _restaurants = $v.restaurants.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerRestaurantListResponseData other) {
    _$v = other as _$ConsumerRestaurantListResponseData;
  }

  @override
  void update(
      void Function(ConsumerRestaurantListResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerRestaurantListResponseData build() => _build();

  _$ConsumerRestaurantListResponseData _build() {
    _$ConsumerRestaurantListResponseData _$result;
    try {
      _$result = _$v ??
          _$ConsumerRestaurantListResponseData._(
            totalSize: BuiltValueNullFieldError.checkNotNull(
                totalSize, r'ConsumerRestaurantListResponseData', 'totalSize'),
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, r'ConsumerRestaurantListResponseData', 'limit'),
            offset: BuiltValueNullFieldError.checkNotNull(
                offset, r'ConsumerRestaurantListResponseData', 'offset'),
            restaurants: restaurants.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurants';
        restaurants.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerRestaurantListResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

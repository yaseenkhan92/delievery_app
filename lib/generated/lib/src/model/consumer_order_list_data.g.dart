// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_order_list_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerOrderListData extends ConsumerOrderListData {
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final int? page;
  @override
  final BuiltList<ConsumerOrderListItem>? orders;

  factory _$ConsumerOrderListData(
          [void Function(ConsumerOrderListDataBuilder)? updates]) =>
      (ConsumerOrderListDataBuilder()..update(updates))._build();

  _$ConsumerOrderListData._(
      {this.totalSize, this.limit, this.offset, this.page, this.orders})
      : super._();
  @override
  ConsumerOrderListData rebuild(
          void Function(ConsumerOrderListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerOrderListDataBuilder toBuilder() =>
      ConsumerOrderListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerOrderListData &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        page == other.page &&
        orders == other.orders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, orders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerOrderListData')
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('page', page)
          ..add('orders', orders))
        .toString();
  }
}

class ConsumerOrderListDataBuilder
    implements Builder<ConsumerOrderListData, ConsumerOrderListDataBuilder> {
  _$ConsumerOrderListData? _$v;

  int? _totalSize;
  int? get totalSize => _$this._totalSize;
  set totalSize(int? totalSize) => _$this._totalSize = totalSize;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  ListBuilder<ConsumerOrderListItem>? _orders;
  ListBuilder<ConsumerOrderListItem> get orders =>
      _$this._orders ??= ListBuilder<ConsumerOrderListItem>();
  set orders(ListBuilder<ConsumerOrderListItem>? orders) =>
      _$this._orders = orders;

  ConsumerOrderListDataBuilder() {
    ConsumerOrderListData._defaults(this);
  }

  ConsumerOrderListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _page = $v.page;
      _orders = $v.orders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerOrderListData other) {
    _$v = other as _$ConsumerOrderListData;
  }

  @override
  void update(void Function(ConsumerOrderListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerOrderListData build() => _build();

  _$ConsumerOrderListData _build() {
    _$ConsumerOrderListData _$result;
    try {
      _$result = _$v ??
          _$ConsumerOrderListData._(
            totalSize: totalSize,
            limit: limit,
            offset: offset,
            page: page,
            orders: _orders?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orders';
        _orders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerOrderListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

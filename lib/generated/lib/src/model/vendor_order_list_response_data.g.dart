// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_order_list_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorOrderListResponseData extends VendorOrderListResponseData {
  @override
  final int? total;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final BuiltList<VendorOrderSummary>? orders;

  factory _$VendorOrderListResponseData(
          [void Function(VendorOrderListResponseDataBuilder)? updates]) =>
      (VendorOrderListResponseDataBuilder()..update(updates))._build();

  _$VendorOrderListResponseData._(
      {this.total, this.limit, this.offset, this.orders})
      : super._();
  @override
  VendorOrderListResponseData rebuild(
          void Function(VendorOrderListResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorOrderListResponseDataBuilder toBuilder() =>
      VendorOrderListResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorOrderListResponseData &&
        total == other.total &&
        limit == other.limit &&
        offset == other.offset &&
        orders == other.orders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, orders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorOrderListResponseData')
          ..add('total', total)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('orders', orders))
        .toString();
  }
}

class VendorOrderListResponseDataBuilder
    implements
        Builder<VendorOrderListResponseData,
            VendorOrderListResponseDataBuilder> {
  _$VendorOrderListResponseData? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  ListBuilder<VendorOrderSummary>? _orders;
  ListBuilder<VendorOrderSummary> get orders =>
      _$this._orders ??= ListBuilder<VendorOrderSummary>();
  set orders(ListBuilder<VendorOrderSummary>? orders) =>
      _$this._orders = orders;

  VendorOrderListResponseDataBuilder() {
    VendorOrderListResponseData._defaults(this);
  }

  VendorOrderListResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _limit = $v.limit;
      _offset = $v.offset;
      _orders = $v.orders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorOrderListResponseData other) {
    _$v = other as _$VendorOrderListResponseData;
  }

  @override
  void update(void Function(VendorOrderListResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorOrderListResponseData build() => _build();

  _$VendorOrderListResponseData _build() {
    _$VendorOrderListResponseData _$result;
    try {
      _$result = _$v ??
          _$VendorOrderListResponseData._(
            total: total,
            limit: limit,
            offset: offset,
            orders: _orders?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orders';
        _orders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VendorOrderListResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

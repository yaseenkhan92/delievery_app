// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_my_orders_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManMyOrdersResponseData
    extends DeliveryManMyOrdersResponseData {
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final BuiltList<DeliveryManMyOrderCard>? orders;

  factory _$DeliveryManMyOrdersResponseData(
          [void Function(DeliveryManMyOrdersResponseDataBuilder)? updates]) =>
      (DeliveryManMyOrdersResponseDataBuilder()..update(updates))._build();

  _$DeliveryManMyOrdersResponseData._(
      {this.totalSize, this.limit, this.offset, this.orders})
      : super._();
  @override
  DeliveryManMyOrdersResponseData rebuild(
          void Function(DeliveryManMyOrdersResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManMyOrdersResponseDataBuilder toBuilder() =>
      DeliveryManMyOrdersResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManMyOrdersResponseData &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        orders == other.orders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, orders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManMyOrdersResponseData')
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('orders', orders))
        .toString();
  }
}

class DeliveryManMyOrdersResponseDataBuilder
    implements
        Builder<DeliveryManMyOrdersResponseData,
            DeliveryManMyOrdersResponseDataBuilder> {
  _$DeliveryManMyOrdersResponseData? _$v;

  int? _totalSize;
  int? get totalSize => _$this._totalSize;
  set totalSize(int? totalSize) => _$this._totalSize = totalSize;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  ListBuilder<DeliveryManMyOrderCard>? _orders;
  ListBuilder<DeliveryManMyOrderCard> get orders =>
      _$this._orders ??= ListBuilder<DeliveryManMyOrderCard>();
  set orders(ListBuilder<DeliveryManMyOrderCard>? orders) =>
      _$this._orders = orders;

  DeliveryManMyOrdersResponseDataBuilder() {
    DeliveryManMyOrdersResponseData._defaults(this);
  }

  DeliveryManMyOrdersResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _orders = $v.orders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManMyOrdersResponseData other) {
    _$v = other as _$DeliveryManMyOrdersResponseData;
  }

  @override
  void update(void Function(DeliveryManMyOrdersResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManMyOrdersResponseData build() => _build();

  _$DeliveryManMyOrdersResponseData _build() {
    _$DeliveryManMyOrdersResponseData _$result;
    try {
      _$result = _$v ??
          _$DeliveryManMyOrdersResponseData._(
            totalSize: totalSize,
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
            r'DeliveryManMyOrdersResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

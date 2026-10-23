// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_order_recent_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorOrderRecentResponseData extends VendorOrderRecentResponseData {
  @override
  final BuiltList<VendorOrderSummary>? orders;
  @override
  final int? latestId;

  factory _$VendorOrderRecentResponseData(
          [void Function(VendorOrderRecentResponseDataBuilder)? updates]) =>
      (VendorOrderRecentResponseDataBuilder()..update(updates))._build();

  _$VendorOrderRecentResponseData._({this.orders, this.latestId}) : super._();
  @override
  VendorOrderRecentResponseData rebuild(
          void Function(VendorOrderRecentResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorOrderRecentResponseDataBuilder toBuilder() =>
      VendorOrderRecentResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorOrderRecentResponseData &&
        orders == other.orders &&
        latestId == other.latestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orders.hashCode);
    _$hash = $jc(_$hash, latestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorOrderRecentResponseData')
          ..add('orders', orders)
          ..add('latestId', latestId))
        .toString();
  }
}

class VendorOrderRecentResponseDataBuilder
    implements
        Builder<VendorOrderRecentResponseData,
            VendorOrderRecentResponseDataBuilder> {
  _$VendorOrderRecentResponseData? _$v;

  ListBuilder<VendorOrderSummary>? _orders;
  ListBuilder<VendorOrderSummary> get orders =>
      _$this._orders ??= ListBuilder<VendorOrderSummary>();
  set orders(ListBuilder<VendorOrderSummary>? orders) =>
      _$this._orders = orders;

  int? _latestId;
  int? get latestId => _$this._latestId;
  set latestId(int? latestId) => _$this._latestId = latestId;

  VendorOrderRecentResponseDataBuilder() {
    VendorOrderRecentResponseData._defaults(this);
  }

  VendorOrderRecentResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orders = $v.orders?.toBuilder();
      _latestId = $v.latestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorOrderRecentResponseData other) {
    _$v = other as _$VendorOrderRecentResponseData;
  }

  @override
  void update(void Function(VendorOrderRecentResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorOrderRecentResponseData build() => _build();

  _$VendorOrderRecentResponseData _build() {
    _$VendorOrderRecentResponseData _$result;
    try {
      _$result = _$v ??
          _$VendorOrderRecentResponseData._(
            orders: _orders?.build(),
            latestId: latestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orders';
        _orders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VendorOrderRecentResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

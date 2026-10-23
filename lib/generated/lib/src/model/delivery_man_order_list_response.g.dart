// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderListResponse extends DeliveryManOrderListResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final BuiltList<DeliveryManOrderSummary>? data;

  factory _$DeliveryManOrderListResponse(
          [void Function(DeliveryManOrderListResponseBuilder)? updates]) =>
      (DeliveryManOrderListResponseBuilder()..update(updates))._build();

  _$DeliveryManOrderListResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  DeliveryManOrderListResponse rebuild(
          void Function(DeliveryManOrderListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderListResponseBuilder toBuilder() =>
      DeliveryManOrderListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderListResponse &&
        status == other.status &&
        msg == other.msg &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManOrderListResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class DeliveryManOrderListResponseBuilder
    implements
        Builder<DeliveryManOrderListResponse,
            DeliveryManOrderListResponseBuilder> {
  _$DeliveryManOrderListResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ListBuilder<DeliveryManOrderSummary>? _data;
  ListBuilder<DeliveryManOrderSummary> get data =>
      _$this._data ??= ListBuilder<DeliveryManOrderSummary>();
  set data(ListBuilder<DeliveryManOrderSummary>? data) => _$this._data = data;

  DeliveryManOrderListResponseBuilder() {
    DeliveryManOrderListResponse._defaults(this);
  }

  DeliveryManOrderListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManOrderListResponse other) {
    _$v = other as _$DeliveryManOrderListResponse;
  }

  @override
  void update(void Function(DeliveryManOrderListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderListResponse build() => _build();

  _$DeliveryManOrderListResponse _build() {
    _$DeliveryManOrderListResponse _$result;
    try {
      _$result = _$v ??
          _$DeliveryManOrderListResponse._(
            status: status,
            msg: msg,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryManOrderListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

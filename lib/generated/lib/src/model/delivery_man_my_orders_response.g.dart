// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_my_orders_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManMyOrdersResponse extends DeliveryManMyOrdersResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final DeliveryManMyOrdersResponseData? data;

  factory _$DeliveryManMyOrdersResponse(
          [void Function(DeliveryManMyOrdersResponseBuilder)? updates]) =>
      (DeliveryManMyOrdersResponseBuilder()..update(updates))._build();

  _$DeliveryManMyOrdersResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  DeliveryManMyOrdersResponse rebuild(
          void Function(DeliveryManMyOrdersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManMyOrdersResponseBuilder toBuilder() =>
      DeliveryManMyOrdersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManMyOrdersResponse &&
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
    return (newBuiltValueToStringHelper(r'DeliveryManMyOrdersResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class DeliveryManMyOrdersResponseBuilder
    implements
        Builder<DeliveryManMyOrdersResponse,
            DeliveryManMyOrdersResponseBuilder> {
  _$DeliveryManMyOrdersResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  DeliveryManMyOrdersResponseDataBuilder? _data;
  DeliveryManMyOrdersResponseDataBuilder get data =>
      _$this._data ??= DeliveryManMyOrdersResponseDataBuilder();
  set data(DeliveryManMyOrdersResponseDataBuilder? data) => _$this._data = data;

  DeliveryManMyOrdersResponseBuilder() {
    DeliveryManMyOrdersResponse._defaults(this);
  }

  DeliveryManMyOrdersResponseBuilder get _$this {
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
  void replace(DeliveryManMyOrdersResponse other) {
    _$v = other as _$DeliveryManMyOrdersResponse;
  }

  @override
  void update(void Function(DeliveryManMyOrdersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManMyOrdersResponse build() => _build();

  _$DeliveryManMyOrdersResponse _build() {
    _$DeliveryManMyOrdersResponse _$result;
    try {
      _$result = _$v ??
          _$DeliveryManMyOrdersResponse._(
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
            r'DeliveryManMyOrdersResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_place_order_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerPlaceOrderResponse extends ConsumerPlaceOrderResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final String? message;
  @override
  final String? orderId;
  @override
  final num? totalAmmount;
  @override
  final ConsumerPlaceOrderData? data;

  factory _$ConsumerPlaceOrderResponse(
          [void Function(ConsumerPlaceOrderResponseBuilder)? updates]) =>
      (ConsumerPlaceOrderResponseBuilder()..update(updates))._build();

  _$ConsumerPlaceOrderResponse._(
      {this.status,
      this.msg,
      this.message,
      this.orderId,
      this.totalAmmount,
      this.data})
      : super._();
  @override
  ConsumerPlaceOrderResponse rebuild(
          void Function(ConsumerPlaceOrderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerPlaceOrderResponseBuilder toBuilder() =>
      ConsumerPlaceOrderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerPlaceOrderResponse &&
        status == other.status &&
        msg == other.msg &&
        message == other.message &&
        orderId == other.orderId &&
        totalAmmount == other.totalAmmount &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, totalAmmount.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerPlaceOrderResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('message', message)
          ..add('orderId', orderId)
          ..add('totalAmmount', totalAmmount)
          ..add('data', data))
        .toString();
  }
}

class ConsumerPlaceOrderResponseBuilder
    implements
        Builder<ConsumerPlaceOrderResponse, ConsumerPlaceOrderResponseBuilder> {
  _$ConsumerPlaceOrderResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  num? _totalAmmount;
  num? get totalAmmount => _$this._totalAmmount;
  set totalAmmount(num? totalAmmount) => _$this._totalAmmount = totalAmmount;

  ConsumerPlaceOrderDataBuilder? _data;
  ConsumerPlaceOrderDataBuilder get data =>
      _$this._data ??= ConsumerPlaceOrderDataBuilder();
  set data(ConsumerPlaceOrderDataBuilder? data) => _$this._data = data;

  ConsumerPlaceOrderResponseBuilder() {
    ConsumerPlaceOrderResponse._defaults(this);
  }

  ConsumerPlaceOrderResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _message = $v.message;
      _orderId = $v.orderId;
      _totalAmmount = $v.totalAmmount;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerPlaceOrderResponse other) {
    _$v = other as _$ConsumerPlaceOrderResponse;
  }

  @override
  void update(void Function(ConsumerPlaceOrderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerPlaceOrderResponse build() => _build();

  _$ConsumerPlaceOrderResponse _build() {
    _$ConsumerPlaceOrderResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerPlaceOrderResponse._(
            status: status,
            msg: msg,
            message: message,
            orderId: orderId,
            totalAmmount: totalAmmount,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerPlaceOrderResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_earnings_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManEarningsResponse extends DeliveryManEarningsResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final DeliveryManEarningsResponseData? data;

  factory _$DeliveryManEarningsResponse(
          [void Function(DeliveryManEarningsResponseBuilder)? updates]) =>
      (DeliveryManEarningsResponseBuilder()..update(updates))._build();

  _$DeliveryManEarningsResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  DeliveryManEarningsResponse rebuild(
          void Function(DeliveryManEarningsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManEarningsResponseBuilder toBuilder() =>
      DeliveryManEarningsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManEarningsResponse &&
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
    return (newBuiltValueToStringHelper(r'DeliveryManEarningsResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class DeliveryManEarningsResponseBuilder
    implements
        Builder<DeliveryManEarningsResponse,
            DeliveryManEarningsResponseBuilder> {
  _$DeliveryManEarningsResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  DeliveryManEarningsResponseDataBuilder? _data;
  DeliveryManEarningsResponseDataBuilder get data =>
      _$this._data ??= DeliveryManEarningsResponseDataBuilder();
  set data(DeliveryManEarningsResponseDataBuilder? data) => _$this._data = data;

  DeliveryManEarningsResponseBuilder() {
    DeliveryManEarningsResponse._defaults(this);
  }

  DeliveryManEarningsResponseBuilder get _$this {
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
  void replace(DeliveryManEarningsResponse other) {
    _$v = other as _$DeliveryManEarningsResponse;
  }

  @override
  void update(void Function(DeliveryManEarningsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManEarningsResponse build() => _build();

  _$DeliveryManEarningsResponse _build() {
    _$DeliveryManEarningsResponse _$result;
    try {
      _$result = _$v ??
          _$DeliveryManEarningsResponse._(
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
            r'DeliveryManEarningsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

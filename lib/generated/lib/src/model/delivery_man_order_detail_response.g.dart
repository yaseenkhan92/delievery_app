// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderDetailResponse extends DeliveryManOrderDetailResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final DeliveryManOrderDetail? data;

  factory _$DeliveryManOrderDetailResponse(
          [void Function(DeliveryManOrderDetailResponseBuilder)? updates]) =>
      (DeliveryManOrderDetailResponseBuilder()..update(updates))._build();

  _$DeliveryManOrderDetailResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  DeliveryManOrderDetailResponse rebuild(
          void Function(DeliveryManOrderDetailResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderDetailResponseBuilder toBuilder() =>
      DeliveryManOrderDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderDetailResponse &&
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
    return (newBuiltValueToStringHelper(r'DeliveryManOrderDetailResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class DeliveryManOrderDetailResponseBuilder
    implements
        Builder<DeliveryManOrderDetailResponse,
            DeliveryManOrderDetailResponseBuilder> {
  _$DeliveryManOrderDetailResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  DeliveryManOrderDetailBuilder? _data;
  DeliveryManOrderDetailBuilder get data =>
      _$this._data ??= DeliveryManOrderDetailBuilder();
  set data(DeliveryManOrderDetailBuilder? data) => _$this._data = data;

  DeliveryManOrderDetailResponseBuilder() {
    DeliveryManOrderDetailResponse._defaults(this);
  }

  DeliveryManOrderDetailResponseBuilder get _$this {
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
  void replace(DeliveryManOrderDetailResponse other) {
    _$v = other as _$DeliveryManOrderDetailResponse;
  }

  @override
  void update(void Function(DeliveryManOrderDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderDetailResponse build() => _build();

  _$DeliveryManOrderDetailResponse _build() {
    _$DeliveryManOrderDetailResponse _$result;
    try {
      _$result = _$v ??
          _$DeliveryManOrderDetailResponse._(
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
            r'DeliveryManOrderDetailResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

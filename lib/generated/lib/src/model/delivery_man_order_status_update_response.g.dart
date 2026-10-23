// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_status_update_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderStatusUpdateResponse
    extends DeliveryManOrderStatusUpdateResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final DeliveryManOrderStatusUpdateResponseData? data;

  factory _$DeliveryManOrderStatusUpdateResponse(
          [void Function(DeliveryManOrderStatusUpdateResponseBuilder)?
              updates]) =>
      (DeliveryManOrderStatusUpdateResponseBuilder()..update(updates))._build();

  _$DeliveryManOrderStatusUpdateResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  DeliveryManOrderStatusUpdateResponse rebuild(
          void Function(DeliveryManOrderStatusUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderStatusUpdateResponseBuilder toBuilder() =>
      DeliveryManOrderStatusUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderStatusUpdateResponse &&
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
    return (newBuiltValueToStringHelper(r'DeliveryManOrderStatusUpdateResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class DeliveryManOrderStatusUpdateResponseBuilder
    implements
        Builder<DeliveryManOrderStatusUpdateResponse,
            DeliveryManOrderStatusUpdateResponseBuilder> {
  _$DeliveryManOrderStatusUpdateResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  DeliveryManOrderStatusUpdateResponseDataBuilder? _data;
  DeliveryManOrderStatusUpdateResponseDataBuilder get data =>
      _$this._data ??= DeliveryManOrderStatusUpdateResponseDataBuilder();
  set data(DeliveryManOrderStatusUpdateResponseDataBuilder? data) =>
      _$this._data = data;

  DeliveryManOrderStatusUpdateResponseBuilder() {
    DeliveryManOrderStatusUpdateResponse._defaults(this);
  }

  DeliveryManOrderStatusUpdateResponseBuilder get _$this {
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
  void replace(DeliveryManOrderStatusUpdateResponse other) {
    _$v = other as _$DeliveryManOrderStatusUpdateResponse;
  }

  @override
  void update(
      void Function(DeliveryManOrderStatusUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderStatusUpdateResponse build() => _build();

  _$DeliveryManOrderStatusUpdateResponse _build() {
    _$DeliveryManOrderStatusUpdateResponse _$result;
    try {
      _$result = _$v ??
          _$DeliveryManOrderStatusUpdateResponse._(
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
            r'DeliveryManOrderStatusUpdateResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

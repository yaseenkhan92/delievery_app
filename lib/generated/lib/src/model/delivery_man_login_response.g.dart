// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_login_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManLoginResponse extends DeliveryManLoginResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final DeliveryManLoginData? data;

  factory _$DeliveryManLoginResponse(
          [void Function(DeliveryManLoginResponseBuilder)? updates]) =>
      (DeliveryManLoginResponseBuilder()..update(updates))._build();

  _$DeliveryManLoginResponse._({this.status, this.msg, this.data}) : super._();
  @override
  DeliveryManLoginResponse rebuild(
          void Function(DeliveryManLoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManLoginResponseBuilder toBuilder() =>
      DeliveryManLoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManLoginResponse &&
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
    return (newBuiltValueToStringHelper(r'DeliveryManLoginResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class DeliveryManLoginResponseBuilder
    implements
        Builder<DeliveryManLoginResponse, DeliveryManLoginResponseBuilder> {
  _$DeliveryManLoginResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  DeliveryManLoginDataBuilder? _data;
  DeliveryManLoginDataBuilder get data =>
      _$this._data ??= DeliveryManLoginDataBuilder();
  set data(DeliveryManLoginDataBuilder? data) => _$this._data = data;

  DeliveryManLoginResponseBuilder() {
    DeliveryManLoginResponse._defaults(this);
  }

  DeliveryManLoginResponseBuilder get _$this {
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
  void replace(DeliveryManLoginResponse other) {
    _$v = other as _$DeliveryManLoginResponse;
  }

  @override
  void update(void Function(DeliveryManLoginResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManLoginResponse build() => _build();

  _$DeliveryManLoginResponse _build() {
    _$DeliveryManLoginResponse _$result;
    try {
      _$result = _$v ??
          _$DeliveryManLoginResponse._(
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
            r'DeliveryManLoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_login_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerLoginResponse extends ConsumerLoginResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final ConsumerLoginResponseData? data;

  factory _$ConsumerLoginResponse(
          [void Function(ConsumerLoginResponseBuilder)? updates]) =>
      (ConsumerLoginResponseBuilder()..update(updates))._build();

  _$ConsumerLoginResponse._({this.status, this.msg, this.data}) : super._();
  @override
  ConsumerLoginResponse rebuild(
          void Function(ConsumerLoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerLoginResponseBuilder toBuilder() =>
      ConsumerLoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerLoginResponse &&
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
    return (newBuiltValueToStringHelper(r'ConsumerLoginResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class ConsumerLoginResponseBuilder
    implements Builder<ConsumerLoginResponse, ConsumerLoginResponseBuilder> {
  _$ConsumerLoginResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ConsumerLoginResponseDataBuilder? _data;
  ConsumerLoginResponseDataBuilder get data =>
      _$this._data ??= ConsumerLoginResponseDataBuilder();
  set data(ConsumerLoginResponseDataBuilder? data) => _$this._data = data;

  ConsumerLoginResponseBuilder() {
    ConsumerLoginResponse._defaults(this);
  }

  ConsumerLoginResponseBuilder get _$this {
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
  void replace(ConsumerLoginResponse other) {
    _$v = other as _$ConsumerLoginResponse;
  }

  @override
  void update(void Function(ConsumerLoginResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerLoginResponse build() => _build();

  _$ConsumerLoginResponse _build() {
    _$ConsumerLoginResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerLoginResponse._(
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
            r'ConsumerLoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

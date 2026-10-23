// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_token_update_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FcmTokenUpdateResponse extends FcmTokenUpdateResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final String? message;

  factory _$FcmTokenUpdateResponse(
          [void Function(FcmTokenUpdateResponseBuilder)? updates]) =>
      (FcmTokenUpdateResponseBuilder()..update(updates))._build();

  _$FcmTokenUpdateResponse._({this.status, this.msg, this.message}) : super._();
  @override
  FcmTokenUpdateResponse rebuild(
          void Function(FcmTokenUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FcmTokenUpdateResponseBuilder toBuilder() =>
      FcmTokenUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FcmTokenUpdateResponse &&
        status == other.status &&
        msg == other.msg &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FcmTokenUpdateResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('message', message))
        .toString();
  }
}

class FcmTokenUpdateResponseBuilder
    implements Builder<FcmTokenUpdateResponse, FcmTokenUpdateResponseBuilder> {
  _$FcmTokenUpdateResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  FcmTokenUpdateResponseBuilder() {
    FcmTokenUpdateResponse._defaults(this);
  }

  FcmTokenUpdateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FcmTokenUpdateResponse other) {
    _$v = other as _$FcmTokenUpdateResponse;
  }

  @override
  void update(void Function(FcmTokenUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FcmTokenUpdateResponse build() => _build();

  _$FcmTokenUpdateResponse _build() {
    final _$result = _$v ??
        _$FcmTokenUpdateResponse._(
          status: status,
          msg: msg,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

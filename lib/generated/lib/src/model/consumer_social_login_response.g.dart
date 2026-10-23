// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_social_login_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerSocialLoginResponse extends ConsumerSocialLoginResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final ConsumerSocialLoginData? data;

  factory _$ConsumerSocialLoginResponse(
          [void Function(ConsumerSocialLoginResponseBuilder)? updates]) =>
      (ConsumerSocialLoginResponseBuilder()..update(updates))._build();

  _$ConsumerSocialLoginResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  ConsumerSocialLoginResponse rebuild(
          void Function(ConsumerSocialLoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerSocialLoginResponseBuilder toBuilder() =>
      ConsumerSocialLoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerSocialLoginResponse &&
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
    return (newBuiltValueToStringHelper(r'ConsumerSocialLoginResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class ConsumerSocialLoginResponseBuilder
    implements
        Builder<ConsumerSocialLoginResponse,
            ConsumerSocialLoginResponseBuilder> {
  _$ConsumerSocialLoginResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ConsumerSocialLoginDataBuilder? _data;
  ConsumerSocialLoginDataBuilder get data =>
      _$this._data ??= ConsumerSocialLoginDataBuilder();
  set data(ConsumerSocialLoginDataBuilder? data) => _$this._data = data;

  ConsumerSocialLoginResponseBuilder() {
    ConsumerSocialLoginResponse._defaults(this);
  }

  ConsumerSocialLoginResponseBuilder get _$this {
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
  void replace(ConsumerSocialLoginResponse other) {
    _$v = other as _$ConsumerSocialLoginResponse;
  }

  @override
  void update(void Function(ConsumerSocialLoginResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerSocialLoginResponse build() => _build();

  _$ConsumerSocialLoginResponse _build() {
    _$ConsumerSocialLoginResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerSocialLoginResponse._(
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
            r'ConsumerSocialLoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

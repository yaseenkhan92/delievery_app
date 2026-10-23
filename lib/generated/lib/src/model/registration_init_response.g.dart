// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_init_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationInitResponse extends RegistrationInitResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final RegistrationInitData? data;

  factory _$RegistrationInitResponse(
          [void Function(RegistrationInitResponseBuilder)? updates]) =>
      (RegistrationInitResponseBuilder()..update(updates))._build();

  _$RegistrationInitResponse._({this.status, this.msg, this.data}) : super._();
  @override
  RegistrationInitResponse rebuild(
          void Function(RegistrationInitResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationInitResponseBuilder toBuilder() =>
      RegistrationInitResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationInitResponse &&
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
    return (newBuiltValueToStringHelper(r'RegistrationInitResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class RegistrationInitResponseBuilder
    implements
        Builder<RegistrationInitResponse, RegistrationInitResponseBuilder> {
  _$RegistrationInitResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  RegistrationInitDataBuilder? _data;
  RegistrationInitDataBuilder get data =>
      _$this._data ??= RegistrationInitDataBuilder();
  set data(RegistrationInitDataBuilder? data) => _$this._data = data;

  RegistrationInitResponseBuilder() {
    RegistrationInitResponse._defaults(this);
  }

  RegistrationInitResponseBuilder get _$this {
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
  void replace(RegistrationInitResponse other) {
    _$v = other as _$RegistrationInitResponse;
  }

  @override
  void update(void Function(RegistrationInitResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationInitResponse build() => _build();

  _$RegistrationInitResponse _build() {
    _$RegistrationInitResponse _$result;
    try {
      _$result = _$v ??
          _$RegistrationInitResponse._(
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
            r'RegistrationInitResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

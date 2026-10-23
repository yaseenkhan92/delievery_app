// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_profile_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerProfileResponse extends ConsumerProfileResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final ConsumerProfileResponseData? data;

  factory _$ConsumerProfileResponse(
          [void Function(ConsumerProfileResponseBuilder)? updates]) =>
      (ConsumerProfileResponseBuilder()..update(updates))._build();

  _$ConsumerProfileResponse._({this.status, this.msg, this.data}) : super._();
  @override
  ConsumerProfileResponse rebuild(
          void Function(ConsumerProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerProfileResponseBuilder toBuilder() =>
      ConsumerProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerProfileResponse &&
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
    return (newBuiltValueToStringHelper(r'ConsumerProfileResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class ConsumerProfileResponseBuilder
    implements
        Builder<ConsumerProfileResponse, ConsumerProfileResponseBuilder> {
  _$ConsumerProfileResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ConsumerProfileResponseDataBuilder? _data;
  ConsumerProfileResponseDataBuilder get data =>
      _$this._data ??= ConsumerProfileResponseDataBuilder();
  set data(ConsumerProfileResponseDataBuilder? data) => _$this._data = data;

  ConsumerProfileResponseBuilder() {
    ConsumerProfileResponse._defaults(this);
  }

  ConsumerProfileResponseBuilder get _$this {
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
  void replace(ConsumerProfileResponse other) {
    _$v = other as _$ConsumerProfileResponse;
  }

  @override
  void update(void Function(ConsumerProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerProfileResponse build() => _build();

  _$ConsumerProfileResponse _build() {
    _$ConsumerProfileResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerProfileResponse._(
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
            r'ConsumerProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

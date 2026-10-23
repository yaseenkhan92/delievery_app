// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_profile_update_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerProfileUpdateResponse extends ConsumerProfileUpdateResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final ConsumerProfileUser? data;

  factory _$ConsumerProfileUpdateResponse(
          [void Function(ConsumerProfileUpdateResponseBuilder)? updates]) =>
      (ConsumerProfileUpdateResponseBuilder()..update(updates))._build();

  _$ConsumerProfileUpdateResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  ConsumerProfileUpdateResponse rebuild(
          void Function(ConsumerProfileUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerProfileUpdateResponseBuilder toBuilder() =>
      ConsumerProfileUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerProfileUpdateResponse &&
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
    return (newBuiltValueToStringHelper(r'ConsumerProfileUpdateResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class ConsumerProfileUpdateResponseBuilder
    implements
        Builder<ConsumerProfileUpdateResponse,
            ConsumerProfileUpdateResponseBuilder> {
  _$ConsumerProfileUpdateResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ConsumerProfileUser? _data;
  ConsumerProfileUser? get data => _$this._data;
  set data(ConsumerProfileUser? data) => _$this._data = data;

  ConsumerProfileUpdateResponseBuilder() {
    ConsumerProfileUpdateResponse._defaults(this);
  }

  ConsumerProfileUpdateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerProfileUpdateResponse other) {
    _$v = other as _$ConsumerProfileUpdateResponse;
  }

  @override
  void update(void Function(ConsumerProfileUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerProfileUpdateResponse build() => _build();

  _$ConsumerProfileUpdateResponse _build() {
    final _$result = _$v ??
        _$ConsumerProfileUpdateResponse._(
          status: status,
          msg: msg,
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

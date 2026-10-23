// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_guest_session_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerGuestSessionResponse extends ConsumerGuestSessionResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final String? guestId;
  @override
  final ConsumerGuestSessionData? data;

  factory _$ConsumerGuestSessionResponse(
          [void Function(ConsumerGuestSessionResponseBuilder)? updates]) =>
      (ConsumerGuestSessionResponseBuilder()..update(updates))._build();

  _$ConsumerGuestSessionResponse._(
      {this.status, this.msg, this.guestId, this.data})
      : super._();
  @override
  ConsumerGuestSessionResponse rebuild(
          void Function(ConsumerGuestSessionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerGuestSessionResponseBuilder toBuilder() =>
      ConsumerGuestSessionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerGuestSessionResponse &&
        status == other.status &&
        msg == other.msg &&
        guestId == other.guestId &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, guestId.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerGuestSessionResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('guestId', guestId)
          ..add('data', data))
        .toString();
  }
}

class ConsumerGuestSessionResponseBuilder
    implements
        Builder<ConsumerGuestSessionResponse,
            ConsumerGuestSessionResponseBuilder> {
  _$ConsumerGuestSessionResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _guestId;
  String? get guestId => _$this._guestId;
  set guestId(String? guestId) => _$this._guestId = guestId;

  ConsumerGuestSessionDataBuilder? _data;
  ConsumerGuestSessionDataBuilder get data =>
      _$this._data ??= ConsumerGuestSessionDataBuilder();
  set data(ConsumerGuestSessionDataBuilder? data) => _$this._data = data;

  ConsumerGuestSessionResponseBuilder() {
    ConsumerGuestSessionResponse._defaults(this);
  }

  ConsumerGuestSessionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _guestId = $v.guestId;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerGuestSessionResponse other) {
    _$v = other as _$ConsumerGuestSessionResponse;
  }

  @override
  void update(void Function(ConsumerGuestSessionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerGuestSessionResponse build() => _build();

  _$ConsumerGuestSessionResponse _build() {
    _$ConsumerGuestSessionResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerGuestSessionResponse._(
            status: status,
            msg: msg,
            guestId: guestId,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerGuestSessionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

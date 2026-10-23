// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_inbox_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationInboxListResponse extends NotificationInboxListResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final NotificationInboxPageData? data;

  factory _$NotificationInboxListResponse(
          [void Function(NotificationInboxListResponseBuilder)? updates]) =>
      (NotificationInboxListResponseBuilder()..update(updates))._build();

  _$NotificationInboxListResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  NotificationInboxListResponse rebuild(
          void Function(NotificationInboxListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationInboxListResponseBuilder toBuilder() =>
      NotificationInboxListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationInboxListResponse &&
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
    return (newBuiltValueToStringHelper(r'NotificationInboxListResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class NotificationInboxListResponseBuilder
    implements
        Builder<NotificationInboxListResponse,
            NotificationInboxListResponseBuilder> {
  _$NotificationInboxListResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  NotificationInboxPageDataBuilder? _data;
  NotificationInboxPageDataBuilder get data =>
      _$this._data ??= NotificationInboxPageDataBuilder();
  set data(NotificationInboxPageDataBuilder? data) => _$this._data = data;

  NotificationInboxListResponseBuilder() {
    NotificationInboxListResponse._defaults(this);
  }

  NotificationInboxListResponseBuilder get _$this {
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
  void replace(NotificationInboxListResponse other) {
    _$v = other as _$NotificationInboxListResponse;
  }

  @override
  void update(void Function(NotificationInboxListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationInboxListResponse build() => _build();

  _$NotificationInboxListResponse _build() {
    _$NotificationInboxListResponse _$result;
    try {
      _$result = _$v ??
          _$NotificationInboxListResponse._(
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
            r'NotificationInboxListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

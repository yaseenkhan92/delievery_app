// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_delete_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationDeleteResponse extends NotificationDeleteResponse {
  @override
  final bool? status;
  @override
  final String? msg;

  factory _$NotificationDeleteResponse(
          [void Function(NotificationDeleteResponseBuilder)? updates]) =>
      (NotificationDeleteResponseBuilder()..update(updates))._build();

  _$NotificationDeleteResponse._({this.status, this.msg}) : super._();
  @override
  NotificationDeleteResponse rebuild(
          void Function(NotificationDeleteResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationDeleteResponseBuilder toBuilder() =>
      NotificationDeleteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationDeleteResponse &&
        status == other.status &&
        msg == other.msg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationDeleteResponse')
          ..add('status', status)
          ..add('msg', msg))
        .toString();
  }
}

class NotificationDeleteResponseBuilder
    implements
        Builder<NotificationDeleteResponse, NotificationDeleteResponseBuilder> {
  _$NotificationDeleteResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  NotificationDeleteResponseBuilder() {
    NotificationDeleteResponse._defaults(this);
  }

  NotificationDeleteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationDeleteResponse other) {
    _$v = other as _$NotificationDeleteResponse;
  }

  @override
  void update(void Function(NotificationDeleteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationDeleteResponse build() => _build();

  _$NotificationDeleteResponse _build() {
    final _$result = _$v ??
        _$NotificationDeleteResponse._(
          status: status,
          msg: msg,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

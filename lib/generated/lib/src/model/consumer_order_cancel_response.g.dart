// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_order_cancel_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerOrderCancelResponse extends ConsumerOrderCancelResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final String? message;

  factory _$ConsumerOrderCancelResponse(
          [void Function(ConsumerOrderCancelResponseBuilder)? updates]) =>
      (ConsumerOrderCancelResponseBuilder()..update(updates))._build();

  _$ConsumerOrderCancelResponse._({this.status, this.msg, this.message})
      : super._();
  @override
  ConsumerOrderCancelResponse rebuild(
          void Function(ConsumerOrderCancelResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerOrderCancelResponseBuilder toBuilder() =>
      ConsumerOrderCancelResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerOrderCancelResponse &&
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
    return (newBuiltValueToStringHelper(r'ConsumerOrderCancelResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('message', message))
        .toString();
  }
}

class ConsumerOrderCancelResponseBuilder
    implements
        Builder<ConsumerOrderCancelResponse,
            ConsumerOrderCancelResponseBuilder> {
  _$ConsumerOrderCancelResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ConsumerOrderCancelResponseBuilder() {
    ConsumerOrderCancelResponse._defaults(this);
  }

  ConsumerOrderCancelResponseBuilder get _$this {
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
  void replace(ConsumerOrderCancelResponse other) {
    _$v = other as _$ConsumerOrderCancelResponse;
  }

  @override
  void update(void Function(ConsumerOrderCancelResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerOrderCancelResponse build() => _build();

  _$ConsumerOrderCancelResponse _build() {
    final _$result = _$v ??
        _$ConsumerOrderCancelResponse._(
          status: status,
          msg: msg,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

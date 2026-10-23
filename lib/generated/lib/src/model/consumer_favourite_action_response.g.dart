// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_favourite_action_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerFavouriteActionResponse
    extends ConsumerFavouriteActionResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final String? message;

  factory _$ConsumerFavouriteActionResponse(
          [void Function(ConsumerFavouriteActionResponseBuilder)? updates]) =>
      (ConsumerFavouriteActionResponseBuilder()..update(updates))._build();

  _$ConsumerFavouriteActionResponse._({this.status, this.msg, this.message})
      : super._();
  @override
  ConsumerFavouriteActionResponse rebuild(
          void Function(ConsumerFavouriteActionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerFavouriteActionResponseBuilder toBuilder() =>
      ConsumerFavouriteActionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerFavouriteActionResponse &&
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
    return (newBuiltValueToStringHelper(r'ConsumerFavouriteActionResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('message', message))
        .toString();
  }
}

class ConsumerFavouriteActionResponseBuilder
    implements
        Builder<ConsumerFavouriteActionResponse,
            ConsumerFavouriteActionResponseBuilder> {
  _$ConsumerFavouriteActionResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ConsumerFavouriteActionResponseBuilder() {
    ConsumerFavouriteActionResponse._defaults(this);
  }

  ConsumerFavouriteActionResponseBuilder get _$this {
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
  void replace(ConsumerFavouriteActionResponse other) {
    _$v = other as _$ConsumerFavouriteActionResponse;
  }

  @override
  void update(void Function(ConsumerFavouriteActionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerFavouriteActionResponse build() => _build();

  _$ConsumerFavouriteActionResponse _build() {
    final _$result = _$v ??
        _$ConsumerFavouriteActionResponse._(
          status: status,
          msg: msg,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

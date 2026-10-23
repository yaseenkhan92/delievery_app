// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_cart_clear_user_id_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerCartClearUserIdDelete200Response
    extends ConsumerCartClearUserIdDelete200Response {
  @override
  final bool? status;
  @override
  final String? msg;

  factory _$ConsumerCartClearUserIdDelete200Response(
          [void Function(ConsumerCartClearUserIdDelete200ResponseBuilder)?
              updates]) =>
      (ConsumerCartClearUserIdDelete200ResponseBuilder()..update(updates))
          ._build();

  _$ConsumerCartClearUserIdDelete200Response._({this.status, this.msg})
      : super._();
  @override
  ConsumerCartClearUserIdDelete200Response rebuild(
          void Function(ConsumerCartClearUserIdDelete200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerCartClearUserIdDelete200ResponseBuilder toBuilder() =>
      ConsumerCartClearUserIdDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerCartClearUserIdDelete200Response &&
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
    return (newBuiltValueToStringHelper(
            r'ConsumerCartClearUserIdDelete200Response')
          ..add('status', status)
          ..add('msg', msg))
        .toString();
  }
}

class ConsumerCartClearUserIdDelete200ResponseBuilder
    implements
        Builder<ConsumerCartClearUserIdDelete200Response,
            ConsumerCartClearUserIdDelete200ResponseBuilder> {
  _$ConsumerCartClearUserIdDelete200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ConsumerCartClearUserIdDelete200ResponseBuilder() {
    ConsumerCartClearUserIdDelete200Response._defaults(this);
  }

  ConsumerCartClearUserIdDelete200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerCartClearUserIdDelete200Response other) {
    _$v = other as _$ConsumerCartClearUserIdDelete200Response;
  }

  @override
  void update(
      void Function(ConsumerCartClearUserIdDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerCartClearUserIdDelete200Response build() => _build();

  _$ConsumerCartClearUserIdDelete200Response _build() {
    final _$result = _$v ??
        _$ConsumerCartClearUserIdDelete200Response._(
          status: status,
          msg: msg,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

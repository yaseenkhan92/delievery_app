// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_addresses_id_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerAddressesIdDelete200Response
    extends ConsumerAddressesIdDelete200Response {
  @override
  final bool? status;
  @override
  final String? msg;

  factory _$ConsumerAddressesIdDelete200Response(
          [void Function(ConsumerAddressesIdDelete200ResponseBuilder)?
              updates]) =>
      (ConsumerAddressesIdDelete200ResponseBuilder()..update(updates))._build();

  _$ConsumerAddressesIdDelete200Response._({this.status, this.msg}) : super._();
  @override
  ConsumerAddressesIdDelete200Response rebuild(
          void Function(ConsumerAddressesIdDelete200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerAddressesIdDelete200ResponseBuilder toBuilder() =>
      ConsumerAddressesIdDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerAddressesIdDelete200Response &&
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
    return (newBuiltValueToStringHelper(r'ConsumerAddressesIdDelete200Response')
          ..add('status', status)
          ..add('msg', msg))
        .toString();
  }
}

class ConsumerAddressesIdDelete200ResponseBuilder
    implements
        Builder<ConsumerAddressesIdDelete200Response,
            ConsumerAddressesIdDelete200ResponseBuilder> {
  _$ConsumerAddressesIdDelete200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ConsumerAddressesIdDelete200ResponseBuilder() {
    ConsumerAddressesIdDelete200Response._defaults(this);
  }

  ConsumerAddressesIdDelete200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerAddressesIdDelete200Response other) {
    _$v = other as _$ConsumerAddressesIdDelete200Response;
  }

  @override
  void update(
      void Function(ConsumerAddressesIdDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerAddressesIdDelete200Response build() => _build();

  _$ConsumerAddressesIdDelete200Response _build() {
    final _$result = _$v ??
        _$ConsumerAddressesIdDelete200Response._(
          status: status,
          msg: msg,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

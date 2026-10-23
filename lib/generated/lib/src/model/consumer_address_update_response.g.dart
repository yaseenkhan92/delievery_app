// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_address_update_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerAddressUpdateResponse extends ConsumerAddressUpdateResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final ConsumerAddress? data;

  factory _$ConsumerAddressUpdateResponse(
          [void Function(ConsumerAddressUpdateResponseBuilder)? updates]) =>
      (ConsumerAddressUpdateResponseBuilder()..update(updates))._build();

  _$ConsumerAddressUpdateResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  ConsumerAddressUpdateResponse rebuild(
          void Function(ConsumerAddressUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerAddressUpdateResponseBuilder toBuilder() =>
      ConsumerAddressUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerAddressUpdateResponse &&
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
    return (newBuiltValueToStringHelper(r'ConsumerAddressUpdateResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class ConsumerAddressUpdateResponseBuilder
    implements
        Builder<ConsumerAddressUpdateResponse,
            ConsumerAddressUpdateResponseBuilder> {
  _$ConsumerAddressUpdateResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ConsumerAddressBuilder? _data;
  ConsumerAddressBuilder get data => _$this._data ??= ConsumerAddressBuilder();
  set data(ConsumerAddressBuilder? data) => _$this._data = data;

  ConsumerAddressUpdateResponseBuilder() {
    ConsumerAddressUpdateResponse._defaults(this);
  }

  ConsumerAddressUpdateResponseBuilder get _$this {
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
  void replace(ConsumerAddressUpdateResponse other) {
    _$v = other as _$ConsumerAddressUpdateResponse;
  }

  @override
  void update(void Function(ConsumerAddressUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerAddressUpdateResponse build() => _build();

  _$ConsumerAddressUpdateResponse _build() {
    _$ConsumerAddressUpdateResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerAddressUpdateResponse._(
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
            r'ConsumerAddressUpdateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

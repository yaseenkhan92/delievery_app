// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_address_create_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerAddressCreateResponse extends ConsumerAddressCreateResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final ConsumerAddress? data;
  @override
  final BuiltList<int>? zoneIds;

  factory _$ConsumerAddressCreateResponse(
          [void Function(ConsumerAddressCreateResponseBuilder)? updates]) =>
      (ConsumerAddressCreateResponseBuilder()..update(updates))._build();

  _$ConsumerAddressCreateResponse._(
      {this.status, this.msg, this.data, this.zoneIds})
      : super._();
  @override
  ConsumerAddressCreateResponse rebuild(
          void Function(ConsumerAddressCreateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerAddressCreateResponseBuilder toBuilder() =>
      ConsumerAddressCreateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerAddressCreateResponse &&
        status == other.status &&
        msg == other.msg &&
        data == other.data &&
        zoneIds == other.zoneIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, zoneIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerAddressCreateResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data)
          ..add('zoneIds', zoneIds))
        .toString();
  }
}

class ConsumerAddressCreateResponseBuilder
    implements
        Builder<ConsumerAddressCreateResponse,
            ConsumerAddressCreateResponseBuilder> {
  _$ConsumerAddressCreateResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ConsumerAddressBuilder? _data;
  ConsumerAddressBuilder get data => _$this._data ??= ConsumerAddressBuilder();
  set data(ConsumerAddressBuilder? data) => _$this._data = data;

  ListBuilder<int>? _zoneIds;
  ListBuilder<int> get zoneIds => _$this._zoneIds ??= ListBuilder<int>();
  set zoneIds(ListBuilder<int>? zoneIds) => _$this._zoneIds = zoneIds;

  ConsumerAddressCreateResponseBuilder() {
    ConsumerAddressCreateResponse._defaults(this);
  }

  ConsumerAddressCreateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _data = $v.data?.toBuilder();
      _zoneIds = $v.zoneIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerAddressCreateResponse other) {
    _$v = other as _$ConsumerAddressCreateResponse;
  }

  @override
  void update(void Function(ConsumerAddressCreateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerAddressCreateResponse build() => _build();

  _$ConsumerAddressCreateResponse _build() {
    _$ConsumerAddressCreateResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerAddressCreateResponse._(
            status: status,
            msg: msg,
            data: _data?.build(),
            zoneIds: _zoneIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'zoneIds';
        _zoneIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerAddressCreateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

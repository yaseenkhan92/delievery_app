// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_address_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerAddressListResponse extends ConsumerAddressListResponse {
  @override
  final bool? status;
  @override
  final ConsumerAddressListResponseData? data;

  factory _$ConsumerAddressListResponse(
          [void Function(ConsumerAddressListResponseBuilder)? updates]) =>
      (ConsumerAddressListResponseBuilder()..update(updates))._build();

  _$ConsumerAddressListResponse._({this.status, this.data}) : super._();
  @override
  ConsumerAddressListResponse rebuild(
          void Function(ConsumerAddressListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerAddressListResponseBuilder toBuilder() =>
      ConsumerAddressListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerAddressListResponse &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerAddressListResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class ConsumerAddressListResponseBuilder
    implements
        Builder<ConsumerAddressListResponse,
            ConsumerAddressListResponseBuilder> {
  _$ConsumerAddressListResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ConsumerAddressListResponseDataBuilder? _data;
  ConsumerAddressListResponseDataBuilder get data =>
      _$this._data ??= ConsumerAddressListResponseDataBuilder();
  set data(ConsumerAddressListResponseDataBuilder? data) => _$this._data = data;

  ConsumerAddressListResponseBuilder() {
    ConsumerAddressListResponse._defaults(this);
  }

  ConsumerAddressListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerAddressListResponse other) {
    _$v = other as _$ConsumerAddressListResponse;
  }

  @override
  void update(void Function(ConsumerAddressListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerAddressListResponse build() => _build();

  _$ConsumerAddressListResponse _build() {
    _$ConsumerAddressListResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerAddressListResponse._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerAddressListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_pos_order_history_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorPosOrderHistoryResponse extends VendorPosOrderHistoryResponse {
  @override
  final bool? status;
  @override
  final VendorPosOrderHistoryResponseData? data;

  factory _$VendorPosOrderHistoryResponse(
          [void Function(VendorPosOrderHistoryResponseBuilder)? updates]) =>
      (VendorPosOrderHistoryResponseBuilder()..update(updates))._build();

  _$VendorPosOrderHistoryResponse._({this.status, this.data}) : super._();
  @override
  VendorPosOrderHistoryResponse rebuild(
          void Function(VendorPosOrderHistoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorPosOrderHistoryResponseBuilder toBuilder() =>
      VendorPosOrderHistoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorPosOrderHistoryResponse &&
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
    return (newBuiltValueToStringHelper(r'VendorPosOrderHistoryResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class VendorPosOrderHistoryResponseBuilder
    implements
        Builder<VendorPosOrderHistoryResponse,
            VendorPosOrderHistoryResponseBuilder> {
  _$VendorPosOrderHistoryResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  VendorPosOrderHistoryResponseDataBuilder? _data;
  VendorPosOrderHistoryResponseDataBuilder get data =>
      _$this._data ??= VendorPosOrderHistoryResponseDataBuilder();
  set data(VendorPosOrderHistoryResponseDataBuilder? data) =>
      _$this._data = data;

  VendorPosOrderHistoryResponseBuilder() {
    VendorPosOrderHistoryResponse._defaults(this);
  }

  VendorPosOrderHistoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorPosOrderHistoryResponse other) {
    _$v = other as _$VendorPosOrderHistoryResponse;
  }

  @override
  void update(void Function(VendorPosOrderHistoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorPosOrderHistoryResponse build() => _build();

  _$VendorPosOrderHistoryResponse _build() {
    _$VendorPosOrderHistoryResponse _$result;
    try {
      _$result = _$v ??
          _$VendorPosOrderHistoryResponse._(
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
            r'VendorPosOrderHistoryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_order_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorOrderListResponse extends VendorOrderListResponse {
  @override
  final bool? status;
  @override
  final VendorOrderListResponseData? data;

  factory _$VendorOrderListResponse(
          [void Function(VendorOrderListResponseBuilder)? updates]) =>
      (VendorOrderListResponseBuilder()..update(updates))._build();

  _$VendorOrderListResponse._({this.status, this.data}) : super._();
  @override
  VendorOrderListResponse rebuild(
          void Function(VendorOrderListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorOrderListResponseBuilder toBuilder() =>
      VendorOrderListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorOrderListResponse &&
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
    return (newBuiltValueToStringHelper(r'VendorOrderListResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class VendorOrderListResponseBuilder
    implements
        Builder<VendorOrderListResponse, VendorOrderListResponseBuilder> {
  _$VendorOrderListResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  VendorOrderListResponseDataBuilder? _data;
  VendorOrderListResponseDataBuilder get data =>
      _$this._data ??= VendorOrderListResponseDataBuilder();
  set data(VendorOrderListResponseDataBuilder? data) => _$this._data = data;

  VendorOrderListResponseBuilder() {
    VendorOrderListResponse._defaults(this);
  }

  VendorOrderListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorOrderListResponse other) {
    _$v = other as _$VendorOrderListResponse;
  }

  @override
  void update(void Function(VendorOrderListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorOrderListResponse build() => _build();

  _$VendorOrderListResponse _build() {
    _$VendorOrderListResponse _$result;
    try {
      _$result = _$v ??
          _$VendorOrderListResponse._(
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
            r'VendorOrderListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_order_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorOrderDetailResponse extends VendorOrderDetailResponse {
  @override
  final bool? status;
  @override
  final VendorOrderDetail? data;

  factory _$VendorOrderDetailResponse(
          [void Function(VendorOrderDetailResponseBuilder)? updates]) =>
      (VendorOrderDetailResponseBuilder()..update(updates))._build();

  _$VendorOrderDetailResponse._({this.status, this.data}) : super._();
  @override
  VendorOrderDetailResponse rebuild(
          void Function(VendorOrderDetailResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorOrderDetailResponseBuilder toBuilder() =>
      VendorOrderDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorOrderDetailResponse &&
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
    return (newBuiltValueToStringHelper(r'VendorOrderDetailResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class VendorOrderDetailResponseBuilder
    implements
        Builder<VendorOrderDetailResponse, VendorOrderDetailResponseBuilder> {
  _$VendorOrderDetailResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  VendorOrderDetailBuilder? _data;
  VendorOrderDetailBuilder get data =>
      _$this._data ??= VendorOrderDetailBuilder();
  set data(VendorOrderDetailBuilder? data) => _$this._data = data;

  VendorOrderDetailResponseBuilder() {
    VendorOrderDetailResponse._defaults(this);
  }

  VendorOrderDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorOrderDetailResponse other) {
    _$v = other as _$VendorOrderDetailResponse;
  }

  @override
  void update(void Function(VendorOrderDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorOrderDetailResponse build() => _build();

  _$VendorOrderDetailResponse _build() {
    _$VendorOrderDetailResponse _$result;
    try {
      _$result = _$v ??
          _$VendorOrderDetailResponse._(
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
            r'VendorOrderDetailResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

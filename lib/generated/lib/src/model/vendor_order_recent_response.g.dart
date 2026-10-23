// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_order_recent_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorOrderRecentResponse extends VendorOrderRecentResponse {
  @override
  final bool? status;
  @override
  final VendorOrderRecentResponseData? data;

  factory _$VendorOrderRecentResponse(
          [void Function(VendorOrderRecentResponseBuilder)? updates]) =>
      (VendorOrderRecentResponseBuilder()..update(updates))._build();

  _$VendorOrderRecentResponse._({this.status, this.data}) : super._();
  @override
  VendorOrderRecentResponse rebuild(
          void Function(VendorOrderRecentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorOrderRecentResponseBuilder toBuilder() =>
      VendorOrderRecentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorOrderRecentResponse &&
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
    return (newBuiltValueToStringHelper(r'VendorOrderRecentResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class VendorOrderRecentResponseBuilder
    implements
        Builder<VendorOrderRecentResponse, VendorOrderRecentResponseBuilder> {
  _$VendorOrderRecentResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  VendorOrderRecentResponseDataBuilder? _data;
  VendorOrderRecentResponseDataBuilder get data =>
      _$this._data ??= VendorOrderRecentResponseDataBuilder();
  set data(VendorOrderRecentResponseDataBuilder? data) => _$this._data = data;

  VendorOrderRecentResponseBuilder() {
    VendorOrderRecentResponse._defaults(this);
  }

  VendorOrderRecentResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorOrderRecentResponse other) {
    _$v = other as _$VendorOrderRecentResponse;
  }

  @override
  void update(void Function(VendorOrderRecentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorOrderRecentResponse build() => _build();

  _$VendorOrderRecentResponse _build() {
    _$VendorOrderRecentResponse _$result;
    try {
      _$result = _$v ??
          _$VendorOrderRecentResponse._(
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
            r'VendorOrderRecentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

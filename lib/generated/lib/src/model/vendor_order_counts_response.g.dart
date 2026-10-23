// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_order_counts_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorOrderCountsResponse extends VendorOrderCountsResponse {
  @override
  final bool? status;
  @override
  final BuiltMap<String, int>? data;

  factory _$VendorOrderCountsResponse(
          [void Function(VendorOrderCountsResponseBuilder)? updates]) =>
      (VendorOrderCountsResponseBuilder()..update(updates))._build();

  _$VendorOrderCountsResponse._({this.status, this.data}) : super._();
  @override
  VendorOrderCountsResponse rebuild(
          void Function(VendorOrderCountsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorOrderCountsResponseBuilder toBuilder() =>
      VendorOrderCountsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorOrderCountsResponse &&
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
    return (newBuiltValueToStringHelper(r'VendorOrderCountsResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class VendorOrderCountsResponseBuilder
    implements
        Builder<VendorOrderCountsResponse, VendorOrderCountsResponseBuilder> {
  _$VendorOrderCountsResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  MapBuilder<String, int>? _data;
  MapBuilder<String, int> get data =>
      _$this._data ??= MapBuilder<String, int>();
  set data(MapBuilder<String, int>? data) => _$this._data = data;

  VendorOrderCountsResponseBuilder() {
    VendorOrderCountsResponse._defaults(this);
  }

  VendorOrderCountsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorOrderCountsResponse other) {
    _$v = other as _$VendorOrderCountsResponse;
  }

  @override
  void update(void Function(VendorOrderCountsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorOrderCountsResponse build() => _build();

  _$VendorOrderCountsResponse _build() {
    _$VendorOrderCountsResponse _$result;
    try {
      _$result = _$v ??
          _$VendorOrderCountsResponse._(
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
            r'VendorOrderCountsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

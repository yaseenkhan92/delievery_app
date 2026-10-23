// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_order_status_update_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorOrderStatusUpdateResponse
    extends VendorOrderStatusUpdateResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final VendorOrderSummary? data;

  factory _$VendorOrderStatusUpdateResponse(
          [void Function(VendorOrderStatusUpdateResponseBuilder)? updates]) =>
      (VendorOrderStatusUpdateResponseBuilder()..update(updates))._build();

  _$VendorOrderStatusUpdateResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  VendorOrderStatusUpdateResponse rebuild(
          void Function(VendorOrderStatusUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorOrderStatusUpdateResponseBuilder toBuilder() =>
      VendorOrderStatusUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorOrderStatusUpdateResponse &&
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
    return (newBuiltValueToStringHelper(r'VendorOrderStatusUpdateResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class VendorOrderStatusUpdateResponseBuilder
    implements
        Builder<VendorOrderStatusUpdateResponse,
            VendorOrderStatusUpdateResponseBuilder> {
  _$VendorOrderStatusUpdateResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  VendorOrderSummary? _data;
  VendorOrderSummary? get data => _$this._data;
  set data(VendorOrderSummary? data) => _$this._data = data;

  VendorOrderStatusUpdateResponseBuilder() {
    VendorOrderStatusUpdateResponse._defaults(this);
  }

  VendorOrderStatusUpdateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorOrderStatusUpdateResponse other) {
    _$v = other as _$VendorOrderStatusUpdateResponse;
  }

  @override
  void update(void Function(VendorOrderStatusUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorOrderStatusUpdateResponse build() => _build();

  _$VendorOrderStatusUpdateResponse _build() {
    final _$result = _$v ??
        _$VendorOrderStatusUpdateResponse._(
          status: status,
          msg: msg,
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

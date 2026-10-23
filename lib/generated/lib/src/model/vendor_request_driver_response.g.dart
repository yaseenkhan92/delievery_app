// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_request_driver_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRequestDriverResponse extends VendorRequestDriverResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final VendorRequestDriverResponseData? data;

  factory _$VendorRequestDriverResponse(
          [void Function(VendorRequestDriverResponseBuilder)? updates]) =>
      (VendorRequestDriverResponseBuilder()..update(updates))._build();

  _$VendorRequestDriverResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  VendorRequestDriverResponse rebuild(
          void Function(VendorRequestDriverResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRequestDriverResponseBuilder toBuilder() =>
      VendorRequestDriverResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRequestDriverResponse &&
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
    return (newBuiltValueToStringHelper(r'VendorRequestDriverResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class VendorRequestDriverResponseBuilder
    implements
        Builder<VendorRequestDriverResponse,
            VendorRequestDriverResponseBuilder> {
  _$VendorRequestDriverResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  VendorRequestDriverResponseDataBuilder? _data;
  VendorRequestDriverResponseDataBuilder get data =>
      _$this._data ??= VendorRequestDriverResponseDataBuilder();
  set data(VendorRequestDriverResponseDataBuilder? data) => _$this._data = data;

  VendorRequestDriverResponseBuilder() {
    VendorRequestDriverResponse._defaults(this);
  }

  VendorRequestDriverResponseBuilder get _$this {
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
  void replace(VendorRequestDriverResponse other) {
    _$v = other as _$VendorRequestDriverResponse;
  }

  @override
  void update(void Function(VendorRequestDriverResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRequestDriverResponse build() => _build();

  _$VendorRequestDriverResponse _build() {
    _$VendorRequestDriverResponse _$result;
    try {
      _$result = _$v ??
          _$VendorRequestDriverResponse._(
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
            r'VendorRequestDriverResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_whoami_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorWhoamiResponse extends VendorWhoamiResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final VendorWhoamiData? data;

  factory _$VendorWhoamiResponse(
          [void Function(VendorWhoamiResponseBuilder)? updates]) =>
      (VendorWhoamiResponseBuilder()..update(updates))._build();

  _$VendorWhoamiResponse._({this.status, this.msg, this.data}) : super._();
  @override
  VendorWhoamiResponse rebuild(
          void Function(VendorWhoamiResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorWhoamiResponseBuilder toBuilder() =>
      VendorWhoamiResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorWhoamiResponse &&
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
    return (newBuiltValueToStringHelper(r'VendorWhoamiResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class VendorWhoamiResponseBuilder
    implements Builder<VendorWhoamiResponse, VendorWhoamiResponseBuilder> {
  _$VendorWhoamiResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  VendorWhoamiDataBuilder? _data;
  VendorWhoamiDataBuilder get data =>
      _$this._data ??= VendorWhoamiDataBuilder();
  set data(VendorWhoamiDataBuilder? data) => _$this._data = data;

  VendorWhoamiResponseBuilder() {
    VendorWhoamiResponse._defaults(this);
  }

  VendorWhoamiResponseBuilder get _$this {
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
  void replace(VendorWhoamiResponse other) {
    _$v = other as _$VendorWhoamiResponse;
  }

  @override
  void update(void Function(VendorWhoamiResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorWhoamiResponse build() => _build();

  _$VendorWhoamiResponse _build() {
    _$VendorWhoamiResponse _$result;
    try {
      _$result = _$v ??
          _$VendorWhoamiResponse._(
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
            r'VendorWhoamiResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

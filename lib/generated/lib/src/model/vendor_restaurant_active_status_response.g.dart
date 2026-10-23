// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_active_status_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantActiveStatusResponse
    extends VendorRestaurantActiveStatusResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final VendorRestaurantActiveStatusResponseData? data;

  factory _$VendorRestaurantActiveStatusResponse(
          [void Function(VendorRestaurantActiveStatusResponseBuilder)?
              updates]) =>
      (VendorRestaurantActiveStatusResponseBuilder()..update(updates))._build();

  _$VendorRestaurantActiveStatusResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  VendorRestaurantActiveStatusResponse rebuild(
          void Function(VendorRestaurantActiveStatusResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantActiveStatusResponseBuilder toBuilder() =>
      VendorRestaurantActiveStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantActiveStatusResponse &&
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
    return (newBuiltValueToStringHelper(r'VendorRestaurantActiveStatusResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class VendorRestaurantActiveStatusResponseBuilder
    implements
        Builder<VendorRestaurantActiveStatusResponse,
            VendorRestaurantActiveStatusResponseBuilder> {
  _$VendorRestaurantActiveStatusResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  VendorRestaurantActiveStatusResponseDataBuilder? _data;
  VendorRestaurantActiveStatusResponseDataBuilder get data =>
      _$this._data ??= VendorRestaurantActiveStatusResponseDataBuilder();
  set data(VendorRestaurantActiveStatusResponseDataBuilder? data) =>
      _$this._data = data;

  VendorRestaurantActiveStatusResponseBuilder() {
    VendorRestaurantActiveStatusResponse._defaults(this);
  }

  VendorRestaurantActiveStatusResponseBuilder get _$this {
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
  void replace(VendorRestaurantActiveStatusResponse other) {
    _$v = other as _$VendorRestaurantActiveStatusResponse;
  }

  @override
  void update(
      void Function(VendorRestaurantActiveStatusResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantActiveStatusResponse build() => _build();

  _$VendorRestaurantActiveStatusResponse _build() {
    _$VendorRestaurantActiveStatusResponse _$result;
    try {
      _$result = _$v ??
          _$VendorRestaurantActiveStatusResponse._(
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
            r'VendorRestaurantActiveStatusResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

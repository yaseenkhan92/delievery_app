// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_setup_get_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantSetupGetResponse
    extends VendorRestaurantSetupGetResponse {
  @override
  final bool? status;
  @override
  final VendorRestaurantSetupPayload? data;

  factory _$VendorRestaurantSetupGetResponse(
          [void Function(VendorRestaurantSetupGetResponseBuilder)? updates]) =>
      (VendorRestaurantSetupGetResponseBuilder()..update(updates))._build();

  _$VendorRestaurantSetupGetResponse._({this.status, this.data}) : super._();
  @override
  VendorRestaurantSetupGetResponse rebuild(
          void Function(VendorRestaurantSetupGetResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantSetupGetResponseBuilder toBuilder() =>
      VendorRestaurantSetupGetResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantSetupGetResponse &&
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
    return (newBuiltValueToStringHelper(r'VendorRestaurantSetupGetResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class VendorRestaurantSetupGetResponseBuilder
    implements
        Builder<VendorRestaurantSetupGetResponse,
            VendorRestaurantSetupGetResponseBuilder> {
  _$VendorRestaurantSetupGetResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  VendorRestaurantSetupPayloadBuilder? _data;
  VendorRestaurantSetupPayloadBuilder get data =>
      _$this._data ??= VendorRestaurantSetupPayloadBuilder();
  set data(VendorRestaurantSetupPayloadBuilder? data) => _$this._data = data;

  VendorRestaurantSetupGetResponseBuilder() {
    VendorRestaurantSetupGetResponse._defaults(this);
  }

  VendorRestaurantSetupGetResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantSetupGetResponse other) {
    _$v = other as _$VendorRestaurantSetupGetResponse;
  }

  @override
  void update(void Function(VendorRestaurantSetupGetResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantSetupGetResponse build() => _build();

  _$VendorRestaurantSetupGetResponse _build() {
    _$VendorRestaurantSetupGetResponse _$result;
    try {
      _$result = _$v ??
          _$VendorRestaurantSetupGetResponse._(
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
            r'VendorRestaurantSetupGetResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

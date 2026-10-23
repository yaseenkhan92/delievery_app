// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_setup_mutation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantSetupMutationResponse
    extends VendorRestaurantSetupMutationResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final VendorRestaurantSetupPayload? data;

  factory _$VendorRestaurantSetupMutationResponse(
          [void Function(VendorRestaurantSetupMutationResponseBuilder)?
              updates]) =>
      (VendorRestaurantSetupMutationResponseBuilder()..update(updates))
          ._build();

  _$VendorRestaurantSetupMutationResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  VendorRestaurantSetupMutationResponse rebuild(
          void Function(VendorRestaurantSetupMutationResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantSetupMutationResponseBuilder toBuilder() =>
      VendorRestaurantSetupMutationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantSetupMutationResponse &&
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
    return (newBuiltValueToStringHelper(
            r'VendorRestaurantSetupMutationResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class VendorRestaurantSetupMutationResponseBuilder
    implements
        Builder<VendorRestaurantSetupMutationResponse,
            VendorRestaurantSetupMutationResponseBuilder> {
  _$VendorRestaurantSetupMutationResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  VendorRestaurantSetupPayloadBuilder? _data;
  VendorRestaurantSetupPayloadBuilder get data =>
      _$this._data ??= VendorRestaurantSetupPayloadBuilder();
  set data(VendorRestaurantSetupPayloadBuilder? data) => _$this._data = data;

  VendorRestaurantSetupMutationResponseBuilder() {
    VendorRestaurantSetupMutationResponse._defaults(this);
  }

  VendorRestaurantSetupMutationResponseBuilder get _$this {
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
  void replace(VendorRestaurantSetupMutationResponse other) {
    _$v = other as _$VendorRestaurantSetupMutationResponse;
  }

  @override
  void update(
      void Function(VendorRestaurantSetupMutationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantSetupMutationResponse build() => _build();

  _$VendorRestaurantSetupMutationResponse _build() {
    _$VendorRestaurantSetupMutationResponse _$result;
    try {
      _$result = _$v ??
          _$VendorRestaurantSetupMutationResponse._(
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
            r'VendorRestaurantSetupMutationResponse',
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

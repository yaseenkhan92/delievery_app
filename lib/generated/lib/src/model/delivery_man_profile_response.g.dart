// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_profile_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManProfileResponse extends DeliveryManProfileResponse {
  @override
  final bool? status;
  @override
  final DeliveryManProfileData? data;

  factory _$DeliveryManProfileResponse(
          [void Function(DeliveryManProfileResponseBuilder)? updates]) =>
      (DeliveryManProfileResponseBuilder()..update(updates))._build();

  _$DeliveryManProfileResponse._({this.status, this.data}) : super._();
  @override
  DeliveryManProfileResponse rebuild(
          void Function(DeliveryManProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManProfileResponseBuilder toBuilder() =>
      DeliveryManProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManProfileResponse &&
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
    return (newBuiltValueToStringHelper(r'DeliveryManProfileResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class DeliveryManProfileResponseBuilder
    implements
        Builder<DeliveryManProfileResponse, DeliveryManProfileResponseBuilder> {
  _$DeliveryManProfileResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  DeliveryManProfileDataBuilder? _data;
  DeliveryManProfileDataBuilder get data =>
      _$this._data ??= DeliveryManProfileDataBuilder();
  set data(DeliveryManProfileDataBuilder? data) => _$this._data = data;

  DeliveryManProfileResponseBuilder() {
    DeliveryManProfileResponse._defaults(this);
  }

  DeliveryManProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManProfileResponse other) {
    _$v = other as _$DeliveryManProfileResponse;
  }

  @override
  void update(void Function(DeliveryManProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManProfileResponse build() => _build();

  _$DeliveryManProfileResponse _build() {
    _$DeliveryManProfileResponse _$result;
    try {
      _$result = _$v ??
          _$DeliveryManProfileResponse._(
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
            r'DeliveryManProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

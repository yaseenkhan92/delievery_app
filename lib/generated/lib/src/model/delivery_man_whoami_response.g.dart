// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_whoami_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManWhoamiResponse extends DeliveryManWhoamiResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final DeliveryManProfileData? data;

  factory _$DeliveryManWhoamiResponse(
          [void Function(DeliveryManWhoamiResponseBuilder)? updates]) =>
      (DeliveryManWhoamiResponseBuilder()..update(updates))._build();

  _$DeliveryManWhoamiResponse._({this.status, this.msg, this.data}) : super._();
  @override
  DeliveryManWhoamiResponse rebuild(
          void Function(DeliveryManWhoamiResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManWhoamiResponseBuilder toBuilder() =>
      DeliveryManWhoamiResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManWhoamiResponse &&
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
    return (newBuiltValueToStringHelper(r'DeliveryManWhoamiResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class DeliveryManWhoamiResponseBuilder
    implements
        Builder<DeliveryManWhoamiResponse, DeliveryManWhoamiResponseBuilder> {
  _$DeliveryManWhoamiResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  DeliveryManProfileDataBuilder? _data;
  DeliveryManProfileDataBuilder get data =>
      _$this._data ??= DeliveryManProfileDataBuilder();
  set data(DeliveryManProfileDataBuilder? data) => _$this._data = data;

  DeliveryManWhoamiResponseBuilder() {
    DeliveryManWhoamiResponse._defaults(this);
  }

  DeliveryManWhoamiResponseBuilder get _$this {
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
  void replace(DeliveryManWhoamiResponse other) {
    _$v = other as _$DeliveryManWhoamiResponse;
  }

  @override
  void update(void Function(DeliveryManWhoamiResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManWhoamiResponse build() => _build();

  _$DeliveryManWhoamiResponse _build() {
    _$DeliveryManWhoamiResponse _$result;
    try {
      _$result = _$v ??
          _$DeliveryManWhoamiResponse._(
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
            r'DeliveryManWhoamiResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

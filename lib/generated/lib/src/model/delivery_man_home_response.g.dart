// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_home_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManHomeResponse extends DeliveryManHomeResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final DeliveryManHomeResponseData? data;

  factory _$DeliveryManHomeResponse(
          [void Function(DeliveryManHomeResponseBuilder)? updates]) =>
      (DeliveryManHomeResponseBuilder()..update(updates))._build();

  _$DeliveryManHomeResponse._({this.status, this.msg, this.data}) : super._();
  @override
  DeliveryManHomeResponse rebuild(
          void Function(DeliveryManHomeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManHomeResponseBuilder toBuilder() =>
      DeliveryManHomeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManHomeResponse &&
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
    return (newBuiltValueToStringHelper(r'DeliveryManHomeResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class DeliveryManHomeResponseBuilder
    implements
        Builder<DeliveryManHomeResponse, DeliveryManHomeResponseBuilder> {
  _$DeliveryManHomeResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  DeliveryManHomeResponseDataBuilder? _data;
  DeliveryManHomeResponseDataBuilder get data =>
      _$this._data ??= DeliveryManHomeResponseDataBuilder();
  set data(DeliveryManHomeResponseDataBuilder? data) => _$this._data = data;

  DeliveryManHomeResponseBuilder() {
    DeliveryManHomeResponse._defaults(this);
  }

  DeliveryManHomeResponseBuilder get _$this {
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
  void replace(DeliveryManHomeResponse other) {
    _$v = other as _$DeliveryManHomeResponse;
  }

  @override
  void update(void Function(DeliveryManHomeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManHomeResponse build() => _build();

  _$DeliveryManHomeResponse _build() {
    _$DeliveryManHomeResponse _$result;
    try {
      _$result = _$v ??
          _$DeliveryManHomeResponse._(
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
            r'DeliveryManHomeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

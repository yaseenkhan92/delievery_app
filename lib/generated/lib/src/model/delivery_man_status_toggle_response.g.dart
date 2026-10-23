// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_status_toggle_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManStatusToggleResponse
    extends DeliveryManStatusToggleResponse {
  @override
  final bool? status;
  @override
  final String? msg;

  factory _$DeliveryManStatusToggleResponse(
          [void Function(DeliveryManStatusToggleResponseBuilder)? updates]) =>
      (DeliveryManStatusToggleResponseBuilder()..update(updates))._build();

  _$DeliveryManStatusToggleResponse._({this.status, this.msg}) : super._();
  @override
  DeliveryManStatusToggleResponse rebuild(
          void Function(DeliveryManStatusToggleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManStatusToggleResponseBuilder toBuilder() =>
      DeliveryManStatusToggleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManStatusToggleResponse &&
        status == other.status &&
        msg == other.msg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManStatusToggleResponse')
          ..add('status', status)
          ..add('msg', msg))
        .toString();
  }
}

class DeliveryManStatusToggleResponseBuilder
    implements
        Builder<DeliveryManStatusToggleResponse,
            DeliveryManStatusToggleResponseBuilder> {
  _$DeliveryManStatusToggleResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  DeliveryManStatusToggleResponseBuilder() {
    DeliveryManStatusToggleResponse._defaults(this);
  }

  DeliveryManStatusToggleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManStatusToggleResponse other) {
    _$v = other as _$DeliveryManStatusToggleResponse;
  }

  @override
  void update(void Function(DeliveryManStatusToggleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManStatusToggleResponse build() => _build();

  _$DeliveryManStatusToggleResponse _build() {
    final _$result = _$v ??
        _$DeliveryManStatusToggleResponse._(
          status: status,
          msg: msg,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

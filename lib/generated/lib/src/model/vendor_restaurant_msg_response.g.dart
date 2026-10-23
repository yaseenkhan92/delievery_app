// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_msg_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantMsgResponse extends VendorRestaurantMsgResponse {
  @override
  final bool? status;
  @override
  final String? msg;

  factory _$VendorRestaurantMsgResponse(
          [void Function(VendorRestaurantMsgResponseBuilder)? updates]) =>
      (VendorRestaurantMsgResponseBuilder()..update(updates))._build();

  _$VendorRestaurantMsgResponse._({this.status, this.msg}) : super._();
  @override
  VendorRestaurantMsgResponse rebuild(
          void Function(VendorRestaurantMsgResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantMsgResponseBuilder toBuilder() =>
      VendorRestaurantMsgResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantMsgResponse &&
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
    return (newBuiltValueToStringHelper(r'VendorRestaurantMsgResponse')
          ..add('status', status)
          ..add('msg', msg))
        .toString();
  }
}

class VendorRestaurantMsgResponseBuilder
    implements
        Builder<VendorRestaurantMsgResponse,
            VendorRestaurantMsgResponseBuilder> {
  _$VendorRestaurantMsgResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  VendorRestaurantMsgResponseBuilder() {
    VendorRestaurantMsgResponse._defaults(this);
  }

  VendorRestaurantMsgResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantMsgResponse other) {
    _$v = other as _$VendorRestaurantMsgResponse;
  }

  @override
  void update(void Function(VendorRestaurantMsgResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantMsgResponse build() => _build();

  _$VendorRestaurantMsgResponse _build() {
    final _$result = _$v ??
        _$VendorRestaurantMsgResponse._(
          status: status,
          msg: msg,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

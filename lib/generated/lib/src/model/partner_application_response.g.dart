// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_application_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PartnerApplicationResponse extends PartnerApplicationResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final PartnerApplicationResponseData? data;

  factory _$PartnerApplicationResponse(
          [void Function(PartnerApplicationResponseBuilder)? updates]) =>
      (PartnerApplicationResponseBuilder()..update(updates))._build();

  _$PartnerApplicationResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  PartnerApplicationResponse rebuild(
          void Function(PartnerApplicationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PartnerApplicationResponseBuilder toBuilder() =>
      PartnerApplicationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PartnerApplicationResponse &&
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
    return (newBuiltValueToStringHelper(r'PartnerApplicationResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class PartnerApplicationResponseBuilder
    implements
        Builder<PartnerApplicationResponse, PartnerApplicationResponseBuilder> {
  _$PartnerApplicationResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  PartnerApplicationResponseDataBuilder? _data;
  PartnerApplicationResponseDataBuilder get data =>
      _$this._data ??= PartnerApplicationResponseDataBuilder();
  set data(PartnerApplicationResponseDataBuilder? data) => _$this._data = data;

  PartnerApplicationResponseBuilder() {
    PartnerApplicationResponse._defaults(this);
  }

  PartnerApplicationResponseBuilder get _$this {
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
  void replace(PartnerApplicationResponse other) {
    _$v = other as _$PartnerApplicationResponse;
  }

  @override
  void update(void Function(PartnerApplicationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PartnerApplicationResponse build() => _build();

  _$PartnerApplicationResponse _build() {
    _$PartnerApplicationResponse _$result;
    try {
      _$result = _$v ??
          _$PartnerApplicationResponse._(
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
            r'PartnerApplicationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

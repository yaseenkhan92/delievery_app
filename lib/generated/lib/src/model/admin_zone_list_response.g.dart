// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_zone_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminZoneListResponse extends AdminZoneListResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final BuiltList<AdminZoneListResponseDataInner>? data;

  factory _$AdminZoneListResponse(
          [void Function(AdminZoneListResponseBuilder)? updates]) =>
      (AdminZoneListResponseBuilder()..update(updates))._build();

  _$AdminZoneListResponse._({this.status, this.msg, this.data}) : super._();
  @override
  AdminZoneListResponse rebuild(
          void Function(AdminZoneListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminZoneListResponseBuilder toBuilder() =>
      AdminZoneListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminZoneListResponse &&
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
    return (newBuiltValueToStringHelper(r'AdminZoneListResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class AdminZoneListResponseBuilder
    implements Builder<AdminZoneListResponse, AdminZoneListResponseBuilder> {
  _$AdminZoneListResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ListBuilder<AdminZoneListResponseDataInner>? _data;
  ListBuilder<AdminZoneListResponseDataInner> get data =>
      _$this._data ??= ListBuilder<AdminZoneListResponseDataInner>();
  set data(ListBuilder<AdminZoneListResponseDataInner>? data) =>
      _$this._data = data;

  AdminZoneListResponseBuilder() {
    AdminZoneListResponse._defaults(this);
  }

  AdminZoneListResponseBuilder get _$this {
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
  void replace(AdminZoneListResponse other) {
    _$v = other as _$AdminZoneListResponse;
  }

  @override
  void update(void Function(AdminZoneListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminZoneListResponse build() => _build();

  _$AdminZoneListResponse _build() {
    _$AdminZoneListResponse _$result;
    try {
      _$result = _$v ??
          _$AdminZoneListResponse._(
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
            r'AdminZoneListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

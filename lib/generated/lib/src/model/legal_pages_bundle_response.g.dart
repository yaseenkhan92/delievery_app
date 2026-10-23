// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_pages_bundle_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LegalPagesBundleResponse extends LegalPagesBundleResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final BuiltMap<String, LegalPagesBundleResponseDataValue>? data;

  factory _$LegalPagesBundleResponse(
          [void Function(LegalPagesBundleResponseBuilder)? updates]) =>
      (LegalPagesBundleResponseBuilder()..update(updates))._build();

  _$LegalPagesBundleResponse._({this.status, this.msg, this.data}) : super._();
  @override
  LegalPagesBundleResponse rebuild(
          void Function(LegalPagesBundleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegalPagesBundleResponseBuilder toBuilder() =>
      LegalPagesBundleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LegalPagesBundleResponse &&
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
    return (newBuiltValueToStringHelper(r'LegalPagesBundleResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class LegalPagesBundleResponseBuilder
    implements
        Builder<LegalPagesBundleResponse, LegalPagesBundleResponseBuilder> {
  _$LegalPagesBundleResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  MapBuilder<String, LegalPagesBundleResponseDataValue>? _data;
  MapBuilder<String, LegalPagesBundleResponseDataValue> get data =>
      _$this._data ??= MapBuilder<String, LegalPagesBundleResponseDataValue>();
  set data(MapBuilder<String, LegalPagesBundleResponseDataValue>? data) =>
      _$this._data = data;

  LegalPagesBundleResponseBuilder() {
    LegalPagesBundleResponse._defaults(this);
  }

  LegalPagesBundleResponseBuilder get _$this {
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
  void replace(LegalPagesBundleResponse other) {
    _$v = other as _$LegalPagesBundleResponse;
  }

  @override
  void update(void Function(LegalPagesBundleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LegalPagesBundleResponse build() => _build();

  _$LegalPagesBundleResponse _build() {
    _$LegalPagesBundleResponse _$result;
    try {
      _$result = _$v ??
          _$LegalPagesBundleResponse._(
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
            r'LegalPagesBundleResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

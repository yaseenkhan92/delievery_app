// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_page_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LegalPageResponse extends LegalPageResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final LegalPageDocument? data;

  factory _$LegalPageResponse(
          [void Function(LegalPageResponseBuilder)? updates]) =>
      (LegalPageResponseBuilder()..update(updates))._build();

  _$LegalPageResponse._({this.status, this.msg, this.data}) : super._();
  @override
  LegalPageResponse rebuild(void Function(LegalPageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegalPageResponseBuilder toBuilder() =>
      LegalPageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LegalPageResponse &&
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
    return (newBuiltValueToStringHelper(r'LegalPageResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class LegalPageResponseBuilder
    implements Builder<LegalPageResponse, LegalPageResponseBuilder> {
  _$LegalPageResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  LegalPageDocumentBuilder? _data;
  LegalPageDocumentBuilder get data =>
      _$this._data ??= LegalPageDocumentBuilder();
  set data(LegalPageDocumentBuilder? data) => _$this._data = data;

  LegalPageResponseBuilder() {
    LegalPageResponse._defaults(this);
  }

  LegalPageResponseBuilder get _$this {
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
  void replace(LegalPageResponse other) {
    _$v = other as _$LegalPageResponse;
  }

  @override
  void update(void Function(LegalPageResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LegalPageResponse build() => _build();

  _$LegalPageResponse _build() {
    _$LegalPageResponse _$result;
    try {
      _$result = _$v ??
          _$LegalPageResponse._(
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
            r'LegalPageResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

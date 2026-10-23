// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadSuccessResponse extends UploadSuccessResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final String? url;
  @override
  final String? path;
  @override
  final String? subfolder;

  factory _$UploadSuccessResponse(
          [void Function(UploadSuccessResponseBuilder)? updates]) =>
      (UploadSuccessResponseBuilder()..update(updates))._build();

  _$UploadSuccessResponse._(
      {this.status, this.msg, this.url, this.path, this.subfolder})
      : super._();
  @override
  UploadSuccessResponse rebuild(
          void Function(UploadSuccessResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadSuccessResponseBuilder toBuilder() =>
      UploadSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadSuccessResponse &&
        status == other.status &&
        msg == other.msg &&
        url == other.url &&
        path == other.path &&
        subfolder == other.subfolder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, subfolder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UploadSuccessResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('url', url)
          ..add('path', path)
          ..add('subfolder', subfolder))
        .toString();
  }
}

class UploadSuccessResponseBuilder
    implements Builder<UploadSuccessResponse, UploadSuccessResponseBuilder> {
  _$UploadSuccessResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _subfolder;
  String? get subfolder => _$this._subfolder;
  set subfolder(String? subfolder) => _$this._subfolder = subfolder;

  UploadSuccessResponseBuilder() {
    UploadSuccessResponse._defaults(this);
  }

  UploadSuccessResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _url = $v.url;
      _path = $v.path;
      _subfolder = $v.subfolder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadSuccessResponse other) {
    _$v = other as _$UploadSuccessResponse;
  }

  @override
  void update(void Function(UploadSuccessResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadSuccessResponse build() => _build();

  _$UploadSuccessResponse _build() {
    final _$result = _$v ??
        _$UploadSuccessResponse._(
          status: status,
          msg: msg,
          url: url,
          path: path,
          subfolder: subfolder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

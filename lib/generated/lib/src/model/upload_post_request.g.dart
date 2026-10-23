// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadPostRequest extends UploadPostRequest {
  @override
  final JsonObject? subfolder;

  factory _$UploadPostRequest(
          [void Function(UploadPostRequestBuilder)? updates]) =>
      (UploadPostRequestBuilder()..update(updates))._build();

  _$UploadPostRequest._({this.subfolder}) : super._();
  @override
  UploadPostRequest rebuild(void Function(UploadPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadPostRequestBuilder toBuilder() =>
      UploadPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPostRequest && subfolder == other.subfolder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subfolder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UploadPostRequest')
          ..add('subfolder', subfolder))
        .toString();
  }
}

class UploadPostRequestBuilder
    implements Builder<UploadPostRequest, UploadPostRequestBuilder> {
  _$UploadPostRequest? _$v;

  JsonObject? _subfolder;
  JsonObject? get subfolder => _$this._subfolder;
  set subfolder(JsonObject? subfolder) => _$this._subfolder = subfolder;

  UploadPostRequestBuilder() {
    UploadPostRequest._defaults(this);
  }

  UploadPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subfolder = $v.subfolder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadPostRequest other) {
    _$v = other as _$UploadPostRequest;
  }

  @override
  void update(void Function(UploadPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadPostRequest build() => _build();

  _$UploadPostRequest _build() {
    final _$result = _$v ??
        _$UploadPostRequest._(
          subfolder: subfolder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

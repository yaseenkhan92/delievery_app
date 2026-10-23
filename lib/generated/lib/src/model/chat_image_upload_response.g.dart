// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_image_upload_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatImageUploadResponse extends ChatImageUploadResponse {
  @override
  final String? imageUrl;

  factory _$ChatImageUploadResponse(
          [void Function(ChatImageUploadResponseBuilder)? updates]) =>
      (ChatImageUploadResponseBuilder()..update(updates))._build();

  _$ChatImageUploadResponse._({this.imageUrl}) : super._();
  @override
  ChatImageUploadResponse rebuild(
          void Function(ChatImageUploadResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatImageUploadResponseBuilder toBuilder() =>
      ChatImageUploadResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatImageUploadResponse && imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatImageUploadResponse')
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class ChatImageUploadResponseBuilder
    implements
        Builder<ChatImageUploadResponse, ChatImageUploadResponseBuilder> {
  _$ChatImageUploadResponse? _$v;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  ChatImageUploadResponseBuilder() {
    ChatImageUploadResponse._defaults(this);
  }

  ChatImageUploadResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatImageUploadResponse other) {
    _$v = other as _$ChatImageUploadResponse;
  }

  @override
  void update(void Function(ChatImageUploadResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatImageUploadResponse build() => _build();

  _$ChatImageUploadResponse _build() {
    final _$result = _$v ??
        _$ChatImageUploadResponse._(
          imageUrl: imageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

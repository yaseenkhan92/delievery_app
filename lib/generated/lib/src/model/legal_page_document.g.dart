// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_page_document.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LegalPageDocument extends LegalPageDocument {
  @override
  final String? key;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final bool? active;

  factory _$LegalPageDocument(
          [void Function(LegalPageDocumentBuilder)? updates]) =>
      (LegalPageDocumentBuilder()..update(updates))._build();

  _$LegalPageDocument._({this.key, this.title, this.content, this.active})
      : super._();
  @override
  LegalPageDocument rebuild(void Function(LegalPageDocumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegalPageDocumentBuilder toBuilder() =>
      LegalPageDocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LegalPageDocument &&
        key == other.key &&
        title == other.title &&
        content == other.content &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LegalPageDocument')
          ..add('key', key)
          ..add('title', title)
          ..add('content', content)
          ..add('active', active))
        .toString();
  }
}

class LegalPageDocumentBuilder
    implements Builder<LegalPageDocument, LegalPageDocumentBuilder> {
  _$LegalPageDocument? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  LegalPageDocumentBuilder() {
    LegalPageDocument._defaults(this);
  }

  LegalPageDocumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _title = $v.title;
      _content = $v.content;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LegalPageDocument other) {
    _$v = other as _$LegalPageDocument;
  }

  @override
  void update(void Function(LegalPageDocumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LegalPageDocument build() => _build();

  _$LegalPageDocument _build() {
    final _$result = _$v ??
        _$LegalPageDocument._(
          key: key,
          title: title,
          content: content,
          active: active,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

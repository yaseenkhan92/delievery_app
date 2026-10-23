// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_pages_bundle_response_data_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LegalPagesBundleResponseDataValue
    extends LegalPagesBundleResponseDataValue {
  @override
  final String? title;
  @override
  final String? content;
  @override
  final bool? active;

  factory _$LegalPagesBundleResponseDataValue(
          [void Function(LegalPagesBundleResponseDataValueBuilder)? updates]) =>
      (LegalPagesBundleResponseDataValueBuilder()..update(updates))._build();

  _$LegalPagesBundleResponseDataValue._({this.title, this.content, this.active})
      : super._();
  @override
  LegalPagesBundleResponseDataValue rebuild(
          void Function(LegalPagesBundleResponseDataValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegalPagesBundleResponseDataValueBuilder toBuilder() =>
      LegalPagesBundleResponseDataValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LegalPagesBundleResponseDataValue &&
        title == other.title &&
        content == other.content &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LegalPagesBundleResponseDataValue')
          ..add('title', title)
          ..add('content', content)
          ..add('active', active))
        .toString();
  }
}

class LegalPagesBundleResponseDataValueBuilder
    implements
        Builder<LegalPagesBundleResponseDataValue,
            LegalPagesBundleResponseDataValueBuilder> {
  _$LegalPagesBundleResponseDataValue? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  LegalPagesBundleResponseDataValueBuilder() {
    LegalPagesBundleResponseDataValue._defaults(this);
  }

  LegalPagesBundleResponseDataValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _content = $v.content;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LegalPagesBundleResponseDataValue other) {
    _$v = other as _$LegalPagesBundleResponseDataValue;
  }

  @override
  void update(
      void Function(LegalPagesBundleResponseDataValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LegalPagesBundleResponseDataValue build() => _build();

  _$LegalPagesBundleResponseDataValue _build() {
    final _$result = _$v ??
        _$LegalPagesBundleResponseDataValue._(
          title: title,
          content: content,
          active: active,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

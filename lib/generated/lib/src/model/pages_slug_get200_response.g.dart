// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages_slug_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PagesSlugGet200Response extends PagesSlugGet200Response {
  @override
  final OneOf oneOf;

  factory _$PagesSlugGet200Response(
          [void Function(PagesSlugGet200ResponseBuilder)? updates]) =>
      (PagesSlugGet200ResponseBuilder()..update(updates))._build();

  _$PagesSlugGet200Response._({required this.oneOf}) : super._();
  @override
  PagesSlugGet200Response rebuild(
          void Function(PagesSlugGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PagesSlugGet200ResponseBuilder toBuilder() =>
      PagesSlugGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PagesSlugGet200Response && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PagesSlugGet200Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class PagesSlugGet200ResponseBuilder
    implements
        Builder<PagesSlugGet200Response, PagesSlugGet200ResponseBuilder> {
  _$PagesSlugGet200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  PagesSlugGet200ResponseBuilder() {
    PagesSlugGet200Response._defaults(this);
  }

  PagesSlugGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PagesSlugGet200Response other) {
    _$v = other as _$PagesSlugGet200Response;
  }

  @override
  void update(void Function(PagesSlugGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PagesSlugGet200Response build() => _build();

  _$PagesSlugGet200Response _build() {
    final _$result = _$v ??
        _$PagesSlugGet200Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'PagesSlugGet200Response', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

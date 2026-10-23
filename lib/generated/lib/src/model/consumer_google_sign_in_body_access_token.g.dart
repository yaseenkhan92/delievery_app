// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_google_sign_in_body_access_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerGoogleSignInBodyAccessToken
    extends ConsumerGoogleSignInBodyAccessToken {
  @override
  final OneOf oneOf;

  factory _$ConsumerGoogleSignInBodyAccessToken(
          [void Function(ConsumerGoogleSignInBodyAccessTokenBuilder)?
              updates]) =>
      (ConsumerGoogleSignInBodyAccessTokenBuilder()..update(updates))._build();

  _$ConsumerGoogleSignInBodyAccessToken._({required this.oneOf}) : super._();
  @override
  ConsumerGoogleSignInBodyAccessToken rebuild(
          void Function(ConsumerGoogleSignInBodyAccessTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerGoogleSignInBodyAccessTokenBuilder toBuilder() =>
      ConsumerGoogleSignInBodyAccessTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerGoogleSignInBodyAccessToken && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ConsumerGoogleSignInBodyAccessToken')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ConsumerGoogleSignInBodyAccessTokenBuilder
    implements
        Builder<ConsumerGoogleSignInBodyAccessToken,
            ConsumerGoogleSignInBodyAccessTokenBuilder> {
  _$ConsumerGoogleSignInBodyAccessToken? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ConsumerGoogleSignInBodyAccessTokenBuilder() {
    ConsumerGoogleSignInBodyAccessToken._defaults(this);
  }

  ConsumerGoogleSignInBodyAccessTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerGoogleSignInBodyAccessToken other) {
    _$v = other as _$ConsumerGoogleSignInBodyAccessToken;
  }

  @override
  void update(
      void Function(ConsumerGoogleSignInBodyAccessTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerGoogleSignInBodyAccessToken build() => _build();

  _$ConsumerGoogleSignInBodyAccessToken _build() {
    final _$result = _$v ??
        _$ConsumerGoogleSignInBodyAccessToken._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ConsumerGoogleSignInBodyAccessToken', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

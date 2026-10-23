// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_login_body_access_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerLoginBodyAccessToken extends ConsumerLoginBodyAccessToken {
  @override
  final OneOf oneOf;

  factory _$ConsumerLoginBodyAccessToken(
          [void Function(ConsumerLoginBodyAccessTokenBuilder)? updates]) =>
      (ConsumerLoginBodyAccessTokenBuilder()..update(updates))._build();

  _$ConsumerLoginBodyAccessToken._({required this.oneOf}) : super._();
  @override
  ConsumerLoginBodyAccessToken rebuild(
          void Function(ConsumerLoginBodyAccessTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerLoginBodyAccessTokenBuilder toBuilder() =>
      ConsumerLoginBodyAccessTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerLoginBodyAccessToken && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ConsumerLoginBodyAccessToken')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ConsumerLoginBodyAccessTokenBuilder
    implements
        Builder<ConsumerLoginBodyAccessToken,
            ConsumerLoginBodyAccessTokenBuilder> {
  _$ConsumerLoginBodyAccessToken? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ConsumerLoginBodyAccessTokenBuilder() {
    ConsumerLoginBodyAccessToken._defaults(this);
  }

  ConsumerLoginBodyAccessTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerLoginBodyAccessToken other) {
    _$v = other as _$ConsumerLoginBodyAccessToken;
  }

  @override
  void update(void Function(ConsumerLoginBodyAccessTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerLoginBodyAccessToken build() => _build();

  _$ConsumerLoginBodyAccessToken _build() {
    final _$result = _$v ??
        _$ConsumerLoginBodyAccessToken._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ConsumerLoginBodyAccessToken', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

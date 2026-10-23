// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_login_response_data_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerLoginResponseDataOneOf extends ConsumerLoginResponseDataOneOf {
  @override
  final String? token;
  @override
  final int? isPhoneVerified;
  @override
  final int? isEmailVerified;
  @override
  final String? loginType;

  factory _$ConsumerLoginResponseDataOneOf(
          [void Function(ConsumerLoginResponseDataOneOfBuilder)? updates]) =>
      (ConsumerLoginResponseDataOneOfBuilder()..update(updates))._build();

  _$ConsumerLoginResponseDataOneOf._(
      {this.token, this.isPhoneVerified, this.isEmailVerified, this.loginType})
      : super._();
  @override
  ConsumerLoginResponseDataOneOf rebuild(
          void Function(ConsumerLoginResponseDataOneOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerLoginResponseDataOneOfBuilder toBuilder() =>
      ConsumerLoginResponseDataOneOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerLoginResponseDataOneOf &&
        token == other.token &&
        isPhoneVerified == other.isPhoneVerified &&
        isEmailVerified == other.isEmailVerified &&
        loginType == other.loginType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jc(_$hash, isEmailVerified.hashCode);
    _$hash = $jc(_$hash, loginType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerLoginResponseDataOneOf')
          ..add('token', token)
          ..add('isPhoneVerified', isPhoneVerified)
          ..add('isEmailVerified', isEmailVerified)
          ..add('loginType', loginType))
        .toString();
  }
}

class ConsumerLoginResponseDataOneOfBuilder
    implements
        Builder<ConsumerLoginResponseDataOneOf,
            ConsumerLoginResponseDataOneOfBuilder> {
  _$ConsumerLoginResponseDataOneOf? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  int? _isPhoneVerified;
  int? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(int? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  int? _isEmailVerified;
  int? get isEmailVerified => _$this._isEmailVerified;
  set isEmailVerified(int? isEmailVerified) =>
      _$this._isEmailVerified = isEmailVerified;

  String? _loginType;
  String? get loginType => _$this._loginType;
  set loginType(String? loginType) => _$this._loginType = loginType;

  ConsumerLoginResponseDataOneOfBuilder() {
    ConsumerLoginResponseDataOneOf._defaults(this);
  }

  ConsumerLoginResponseDataOneOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _isPhoneVerified = $v.isPhoneVerified;
      _isEmailVerified = $v.isEmailVerified;
      _loginType = $v.loginType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerLoginResponseDataOneOf other) {
    _$v = other as _$ConsumerLoginResponseDataOneOf;
  }

  @override
  void update(void Function(ConsumerLoginResponseDataOneOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerLoginResponseDataOneOf build() => _build();

  _$ConsumerLoginResponseDataOneOf _build() {
    final _$result = _$v ??
        _$ConsumerLoginResponseDataOneOf._(
          token: token,
          isPhoneVerified: isPhoneVerified,
          isEmailVerified: isEmailVerified,
          loginType: loginType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_change_password_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerChangePasswordBody extends ConsumerChangePasswordBody {
  @override
  final String currentPassword;
  @override
  final String password;
  @override
  final String confirmPassword;

  factory _$ConsumerChangePasswordBody(
          [void Function(ConsumerChangePasswordBodyBuilder)? updates]) =>
      (ConsumerChangePasswordBodyBuilder()..update(updates))._build();

  _$ConsumerChangePasswordBody._(
      {required this.currentPassword,
      required this.password,
      required this.confirmPassword})
      : super._();
  @override
  ConsumerChangePasswordBody rebuild(
          void Function(ConsumerChangePasswordBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerChangePasswordBodyBuilder toBuilder() =>
      ConsumerChangePasswordBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerChangePasswordBody &&
        currentPassword == other.currentPassword &&
        password == other.password &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentPassword.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerChangePasswordBody')
          ..add('currentPassword', currentPassword)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class ConsumerChangePasswordBodyBuilder
    implements
        Builder<ConsumerChangePasswordBody, ConsumerChangePasswordBodyBuilder> {
  _$ConsumerChangePasswordBody? _$v;

  String? _currentPassword;
  String? get currentPassword => _$this._currentPassword;
  set currentPassword(String? currentPassword) =>
      _$this._currentPassword = currentPassword;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  ConsumerChangePasswordBodyBuilder() {
    ConsumerChangePasswordBody._defaults(this);
  }

  ConsumerChangePasswordBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPassword = $v.currentPassword;
      _password = $v.password;
      _confirmPassword = $v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerChangePasswordBody other) {
    _$v = other as _$ConsumerChangePasswordBody;
  }

  @override
  void update(void Function(ConsumerChangePasswordBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerChangePasswordBody build() => _build();

  _$ConsumerChangePasswordBody _build() {
    final _$result = _$v ??
        _$ConsumerChangePasswordBody._(
          currentPassword: BuiltValueNullFieldError.checkNotNull(
              currentPassword,
              r'ConsumerChangePasswordBody',
              'currentPassword'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'ConsumerChangePasswordBody', 'password'),
          confirmPassword: BuiltValueNullFieldError.checkNotNull(
              confirmPassword,
              r'ConsumerChangePasswordBody',
              'confirmPassword'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

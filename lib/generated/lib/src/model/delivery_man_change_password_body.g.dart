// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_change_password_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManChangePasswordBody extends DeliveryManChangePasswordBody {
  @override
  final String currentPassword;
  @override
  final String password;
  @override
  final String confirmPassword;

  factory _$DeliveryManChangePasswordBody(
          [void Function(DeliveryManChangePasswordBodyBuilder)? updates]) =>
      (DeliveryManChangePasswordBodyBuilder()..update(updates))._build();

  _$DeliveryManChangePasswordBody._(
      {required this.currentPassword,
      required this.password,
      required this.confirmPassword})
      : super._();
  @override
  DeliveryManChangePasswordBody rebuild(
          void Function(DeliveryManChangePasswordBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManChangePasswordBodyBuilder toBuilder() =>
      DeliveryManChangePasswordBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManChangePasswordBody &&
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
    return (newBuiltValueToStringHelper(r'DeliveryManChangePasswordBody')
          ..add('currentPassword', currentPassword)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class DeliveryManChangePasswordBodyBuilder
    implements
        Builder<DeliveryManChangePasswordBody,
            DeliveryManChangePasswordBodyBuilder> {
  _$DeliveryManChangePasswordBody? _$v;

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

  DeliveryManChangePasswordBodyBuilder() {
    DeliveryManChangePasswordBody._defaults(this);
  }

  DeliveryManChangePasswordBodyBuilder get _$this {
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
  void replace(DeliveryManChangePasswordBody other) {
    _$v = other as _$DeliveryManChangePasswordBody;
  }

  @override
  void update(void Function(DeliveryManChangePasswordBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManChangePasswordBody build() => _build();

  _$DeliveryManChangePasswordBody _build() {
    final _$result = _$v ??
        _$DeliveryManChangePasswordBody._(
          currentPassword: BuiltValueNullFieldError.checkNotNull(
              currentPassword,
              r'DeliveryManChangePasswordBody',
              'currentPassword'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'DeliveryManChangePasswordBody', 'password'),
          confirmPassword: BuiltValueNullFieldError.checkNotNull(
              confirmPassword,
              r'DeliveryManChangePasswordBody',
              'confirmPassword'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

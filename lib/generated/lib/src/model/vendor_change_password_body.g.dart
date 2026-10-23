// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_change_password_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorChangePasswordBody extends VendorChangePasswordBody {
  @override
  final String currentPassword;
  @override
  final String password;
  @override
  final String confirmPassword;

  factory _$VendorChangePasswordBody(
          [void Function(VendorChangePasswordBodyBuilder)? updates]) =>
      (VendorChangePasswordBodyBuilder()..update(updates))._build();

  _$VendorChangePasswordBody._(
      {required this.currentPassword,
      required this.password,
      required this.confirmPassword})
      : super._();
  @override
  VendorChangePasswordBody rebuild(
          void Function(VendorChangePasswordBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorChangePasswordBodyBuilder toBuilder() =>
      VendorChangePasswordBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorChangePasswordBody &&
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
    return (newBuiltValueToStringHelper(r'VendorChangePasswordBody')
          ..add('currentPassword', currentPassword)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class VendorChangePasswordBodyBuilder
    implements
        Builder<VendorChangePasswordBody, VendorChangePasswordBodyBuilder> {
  _$VendorChangePasswordBody? _$v;

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

  VendorChangePasswordBodyBuilder() {
    VendorChangePasswordBody._defaults(this);
  }

  VendorChangePasswordBodyBuilder get _$this {
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
  void replace(VendorChangePasswordBody other) {
    _$v = other as _$VendorChangePasswordBody;
  }

  @override
  void update(void Function(VendorChangePasswordBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorChangePasswordBody build() => _build();

  _$VendorChangePasswordBody _build() {
    final _$result = _$v ??
        _$VendorChangePasswordBody._(
          currentPassword: BuiltValueNullFieldError.checkNotNull(
              currentPassword, r'VendorChangePasswordBody', 'currentPassword'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'VendorChangePasswordBody', 'password'),
          confirmPassword: BuiltValueNullFieldError.checkNotNull(
              confirmPassword, r'VendorChangePasswordBody', 'confirmPassword'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_password_reset_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManPasswordResetBody extends DeliveryManPasswordResetBody {
  @override
  final String phone;
  @override
  final String otp;
  @override
  final String password;
  @override
  final String confirmPassword;

  factory _$DeliveryManPasswordResetBody(
          [void Function(DeliveryManPasswordResetBodyBuilder)? updates]) =>
      (DeliveryManPasswordResetBodyBuilder()..update(updates))._build();

  _$DeliveryManPasswordResetBody._(
      {required this.phone,
      required this.otp,
      required this.password,
      required this.confirmPassword})
      : super._();
  @override
  DeliveryManPasswordResetBody rebuild(
          void Function(DeliveryManPasswordResetBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManPasswordResetBodyBuilder toBuilder() =>
      DeliveryManPasswordResetBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManPasswordResetBody &&
        phone == other.phone &&
        otp == other.otp &&
        password == other.password &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManPasswordResetBody')
          ..add('phone', phone)
          ..add('otp', otp)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class DeliveryManPasswordResetBodyBuilder
    implements
        Builder<DeliveryManPasswordResetBody,
            DeliveryManPasswordResetBodyBuilder> {
  _$DeliveryManPasswordResetBody? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  DeliveryManPasswordResetBodyBuilder() {
    DeliveryManPasswordResetBody._defaults(this);
  }

  DeliveryManPasswordResetBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _otp = $v.otp;
      _password = $v.password;
      _confirmPassword = $v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManPasswordResetBody other) {
    _$v = other as _$DeliveryManPasswordResetBody;
  }

  @override
  void update(void Function(DeliveryManPasswordResetBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManPasswordResetBody build() => _build();

  _$DeliveryManPasswordResetBody _build() {
    final _$result = _$v ??
        _$DeliveryManPasswordResetBody._(
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'DeliveryManPasswordResetBody', 'phone'),
          otp: BuiltValueNullFieldError.checkNotNull(
              otp, r'DeliveryManPasswordResetBody', 'otp'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'DeliveryManPasswordResetBody', 'password'),
          confirmPassword: BuiltValueNullFieldError.checkNotNull(
              confirmPassword,
              r'DeliveryManPasswordResetBody',
              'confirmPassword'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

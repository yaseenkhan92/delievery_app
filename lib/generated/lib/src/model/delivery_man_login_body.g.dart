// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_login_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManLoginBody extends DeliveryManLoginBody {
  @override
  final String phone;
  @override
  final String password;
  @override
  final bool? rememberMe;

  factory _$DeliveryManLoginBody(
          [void Function(DeliveryManLoginBodyBuilder)? updates]) =>
      (DeliveryManLoginBodyBuilder()..update(updates))._build();

  _$DeliveryManLoginBody._(
      {required this.phone, required this.password, this.rememberMe})
      : super._();
  @override
  DeliveryManLoginBody rebuild(
          void Function(DeliveryManLoginBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManLoginBodyBuilder toBuilder() =>
      DeliveryManLoginBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManLoginBody &&
        phone == other.phone &&
        password == other.password &&
        rememberMe == other.rememberMe;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, rememberMe.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManLoginBody')
          ..add('phone', phone)
          ..add('password', password)
          ..add('rememberMe', rememberMe))
        .toString();
  }
}

class DeliveryManLoginBodyBuilder
    implements Builder<DeliveryManLoginBody, DeliveryManLoginBodyBuilder> {
  _$DeliveryManLoginBody? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _rememberMe;
  bool? get rememberMe => _$this._rememberMe;
  set rememberMe(bool? rememberMe) => _$this._rememberMe = rememberMe;

  DeliveryManLoginBodyBuilder() {
    DeliveryManLoginBody._defaults(this);
  }

  DeliveryManLoginBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _password = $v.password;
      _rememberMe = $v.rememberMe;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManLoginBody other) {
    _$v = other as _$DeliveryManLoginBody;
  }

  @override
  void update(void Function(DeliveryManLoginBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManLoginBody build() => _build();

  _$DeliveryManLoginBody _build() {
    final _$result = _$v ??
        _$DeliveryManLoginBody._(
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'DeliveryManLoginBody', 'phone'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'DeliveryManLoginBody', 'password'),
          rememberMe: rememberMe,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_register_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerRegisterBody extends ConsumerRegisterBody {
  @override
  final String fName;
  @override
  final String? lName;
  @override
  final String phone;
  @override
  final String? email;
  @override
  final String password;
  @override
  final String? refCode;

  factory _$ConsumerRegisterBody(
          [void Function(ConsumerRegisterBodyBuilder)? updates]) =>
      (ConsumerRegisterBodyBuilder()..update(updates))._build();

  _$ConsumerRegisterBody._(
      {required this.fName,
      this.lName,
      required this.phone,
      this.email,
      required this.password,
      this.refCode})
      : super._();
  @override
  ConsumerRegisterBody rebuild(
          void Function(ConsumerRegisterBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerRegisterBodyBuilder toBuilder() =>
      ConsumerRegisterBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerRegisterBody &&
        fName == other.fName &&
        lName == other.lName &&
        phone == other.phone &&
        email == other.email &&
        password == other.password &&
        refCode == other.refCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fName.hashCode);
    _$hash = $jc(_$hash, lName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, refCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerRegisterBody')
          ..add('fName', fName)
          ..add('lName', lName)
          ..add('phone', phone)
          ..add('email', email)
          ..add('password', password)
          ..add('refCode', refCode))
        .toString();
  }
}

class ConsumerRegisterBodyBuilder
    implements Builder<ConsumerRegisterBody, ConsumerRegisterBodyBuilder> {
  _$ConsumerRegisterBody? _$v;

  String? _fName;
  String? get fName => _$this._fName;
  set fName(String? fName) => _$this._fName = fName;

  String? _lName;
  String? get lName => _$this._lName;
  set lName(String? lName) => _$this._lName = lName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _refCode;
  String? get refCode => _$this._refCode;
  set refCode(String? refCode) => _$this._refCode = refCode;

  ConsumerRegisterBodyBuilder() {
    ConsumerRegisterBody._defaults(this);
  }

  ConsumerRegisterBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fName = $v.fName;
      _lName = $v.lName;
      _phone = $v.phone;
      _email = $v.email;
      _password = $v.password;
      _refCode = $v.refCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerRegisterBody other) {
    _$v = other as _$ConsumerRegisterBody;
  }

  @override
  void update(void Function(ConsumerRegisterBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerRegisterBody build() => _build();

  _$ConsumerRegisterBody _build() {
    final _$result = _$v ??
        _$ConsumerRegisterBody._(
          fName: BuiltValueNullFieldError.checkNotNull(
              fName, r'ConsumerRegisterBody', 'fName'),
          lName: lName,
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'ConsumerRegisterBody', 'phone'),
          email: email,
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'ConsumerRegisterBody', 'password'),
          refCode: refCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

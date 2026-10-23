// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_password_reset_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VendorPasswordResetBodyFieldTypeEnum
    _$vendorPasswordResetBodyFieldTypeEnum_email =
    const VendorPasswordResetBodyFieldTypeEnum._('email');
const VendorPasswordResetBodyFieldTypeEnum
    _$vendorPasswordResetBodyFieldTypeEnum_phone =
    const VendorPasswordResetBodyFieldTypeEnum._('phone');

VendorPasswordResetBodyFieldTypeEnum
    _$vendorPasswordResetBodyFieldTypeEnumValueOf(String name) {
  switch (name) {
    case 'email':
      return _$vendorPasswordResetBodyFieldTypeEnum_email;
    case 'phone':
      return _$vendorPasswordResetBodyFieldTypeEnum_phone;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VendorPasswordResetBodyFieldTypeEnum>
    _$vendorPasswordResetBodyFieldTypeEnumValues = BuiltSet<
        VendorPasswordResetBodyFieldTypeEnum>(const <VendorPasswordResetBodyFieldTypeEnum>[
  _$vendorPasswordResetBodyFieldTypeEnum_email,
  _$vendorPasswordResetBodyFieldTypeEnum_phone,
]);

Serializer<VendorPasswordResetBodyFieldTypeEnum>
    _$vendorPasswordResetBodyFieldTypeEnumSerializer =
    _$VendorPasswordResetBodyFieldTypeEnumSerializer();

class _$VendorPasswordResetBodyFieldTypeEnumSerializer
    implements PrimitiveSerializer<VendorPasswordResetBodyFieldTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'email': 'email',
    'phone': 'phone',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'email': 'email',
    'phone': 'phone',
  };

  @override
  final Iterable<Type> types = const <Type>[
    VendorPasswordResetBodyFieldTypeEnum
  ];
  @override
  final String wireName = 'VendorPasswordResetBodyFieldTypeEnum';

  @override
  Object serialize(
          Serializers serializers, VendorPasswordResetBodyFieldTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VendorPasswordResetBodyFieldTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VendorPasswordResetBodyFieldTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VendorPasswordResetBody extends VendorPasswordResetBody {
  @override
  final VendorPasswordResetBodyFieldTypeEnum? fieldType;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String otp;
  @override
  final String password;
  @override
  final String confirmPassword;

  factory _$VendorPasswordResetBody(
          [void Function(VendorPasswordResetBodyBuilder)? updates]) =>
      (VendorPasswordResetBodyBuilder()..update(updates))._build();

  _$VendorPasswordResetBody._(
      {this.fieldType,
      this.email,
      this.phone,
      required this.otp,
      required this.password,
      required this.confirmPassword})
      : super._();
  @override
  VendorPasswordResetBody rebuild(
          void Function(VendorPasswordResetBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorPasswordResetBodyBuilder toBuilder() =>
      VendorPasswordResetBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorPasswordResetBody &&
        fieldType == other.fieldType &&
        email == other.email &&
        phone == other.phone &&
        otp == other.otp &&
        password == other.password &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fieldType.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorPasswordResetBody')
          ..add('fieldType', fieldType)
          ..add('email', email)
          ..add('phone', phone)
          ..add('otp', otp)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class VendorPasswordResetBodyBuilder
    implements
        Builder<VendorPasswordResetBody, VendorPasswordResetBodyBuilder> {
  _$VendorPasswordResetBody? _$v;

  VendorPasswordResetBodyFieldTypeEnum? _fieldType;
  VendorPasswordResetBodyFieldTypeEnum? get fieldType => _$this._fieldType;
  set fieldType(VendorPasswordResetBodyFieldTypeEnum? fieldType) =>
      _$this._fieldType = fieldType;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

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

  VendorPasswordResetBodyBuilder() {
    VendorPasswordResetBody._defaults(this);
  }

  VendorPasswordResetBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fieldType = $v.fieldType;
      _email = $v.email;
      _phone = $v.phone;
      _otp = $v.otp;
      _password = $v.password;
      _confirmPassword = $v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorPasswordResetBody other) {
    _$v = other as _$VendorPasswordResetBody;
  }

  @override
  void update(void Function(VendorPasswordResetBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorPasswordResetBody build() => _build();

  _$VendorPasswordResetBody _build() {
    final _$result = _$v ??
        _$VendorPasswordResetBody._(
          fieldType: fieldType,
          email: email,
          phone: phone,
          otp: BuiltValueNullFieldError.checkNotNull(
              otp, r'VendorPasswordResetBody', 'otp'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'VendorPasswordResetBody', 'password'),
          confirmPassword: BuiltValueNullFieldError.checkNotNull(
              confirmPassword, r'VendorPasswordResetBody', 'confirmPassword'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

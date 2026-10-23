// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_password_reset_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsumerPasswordResetBodyFieldTypeEnum
    _$consumerPasswordResetBodyFieldTypeEnum_email =
    const ConsumerPasswordResetBodyFieldTypeEnum._('email');
const ConsumerPasswordResetBodyFieldTypeEnum
    _$consumerPasswordResetBodyFieldTypeEnum_phone =
    const ConsumerPasswordResetBodyFieldTypeEnum._('phone');

ConsumerPasswordResetBodyFieldTypeEnum
    _$consumerPasswordResetBodyFieldTypeEnumValueOf(String name) {
  switch (name) {
    case 'email':
      return _$consumerPasswordResetBodyFieldTypeEnum_email;
    case 'phone':
      return _$consumerPasswordResetBodyFieldTypeEnum_phone;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerPasswordResetBodyFieldTypeEnum>
    _$consumerPasswordResetBodyFieldTypeEnumValues = BuiltSet<
        ConsumerPasswordResetBodyFieldTypeEnum>(const <ConsumerPasswordResetBodyFieldTypeEnum>[
  _$consumerPasswordResetBodyFieldTypeEnum_email,
  _$consumerPasswordResetBodyFieldTypeEnum_phone,
]);

Serializer<ConsumerPasswordResetBodyFieldTypeEnum>
    _$consumerPasswordResetBodyFieldTypeEnumSerializer =
    _$ConsumerPasswordResetBodyFieldTypeEnumSerializer();

class _$ConsumerPasswordResetBodyFieldTypeEnumSerializer
    implements PrimitiveSerializer<ConsumerPasswordResetBodyFieldTypeEnum> {
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
    ConsumerPasswordResetBodyFieldTypeEnum
  ];
  @override
  final String wireName = 'ConsumerPasswordResetBodyFieldTypeEnum';

  @override
  Object serialize(Serializers serializers,
          ConsumerPasswordResetBodyFieldTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerPasswordResetBodyFieldTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerPasswordResetBodyFieldTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerPasswordResetBody extends ConsumerPasswordResetBody {
  @override
  final ConsumerPasswordResetBodyFieldTypeEnum? fieldType;
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

  factory _$ConsumerPasswordResetBody(
          [void Function(ConsumerPasswordResetBodyBuilder)? updates]) =>
      (ConsumerPasswordResetBodyBuilder()..update(updates))._build();

  _$ConsumerPasswordResetBody._(
      {this.fieldType,
      this.email,
      this.phone,
      required this.otp,
      required this.password,
      required this.confirmPassword})
      : super._();
  @override
  ConsumerPasswordResetBody rebuild(
          void Function(ConsumerPasswordResetBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerPasswordResetBodyBuilder toBuilder() =>
      ConsumerPasswordResetBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerPasswordResetBody &&
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
    return (newBuiltValueToStringHelper(r'ConsumerPasswordResetBody')
          ..add('fieldType', fieldType)
          ..add('email', email)
          ..add('phone', phone)
          ..add('otp', otp)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class ConsumerPasswordResetBodyBuilder
    implements
        Builder<ConsumerPasswordResetBody, ConsumerPasswordResetBodyBuilder> {
  _$ConsumerPasswordResetBody? _$v;

  ConsumerPasswordResetBodyFieldTypeEnum? _fieldType;
  ConsumerPasswordResetBodyFieldTypeEnum? get fieldType => _$this._fieldType;
  set fieldType(ConsumerPasswordResetBodyFieldTypeEnum? fieldType) =>
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

  ConsumerPasswordResetBodyBuilder() {
    ConsumerPasswordResetBody._defaults(this);
  }

  ConsumerPasswordResetBodyBuilder get _$this {
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
  void replace(ConsumerPasswordResetBody other) {
    _$v = other as _$ConsumerPasswordResetBody;
  }

  @override
  void update(void Function(ConsumerPasswordResetBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerPasswordResetBody build() => _build();

  _$ConsumerPasswordResetBody _build() {
    final _$result = _$v ??
        _$ConsumerPasswordResetBody._(
          fieldType: fieldType,
          email: email,
          phone: phone,
          otp: BuiltValueNullFieldError.checkNotNull(
              otp, r'ConsumerPasswordResetBody', 'otp'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'ConsumerPasswordResetBody', 'password'),
          confirmPassword: BuiltValueNullFieldError.checkNotNull(
              confirmPassword, r'ConsumerPasswordResetBody', 'confirmPassword'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

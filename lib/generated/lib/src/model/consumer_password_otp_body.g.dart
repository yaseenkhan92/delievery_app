// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_password_otp_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsumerPasswordOtpBodyFieldTypeEnum
    _$consumerPasswordOtpBodyFieldTypeEnum_email =
    const ConsumerPasswordOtpBodyFieldTypeEnum._('email');
const ConsumerPasswordOtpBodyFieldTypeEnum
    _$consumerPasswordOtpBodyFieldTypeEnum_phone =
    const ConsumerPasswordOtpBodyFieldTypeEnum._('phone');

ConsumerPasswordOtpBodyFieldTypeEnum
    _$consumerPasswordOtpBodyFieldTypeEnumValueOf(String name) {
  switch (name) {
    case 'email':
      return _$consumerPasswordOtpBodyFieldTypeEnum_email;
    case 'phone':
      return _$consumerPasswordOtpBodyFieldTypeEnum_phone;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerPasswordOtpBodyFieldTypeEnum>
    _$consumerPasswordOtpBodyFieldTypeEnumValues = BuiltSet<
        ConsumerPasswordOtpBodyFieldTypeEnum>(const <ConsumerPasswordOtpBodyFieldTypeEnum>[
  _$consumerPasswordOtpBodyFieldTypeEnum_email,
  _$consumerPasswordOtpBodyFieldTypeEnum_phone,
]);

Serializer<ConsumerPasswordOtpBodyFieldTypeEnum>
    _$consumerPasswordOtpBodyFieldTypeEnumSerializer =
    _$ConsumerPasswordOtpBodyFieldTypeEnumSerializer();

class _$ConsumerPasswordOtpBodyFieldTypeEnumSerializer
    implements PrimitiveSerializer<ConsumerPasswordOtpBodyFieldTypeEnum> {
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
    ConsumerPasswordOtpBodyFieldTypeEnum
  ];
  @override
  final String wireName = 'ConsumerPasswordOtpBodyFieldTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ConsumerPasswordOtpBodyFieldTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerPasswordOtpBodyFieldTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerPasswordOtpBodyFieldTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerPasswordOtpBody extends ConsumerPasswordOtpBody {
  @override
  final ConsumerPasswordOtpBodyFieldTypeEnum? fieldType;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String otp;

  factory _$ConsumerPasswordOtpBody(
          [void Function(ConsumerPasswordOtpBodyBuilder)? updates]) =>
      (ConsumerPasswordOtpBodyBuilder()..update(updates))._build();

  _$ConsumerPasswordOtpBody._(
      {this.fieldType, this.email, this.phone, required this.otp})
      : super._();
  @override
  ConsumerPasswordOtpBody rebuild(
          void Function(ConsumerPasswordOtpBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerPasswordOtpBodyBuilder toBuilder() =>
      ConsumerPasswordOtpBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerPasswordOtpBody &&
        fieldType == other.fieldType &&
        email == other.email &&
        phone == other.phone &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fieldType.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerPasswordOtpBody')
          ..add('fieldType', fieldType)
          ..add('email', email)
          ..add('phone', phone)
          ..add('otp', otp))
        .toString();
  }
}

class ConsumerPasswordOtpBodyBuilder
    implements
        Builder<ConsumerPasswordOtpBody, ConsumerPasswordOtpBodyBuilder> {
  _$ConsumerPasswordOtpBody? _$v;

  ConsumerPasswordOtpBodyFieldTypeEnum? _fieldType;
  ConsumerPasswordOtpBodyFieldTypeEnum? get fieldType => _$this._fieldType;
  set fieldType(ConsumerPasswordOtpBodyFieldTypeEnum? fieldType) =>
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

  ConsumerPasswordOtpBodyBuilder() {
    ConsumerPasswordOtpBody._defaults(this);
  }

  ConsumerPasswordOtpBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fieldType = $v.fieldType;
      _email = $v.email;
      _phone = $v.phone;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerPasswordOtpBody other) {
    _$v = other as _$ConsumerPasswordOtpBody;
  }

  @override
  void update(void Function(ConsumerPasswordOtpBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerPasswordOtpBody build() => _build();

  _$ConsumerPasswordOtpBody _build() {
    final _$result = _$v ??
        _$ConsumerPasswordOtpBody._(
          fieldType: fieldType,
          email: email,
          phone: phone,
          otp: BuiltValueNullFieldError.checkNotNull(
              otp, r'ConsumerPasswordOtpBody', 'otp'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

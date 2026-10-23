// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_password_otp_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VendorPasswordOtpBodyFieldTypeEnum
    _$vendorPasswordOtpBodyFieldTypeEnum_email =
    const VendorPasswordOtpBodyFieldTypeEnum._('email');
const VendorPasswordOtpBodyFieldTypeEnum
    _$vendorPasswordOtpBodyFieldTypeEnum_phone =
    const VendorPasswordOtpBodyFieldTypeEnum._('phone');

VendorPasswordOtpBodyFieldTypeEnum _$vendorPasswordOtpBodyFieldTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'email':
      return _$vendorPasswordOtpBodyFieldTypeEnum_email;
    case 'phone':
      return _$vendorPasswordOtpBodyFieldTypeEnum_phone;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VendorPasswordOtpBodyFieldTypeEnum>
    _$vendorPasswordOtpBodyFieldTypeEnumValues = BuiltSet<
        VendorPasswordOtpBodyFieldTypeEnum>(const <VendorPasswordOtpBodyFieldTypeEnum>[
  _$vendorPasswordOtpBodyFieldTypeEnum_email,
  _$vendorPasswordOtpBodyFieldTypeEnum_phone,
]);

Serializer<VendorPasswordOtpBodyFieldTypeEnum>
    _$vendorPasswordOtpBodyFieldTypeEnumSerializer =
    _$VendorPasswordOtpBodyFieldTypeEnumSerializer();

class _$VendorPasswordOtpBodyFieldTypeEnumSerializer
    implements PrimitiveSerializer<VendorPasswordOtpBodyFieldTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'email': 'email',
    'phone': 'phone',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'email': 'email',
    'phone': 'phone',
  };

  @override
  final Iterable<Type> types = const <Type>[VendorPasswordOtpBodyFieldTypeEnum];
  @override
  final String wireName = 'VendorPasswordOtpBodyFieldTypeEnum';

  @override
  Object serialize(
          Serializers serializers, VendorPasswordOtpBodyFieldTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VendorPasswordOtpBodyFieldTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VendorPasswordOtpBodyFieldTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VendorPasswordOtpBody extends VendorPasswordOtpBody {
  @override
  final VendorPasswordOtpBodyFieldTypeEnum? fieldType;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String otp;

  factory _$VendorPasswordOtpBody(
          [void Function(VendorPasswordOtpBodyBuilder)? updates]) =>
      (VendorPasswordOtpBodyBuilder()..update(updates))._build();

  _$VendorPasswordOtpBody._(
      {this.fieldType, this.email, this.phone, required this.otp})
      : super._();
  @override
  VendorPasswordOtpBody rebuild(
          void Function(VendorPasswordOtpBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorPasswordOtpBodyBuilder toBuilder() =>
      VendorPasswordOtpBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorPasswordOtpBody &&
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
    return (newBuiltValueToStringHelper(r'VendorPasswordOtpBody')
          ..add('fieldType', fieldType)
          ..add('email', email)
          ..add('phone', phone)
          ..add('otp', otp))
        .toString();
  }
}

class VendorPasswordOtpBodyBuilder
    implements Builder<VendorPasswordOtpBody, VendorPasswordOtpBodyBuilder> {
  _$VendorPasswordOtpBody? _$v;

  VendorPasswordOtpBodyFieldTypeEnum? _fieldType;
  VendorPasswordOtpBodyFieldTypeEnum? get fieldType => _$this._fieldType;
  set fieldType(VendorPasswordOtpBodyFieldTypeEnum? fieldType) =>
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

  VendorPasswordOtpBodyBuilder() {
    VendorPasswordOtpBody._defaults(this);
  }

  VendorPasswordOtpBodyBuilder get _$this {
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
  void replace(VendorPasswordOtpBody other) {
    _$v = other as _$VendorPasswordOtpBody;
  }

  @override
  void update(void Function(VendorPasswordOtpBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorPasswordOtpBody build() => _build();

  _$VendorPasswordOtpBody _build() {
    final _$result = _$v ??
        _$VendorPasswordOtpBody._(
          fieldType: fieldType,
          email: email,
          phone: phone,
          otp: BuiltValueNullFieldError.checkNotNull(
              otp, r'VendorPasswordOtpBody', 'otp'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

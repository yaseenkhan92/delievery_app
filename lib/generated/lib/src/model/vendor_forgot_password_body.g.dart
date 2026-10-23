// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_forgot_password_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VendorForgotPasswordBodyFieldTypeEnum
    _$vendorForgotPasswordBodyFieldTypeEnum_email =
    const VendorForgotPasswordBodyFieldTypeEnum._('email');
const VendorForgotPasswordBodyFieldTypeEnum
    _$vendorForgotPasswordBodyFieldTypeEnum_phone =
    const VendorForgotPasswordBodyFieldTypeEnum._('phone');

VendorForgotPasswordBodyFieldTypeEnum
    _$vendorForgotPasswordBodyFieldTypeEnumValueOf(String name) {
  switch (name) {
    case 'email':
      return _$vendorForgotPasswordBodyFieldTypeEnum_email;
    case 'phone':
      return _$vendorForgotPasswordBodyFieldTypeEnum_phone;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VendorForgotPasswordBodyFieldTypeEnum>
    _$vendorForgotPasswordBodyFieldTypeEnumValues = BuiltSet<
        VendorForgotPasswordBodyFieldTypeEnum>(const <VendorForgotPasswordBodyFieldTypeEnum>[
  _$vendorForgotPasswordBodyFieldTypeEnum_email,
  _$vendorForgotPasswordBodyFieldTypeEnum_phone,
]);

Serializer<VendorForgotPasswordBodyFieldTypeEnum>
    _$vendorForgotPasswordBodyFieldTypeEnumSerializer =
    _$VendorForgotPasswordBodyFieldTypeEnumSerializer();

class _$VendorForgotPasswordBodyFieldTypeEnumSerializer
    implements PrimitiveSerializer<VendorForgotPasswordBodyFieldTypeEnum> {
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
    VendorForgotPasswordBodyFieldTypeEnum
  ];
  @override
  final String wireName = 'VendorForgotPasswordBodyFieldTypeEnum';

  @override
  Object serialize(
          Serializers serializers, VendorForgotPasswordBodyFieldTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VendorForgotPasswordBodyFieldTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VendorForgotPasswordBodyFieldTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VendorForgotPasswordBody extends VendorForgotPasswordBody {
  @override
  final VendorForgotPasswordBodyFieldTypeEnum? fieldType;
  @override
  final String? email;
  @override
  final String? phone;

  factory _$VendorForgotPasswordBody(
          [void Function(VendorForgotPasswordBodyBuilder)? updates]) =>
      (VendorForgotPasswordBodyBuilder()..update(updates))._build();

  _$VendorForgotPasswordBody._({this.fieldType, this.email, this.phone})
      : super._();
  @override
  VendorForgotPasswordBody rebuild(
          void Function(VendorForgotPasswordBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorForgotPasswordBodyBuilder toBuilder() =>
      VendorForgotPasswordBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorForgotPasswordBody &&
        fieldType == other.fieldType &&
        email == other.email &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fieldType.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorForgotPasswordBody')
          ..add('fieldType', fieldType)
          ..add('email', email)
          ..add('phone', phone))
        .toString();
  }
}

class VendorForgotPasswordBodyBuilder
    implements
        Builder<VendorForgotPasswordBody, VendorForgotPasswordBodyBuilder> {
  _$VendorForgotPasswordBody? _$v;

  VendorForgotPasswordBodyFieldTypeEnum? _fieldType;
  VendorForgotPasswordBodyFieldTypeEnum? get fieldType => _$this._fieldType;
  set fieldType(VendorForgotPasswordBodyFieldTypeEnum? fieldType) =>
      _$this._fieldType = fieldType;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  VendorForgotPasswordBodyBuilder() {
    VendorForgotPasswordBody._defaults(this);
  }

  VendorForgotPasswordBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fieldType = $v.fieldType;
      _email = $v.email;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorForgotPasswordBody other) {
    _$v = other as _$VendorForgotPasswordBody;
  }

  @override
  void update(void Function(VendorForgotPasswordBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorForgotPasswordBody build() => _build();

  _$VendorForgotPasswordBody _build() {
    final _$result = _$v ??
        _$VendorForgotPasswordBody._(
          fieldType: fieldType,
          email: email,
          phone: phone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

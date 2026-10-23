// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_forgot_password_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsumerForgotPasswordBodyFieldTypeEnum
    _$consumerForgotPasswordBodyFieldTypeEnum_email =
    const ConsumerForgotPasswordBodyFieldTypeEnum._('email');
const ConsumerForgotPasswordBodyFieldTypeEnum
    _$consumerForgotPasswordBodyFieldTypeEnum_phone =
    const ConsumerForgotPasswordBodyFieldTypeEnum._('phone');

ConsumerForgotPasswordBodyFieldTypeEnum
    _$consumerForgotPasswordBodyFieldTypeEnumValueOf(String name) {
  switch (name) {
    case 'email':
      return _$consumerForgotPasswordBodyFieldTypeEnum_email;
    case 'phone':
      return _$consumerForgotPasswordBodyFieldTypeEnum_phone;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerForgotPasswordBodyFieldTypeEnum>
    _$consumerForgotPasswordBodyFieldTypeEnumValues = BuiltSet<
        ConsumerForgotPasswordBodyFieldTypeEnum>(const <ConsumerForgotPasswordBodyFieldTypeEnum>[
  _$consumerForgotPasswordBodyFieldTypeEnum_email,
  _$consumerForgotPasswordBodyFieldTypeEnum_phone,
]);

Serializer<ConsumerForgotPasswordBodyFieldTypeEnum>
    _$consumerForgotPasswordBodyFieldTypeEnumSerializer =
    _$ConsumerForgotPasswordBodyFieldTypeEnumSerializer();

class _$ConsumerForgotPasswordBodyFieldTypeEnumSerializer
    implements PrimitiveSerializer<ConsumerForgotPasswordBodyFieldTypeEnum> {
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
    ConsumerForgotPasswordBodyFieldTypeEnum
  ];
  @override
  final String wireName = 'ConsumerForgotPasswordBodyFieldTypeEnum';

  @override
  Object serialize(Serializers serializers,
          ConsumerForgotPasswordBodyFieldTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerForgotPasswordBodyFieldTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerForgotPasswordBodyFieldTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerForgotPasswordBody extends ConsumerForgotPasswordBody {
  @override
  final ConsumerForgotPasswordBodyFieldTypeEnum? fieldType;
  @override
  final String? email;
  @override
  final String? phone;

  factory _$ConsumerForgotPasswordBody(
          [void Function(ConsumerForgotPasswordBodyBuilder)? updates]) =>
      (ConsumerForgotPasswordBodyBuilder()..update(updates))._build();

  _$ConsumerForgotPasswordBody._({this.fieldType, this.email, this.phone})
      : super._();
  @override
  ConsumerForgotPasswordBody rebuild(
          void Function(ConsumerForgotPasswordBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerForgotPasswordBodyBuilder toBuilder() =>
      ConsumerForgotPasswordBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerForgotPasswordBody &&
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
    return (newBuiltValueToStringHelper(r'ConsumerForgotPasswordBody')
          ..add('fieldType', fieldType)
          ..add('email', email)
          ..add('phone', phone))
        .toString();
  }
}

class ConsumerForgotPasswordBodyBuilder
    implements
        Builder<ConsumerForgotPasswordBody, ConsumerForgotPasswordBodyBuilder> {
  _$ConsumerForgotPasswordBody? _$v;

  ConsumerForgotPasswordBodyFieldTypeEnum? _fieldType;
  ConsumerForgotPasswordBodyFieldTypeEnum? get fieldType => _$this._fieldType;
  set fieldType(ConsumerForgotPasswordBodyFieldTypeEnum? fieldType) =>
      _$this._fieldType = fieldType;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  ConsumerForgotPasswordBodyBuilder() {
    ConsumerForgotPasswordBody._defaults(this);
  }

  ConsumerForgotPasswordBodyBuilder get _$this {
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
  void replace(ConsumerForgotPasswordBody other) {
    _$v = other as _$ConsumerForgotPasswordBody;
  }

  @override
  void update(void Function(ConsumerForgotPasswordBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerForgotPasswordBody build() => _build();

  _$ConsumerForgotPasswordBody _build() {
    final _$result = _$v ??
        _$ConsumerForgotPasswordBody._(
          fieldType: fieldType,
          email: email,
          phone: phone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

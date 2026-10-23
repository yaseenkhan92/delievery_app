// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_login_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsumerLoginBodyLoginTypeEnum _$consumerLoginBodyLoginTypeEnum_manual =
    const ConsumerLoginBodyLoginTypeEnum._('manual');
const ConsumerLoginBodyLoginTypeEnum _$consumerLoginBodyLoginTypeEnum_otp =
    const ConsumerLoginBodyLoginTypeEnum._('otp');
const ConsumerLoginBodyLoginTypeEnum _$consumerLoginBodyLoginTypeEnum_social =
    const ConsumerLoginBodyLoginTypeEnum._('social');

ConsumerLoginBodyLoginTypeEnum _$consumerLoginBodyLoginTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'manual':
      return _$consumerLoginBodyLoginTypeEnum_manual;
    case 'otp':
      return _$consumerLoginBodyLoginTypeEnum_otp;
    case 'social':
      return _$consumerLoginBodyLoginTypeEnum_social;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerLoginBodyLoginTypeEnum>
    _$consumerLoginBodyLoginTypeEnumValues = BuiltSet<
        ConsumerLoginBodyLoginTypeEnum>(const <ConsumerLoginBodyLoginTypeEnum>[
  _$consumerLoginBodyLoginTypeEnum_manual,
  _$consumerLoginBodyLoginTypeEnum_otp,
  _$consumerLoginBodyLoginTypeEnum_social,
]);

const ConsumerLoginBodyFieldTypeEnum _$consumerLoginBodyFieldTypeEnum_phone =
    const ConsumerLoginBodyFieldTypeEnum._('phone');
const ConsumerLoginBodyFieldTypeEnum _$consumerLoginBodyFieldTypeEnum_email =
    const ConsumerLoginBodyFieldTypeEnum._('email');

ConsumerLoginBodyFieldTypeEnum _$consumerLoginBodyFieldTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'phone':
      return _$consumerLoginBodyFieldTypeEnum_phone;
    case 'email':
      return _$consumerLoginBodyFieldTypeEnum_email;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerLoginBodyFieldTypeEnum>
    _$consumerLoginBodyFieldTypeEnumValues = BuiltSet<
        ConsumerLoginBodyFieldTypeEnum>(const <ConsumerLoginBodyFieldTypeEnum>[
  _$consumerLoginBodyFieldTypeEnum_phone,
  _$consumerLoginBodyFieldTypeEnum_email,
]);

const ConsumerLoginBodyMediumEnum _$consumerLoginBodyMediumEnum_google =
    const ConsumerLoginBodyMediumEnum._('google');
const ConsumerLoginBodyMediumEnum _$consumerLoginBodyMediumEnum_facebook =
    const ConsumerLoginBodyMediumEnum._('facebook');
const ConsumerLoginBodyMediumEnum _$consumerLoginBodyMediumEnum_apple =
    const ConsumerLoginBodyMediumEnum._('apple');

ConsumerLoginBodyMediumEnum _$consumerLoginBodyMediumEnumValueOf(String name) {
  switch (name) {
    case 'google':
      return _$consumerLoginBodyMediumEnum_google;
    case 'facebook':
      return _$consumerLoginBodyMediumEnum_facebook;
    case 'apple':
      return _$consumerLoginBodyMediumEnum_apple;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerLoginBodyMediumEnum>
    _$consumerLoginBodyMediumEnumValues =
    BuiltSet<ConsumerLoginBodyMediumEnum>(const <ConsumerLoginBodyMediumEnum>[
  _$consumerLoginBodyMediumEnum_google,
  _$consumerLoginBodyMediumEnum_facebook,
  _$consumerLoginBodyMediumEnum_apple,
]);

const ConsumerLoginBodyVerifiedEnum _$consumerLoginBodyVerifiedEnum_default_ =
    const ConsumerLoginBodyVerifiedEnum._('default_');
const ConsumerLoginBodyVerifiedEnum _$consumerLoginBodyVerifiedEnum_no =
    const ConsumerLoginBodyVerifiedEnum._('no');

ConsumerLoginBodyVerifiedEnum _$consumerLoginBodyVerifiedEnumValueOf(
    String name) {
  switch (name) {
    case 'default_':
      return _$consumerLoginBodyVerifiedEnum_default_;
    case 'no':
      return _$consumerLoginBodyVerifiedEnum_no;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerLoginBodyVerifiedEnum>
    _$consumerLoginBodyVerifiedEnumValues = BuiltSet<
        ConsumerLoginBodyVerifiedEnum>(const <ConsumerLoginBodyVerifiedEnum>[
  _$consumerLoginBodyVerifiedEnum_default_,
  _$consumerLoginBodyVerifiedEnum_no,
]);

Serializer<ConsumerLoginBodyLoginTypeEnum>
    _$consumerLoginBodyLoginTypeEnumSerializer =
    _$ConsumerLoginBodyLoginTypeEnumSerializer();
Serializer<ConsumerLoginBodyFieldTypeEnum>
    _$consumerLoginBodyFieldTypeEnumSerializer =
    _$ConsumerLoginBodyFieldTypeEnumSerializer();
Serializer<ConsumerLoginBodyMediumEnum>
    _$consumerLoginBodyMediumEnumSerializer =
    _$ConsumerLoginBodyMediumEnumSerializer();
Serializer<ConsumerLoginBodyVerifiedEnum>
    _$consumerLoginBodyVerifiedEnumSerializer =
    _$ConsumerLoginBodyVerifiedEnumSerializer();

class _$ConsumerLoginBodyLoginTypeEnumSerializer
    implements PrimitiveSerializer<ConsumerLoginBodyLoginTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'manual': 'manual',
    'otp': 'otp',
    'social': 'social',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'manual': 'manual',
    'otp': 'otp',
    'social': 'social',
  };

  @override
  final Iterable<Type> types = const <Type>[ConsumerLoginBodyLoginTypeEnum];
  @override
  final String wireName = 'ConsumerLoginBodyLoginTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ConsumerLoginBodyLoginTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerLoginBodyLoginTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerLoginBodyLoginTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerLoginBodyFieldTypeEnumSerializer
    implements PrimitiveSerializer<ConsumerLoginBodyFieldTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'phone': 'phone',
    'email': 'email',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'phone': 'phone',
    'email': 'email',
  };

  @override
  final Iterable<Type> types = const <Type>[ConsumerLoginBodyFieldTypeEnum];
  @override
  final String wireName = 'ConsumerLoginBodyFieldTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ConsumerLoginBodyFieldTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerLoginBodyFieldTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerLoginBodyFieldTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerLoginBodyMediumEnumSerializer
    implements PrimitiveSerializer<ConsumerLoginBodyMediumEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'google': 'google',
    'facebook': 'facebook',
    'apple': 'apple',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'google': 'google',
    'facebook': 'facebook',
    'apple': 'apple',
  };

  @override
  final Iterable<Type> types = const <Type>[ConsumerLoginBodyMediumEnum];
  @override
  final String wireName = 'ConsumerLoginBodyMediumEnum';

  @override
  Object serialize(Serializers serializers, ConsumerLoginBodyMediumEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerLoginBodyMediumEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerLoginBodyMediumEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerLoginBodyVerifiedEnumSerializer
    implements PrimitiveSerializer<ConsumerLoginBodyVerifiedEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'no': 'no',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'no': 'no',
  };

  @override
  final Iterable<Type> types = const <Type>[ConsumerLoginBodyVerifiedEnum];
  @override
  final String wireName = 'ConsumerLoginBodyVerifiedEnum';

  @override
  Object serialize(
          Serializers serializers, ConsumerLoginBodyVerifiedEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerLoginBodyVerifiedEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerLoginBodyVerifiedEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerLoginBody extends ConsumerLoginBody {
  @override
  final ConsumerLoginBodyLoginTypeEnum loginType;
  @override
  final ConsumerLoginBodyFieldTypeEnum? fieldType;
  @override
  final String? emailOrPhone;
  @override
  final String? password;
  @override
  final String? token;
  @override
  final String? uniqueId;
  @override
  final String? email;
  @override
  final ConsumerLoginBodyMediumEnum? medium;
  @override
  final ConsumerLoginBodyAccessToken? accessToken;
  @override
  final ConsumerLoginBodyVerifiedEnum? verified;
  @override
  final int? guestId;

  factory _$ConsumerLoginBody(
          [void Function(ConsumerLoginBodyBuilder)? updates]) =>
      (ConsumerLoginBodyBuilder()..update(updates))._build();

  _$ConsumerLoginBody._(
      {required this.loginType,
      this.fieldType,
      this.emailOrPhone,
      this.password,
      this.token,
      this.uniqueId,
      this.email,
      this.medium,
      this.accessToken,
      this.verified,
      this.guestId})
      : super._();
  @override
  ConsumerLoginBody rebuild(void Function(ConsumerLoginBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerLoginBodyBuilder toBuilder() =>
      ConsumerLoginBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerLoginBody &&
        loginType == other.loginType &&
        fieldType == other.fieldType &&
        emailOrPhone == other.emailOrPhone &&
        password == other.password &&
        token == other.token &&
        uniqueId == other.uniqueId &&
        email == other.email &&
        medium == other.medium &&
        accessToken == other.accessToken &&
        verified == other.verified &&
        guestId == other.guestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loginType.hashCode);
    _$hash = $jc(_$hash, fieldType.hashCode);
    _$hash = $jc(_$hash, emailOrPhone.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, uniqueId.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, verified.hashCode);
    _$hash = $jc(_$hash, guestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerLoginBody')
          ..add('loginType', loginType)
          ..add('fieldType', fieldType)
          ..add('emailOrPhone', emailOrPhone)
          ..add('password', password)
          ..add('token', token)
          ..add('uniqueId', uniqueId)
          ..add('email', email)
          ..add('medium', medium)
          ..add('accessToken', accessToken)
          ..add('verified', verified)
          ..add('guestId', guestId))
        .toString();
  }
}

class ConsumerLoginBodyBuilder
    implements Builder<ConsumerLoginBody, ConsumerLoginBodyBuilder> {
  _$ConsumerLoginBody? _$v;

  ConsumerLoginBodyLoginTypeEnum? _loginType;
  ConsumerLoginBodyLoginTypeEnum? get loginType => _$this._loginType;
  set loginType(ConsumerLoginBodyLoginTypeEnum? loginType) =>
      _$this._loginType = loginType;

  ConsumerLoginBodyFieldTypeEnum? _fieldType;
  ConsumerLoginBodyFieldTypeEnum? get fieldType => _$this._fieldType;
  set fieldType(ConsumerLoginBodyFieldTypeEnum? fieldType) =>
      _$this._fieldType = fieldType;

  String? _emailOrPhone;
  String? get emailOrPhone => _$this._emailOrPhone;
  set emailOrPhone(String? emailOrPhone) => _$this._emailOrPhone = emailOrPhone;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _uniqueId;
  String? get uniqueId => _$this._uniqueId;
  set uniqueId(String? uniqueId) => _$this._uniqueId = uniqueId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ConsumerLoginBodyMediumEnum? _medium;
  ConsumerLoginBodyMediumEnum? get medium => _$this._medium;
  set medium(ConsumerLoginBodyMediumEnum? medium) => _$this._medium = medium;

  ConsumerLoginBodyAccessTokenBuilder? _accessToken;
  ConsumerLoginBodyAccessTokenBuilder get accessToken =>
      _$this._accessToken ??= ConsumerLoginBodyAccessTokenBuilder();
  set accessToken(ConsumerLoginBodyAccessTokenBuilder? accessToken) =>
      _$this._accessToken = accessToken;

  ConsumerLoginBodyVerifiedEnum? _verified;
  ConsumerLoginBodyVerifiedEnum? get verified => _$this._verified;
  set verified(ConsumerLoginBodyVerifiedEnum? verified) =>
      _$this._verified = verified;

  int? _guestId;
  int? get guestId => _$this._guestId;
  set guestId(int? guestId) => _$this._guestId = guestId;

  ConsumerLoginBodyBuilder() {
    ConsumerLoginBody._defaults(this);
  }

  ConsumerLoginBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loginType = $v.loginType;
      _fieldType = $v.fieldType;
      _emailOrPhone = $v.emailOrPhone;
      _password = $v.password;
      _token = $v.token;
      _uniqueId = $v.uniqueId;
      _email = $v.email;
      _medium = $v.medium;
      _accessToken = $v.accessToken?.toBuilder();
      _verified = $v.verified;
      _guestId = $v.guestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerLoginBody other) {
    _$v = other as _$ConsumerLoginBody;
  }

  @override
  void update(void Function(ConsumerLoginBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerLoginBody build() => _build();

  _$ConsumerLoginBody _build() {
    _$ConsumerLoginBody _$result;
    try {
      _$result = _$v ??
          _$ConsumerLoginBody._(
            loginType: BuiltValueNullFieldError.checkNotNull(
                loginType, r'ConsumerLoginBody', 'loginType'),
            fieldType: fieldType,
            emailOrPhone: emailOrPhone,
            password: password,
            token: token,
            uniqueId: uniqueId,
            email: email,
            medium: medium,
            accessToken: _accessToken?.build(),
            verified: verified,
            guestId: guestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessToken';
        _accessToken?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerLoginBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

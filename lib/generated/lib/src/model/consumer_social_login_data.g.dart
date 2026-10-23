// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_social_login_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsumerSocialLoginDataIsPersonalInfoEnum
    _$consumerSocialLoginDataIsPersonalInfoEnum_number0 =
    const ConsumerSocialLoginDataIsPersonalInfoEnum._('number0');
const ConsumerSocialLoginDataIsPersonalInfoEnum
    _$consumerSocialLoginDataIsPersonalInfoEnum_number1 =
    const ConsumerSocialLoginDataIsPersonalInfoEnum._('number1');

ConsumerSocialLoginDataIsPersonalInfoEnum
    _$consumerSocialLoginDataIsPersonalInfoEnumValueOf(String name) {
  switch (name) {
    case 'number0':
      return _$consumerSocialLoginDataIsPersonalInfoEnum_number0;
    case 'number1':
      return _$consumerSocialLoginDataIsPersonalInfoEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerSocialLoginDataIsPersonalInfoEnum>
    _$consumerSocialLoginDataIsPersonalInfoEnumValues = BuiltSet<
        ConsumerSocialLoginDataIsPersonalInfoEnum>(const <ConsumerSocialLoginDataIsPersonalInfoEnum>[
  _$consumerSocialLoginDataIsPersonalInfoEnum_number0,
  _$consumerSocialLoginDataIsPersonalInfoEnum_number1,
]);

Serializer<ConsumerSocialLoginDataIsPersonalInfoEnum>
    _$consumerSocialLoginDataIsPersonalInfoEnumSerializer =
    _$ConsumerSocialLoginDataIsPersonalInfoEnumSerializer();

class _$ConsumerSocialLoginDataIsPersonalInfoEnumSerializer
    implements PrimitiveSerializer<ConsumerSocialLoginDataIsPersonalInfoEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ConsumerSocialLoginDataIsPersonalInfoEnum
  ];
  @override
  final String wireName = 'ConsumerSocialLoginDataIsPersonalInfoEnum';

  @override
  Object serialize(Serializers serializers,
          ConsumerSocialLoginDataIsPersonalInfoEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerSocialLoginDataIsPersonalInfoEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerSocialLoginDataIsPersonalInfoEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerSocialLoginData extends ConsumerSocialLoginData {
  @override
  final String? token;
  @override
  final int? isPhoneVerified;
  @override
  final int? isEmailVerified;
  @override
  final ConsumerSocialLoginDataIsPersonalInfoEnum? isPersonalInfo;
  @override
  final ConsumerSocialLoginExistUser? isExistUser;
  @override
  final String? loginType;
  @override
  final String? email;

  factory _$ConsumerSocialLoginData(
          [void Function(ConsumerSocialLoginDataBuilder)? updates]) =>
      (ConsumerSocialLoginDataBuilder()..update(updates))._build();

  _$ConsumerSocialLoginData._(
      {this.token,
      this.isPhoneVerified,
      this.isEmailVerified,
      this.isPersonalInfo,
      this.isExistUser,
      this.loginType,
      this.email})
      : super._();
  @override
  ConsumerSocialLoginData rebuild(
          void Function(ConsumerSocialLoginDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerSocialLoginDataBuilder toBuilder() =>
      ConsumerSocialLoginDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerSocialLoginData &&
        token == other.token &&
        isPhoneVerified == other.isPhoneVerified &&
        isEmailVerified == other.isEmailVerified &&
        isPersonalInfo == other.isPersonalInfo &&
        isExistUser == other.isExistUser &&
        loginType == other.loginType &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jc(_$hash, isEmailVerified.hashCode);
    _$hash = $jc(_$hash, isPersonalInfo.hashCode);
    _$hash = $jc(_$hash, isExistUser.hashCode);
    _$hash = $jc(_$hash, loginType.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerSocialLoginData')
          ..add('token', token)
          ..add('isPhoneVerified', isPhoneVerified)
          ..add('isEmailVerified', isEmailVerified)
          ..add('isPersonalInfo', isPersonalInfo)
          ..add('isExistUser', isExistUser)
          ..add('loginType', loginType)
          ..add('email', email))
        .toString();
  }
}

class ConsumerSocialLoginDataBuilder
    implements
        Builder<ConsumerSocialLoginData, ConsumerSocialLoginDataBuilder> {
  _$ConsumerSocialLoginData? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  int? _isPhoneVerified;
  int? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(int? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  int? _isEmailVerified;
  int? get isEmailVerified => _$this._isEmailVerified;
  set isEmailVerified(int? isEmailVerified) =>
      _$this._isEmailVerified = isEmailVerified;

  ConsumerSocialLoginDataIsPersonalInfoEnum? _isPersonalInfo;
  ConsumerSocialLoginDataIsPersonalInfoEnum? get isPersonalInfo =>
      _$this._isPersonalInfo;
  set isPersonalInfo(
          ConsumerSocialLoginDataIsPersonalInfoEnum? isPersonalInfo) =>
      _$this._isPersonalInfo = isPersonalInfo;

  ConsumerSocialLoginExistUserBuilder? _isExistUser;
  ConsumerSocialLoginExistUserBuilder get isExistUser =>
      _$this._isExistUser ??= ConsumerSocialLoginExistUserBuilder();
  set isExistUser(ConsumerSocialLoginExistUserBuilder? isExistUser) =>
      _$this._isExistUser = isExistUser;

  String? _loginType;
  String? get loginType => _$this._loginType;
  set loginType(String? loginType) => _$this._loginType = loginType;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ConsumerSocialLoginDataBuilder() {
    ConsumerSocialLoginData._defaults(this);
  }

  ConsumerSocialLoginDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _isPhoneVerified = $v.isPhoneVerified;
      _isEmailVerified = $v.isEmailVerified;
      _isPersonalInfo = $v.isPersonalInfo;
      _isExistUser = $v.isExistUser?.toBuilder();
      _loginType = $v.loginType;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerSocialLoginData other) {
    _$v = other as _$ConsumerSocialLoginData;
  }

  @override
  void update(void Function(ConsumerSocialLoginDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerSocialLoginData build() => _build();

  _$ConsumerSocialLoginData _build() {
    _$ConsumerSocialLoginData _$result;
    try {
      _$result = _$v ??
          _$ConsumerSocialLoginData._(
            token: token,
            isPhoneVerified: isPhoneVerified,
            isEmailVerified: isEmailVerified,
            isPersonalInfo: isPersonalInfo,
            isExistUser: _isExistUser?.build(),
            loginType: loginType,
            email: email,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'isExistUser';
        _isExistUser?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerSocialLoginData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

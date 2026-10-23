// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_google_sign_in_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsumerGoogleSignInBodyVerifiedEnum
    _$consumerGoogleSignInBodyVerifiedEnum_default_ =
    const ConsumerGoogleSignInBodyVerifiedEnum._('default_');
const ConsumerGoogleSignInBodyVerifiedEnum
    _$consumerGoogleSignInBodyVerifiedEnum_no =
    const ConsumerGoogleSignInBodyVerifiedEnum._('no');

ConsumerGoogleSignInBodyVerifiedEnum
    _$consumerGoogleSignInBodyVerifiedEnumValueOf(String name) {
  switch (name) {
    case 'default_':
      return _$consumerGoogleSignInBodyVerifiedEnum_default_;
    case 'no':
      return _$consumerGoogleSignInBodyVerifiedEnum_no;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerGoogleSignInBodyVerifiedEnum>
    _$consumerGoogleSignInBodyVerifiedEnumValues = BuiltSet<
        ConsumerGoogleSignInBodyVerifiedEnum>(const <ConsumerGoogleSignInBodyVerifiedEnum>[
  _$consumerGoogleSignInBodyVerifiedEnum_default_,
  _$consumerGoogleSignInBodyVerifiedEnum_no,
]);

Serializer<ConsumerGoogleSignInBodyVerifiedEnum>
    _$consumerGoogleSignInBodyVerifiedEnumSerializer =
    _$ConsumerGoogleSignInBodyVerifiedEnumSerializer();

class _$ConsumerGoogleSignInBodyVerifiedEnumSerializer
    implements PrimitiveSerializer<ConsumerGoogleSignInBodyVerifiedEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'no': 'no',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'no': 'no',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ConsumerGoogleSignInBodyVerifiedEnum
  ];
  @override
  final String wireName = 'ConsumerGoogleSignInBodyVerifiedEnum';

  @override
  Object serialize(
          Serializers serializers, ConsumerGoogleSignInBodyVerifiedEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerGoogleSignInBodyVerifiedEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerGoogleSignInBodyVerifiedEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerGoogleSignInBody extends ConsumerGoogleSignInBody {
  @override
  final String token;
  @override
  final String email;
  @override
  final String uniqueId;
  @override
  final ConsumerGoogleSignInBodyAccessToken? accessToken;
  @override
  final int? guestId;
  @override
  final ConsumerGoogleSignInBodyVerifiedEnum? verified;

  factory _$ConsumerGoogleSignInBody(
          [void Function(ConsumerGoogleSignInBodyBuilder)? updates]) =>
      (ConsumerGoogleSignInBodyBuilder()..update(updates))._build();

  _$ConsumerGoogleSignInBody._(
      {required this.token,
      required this.email,
      required this.uniqueId,
      this.accessToken,
      this.guestId,
      this.verified})
      : super._();
  @override
  ConsumerGoogleSignInBody rebuild(
          void Function(ConsumerGoogleSignInBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerGoogleSignInBodyBuilder toBuilder() =>
      ConsumerGoogleSignInBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerGoogleSignInBody &&
        token == other.token &&
        email == other.email &&
        uniqueId == other.uniqueId &&
        accessToken == other.accessToken &&
        guestId == other.guestId &&
        verified == other.verified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, uniqueId.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, guestId.hashCode);
    _$hash = $jc(_$hash, verified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerGoogleSignInBody')
          ..add('token', token)
          ..add('email', email)
          ..add('uniqueId', uniqueId)
          ..add('accessToken', accessToken)
          ..add('guestId', guestId)
          ..add('verified', verified))
        .toString();
  }
}

class ConsumerGoogleSignInBodyBuilder
    implements
        Builder<ConsumerGoogleSignInBody, ConsumerGoogleSignInBodyBuilder> {
  _$ConsumerGoogleSignInBody? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _uniqueId;
  String? get uniqueId => _$this._uniqueId;
  set uniqueId(String? uniqueId) => _$this._uniqueId = uniqueId;

  ConsumerGoogleSignInBodyAccessTokenBuilder? _accessToken;
  ConsumerGoogleSignInBodyAccessTokenBuilder get accessToken =>
      _$this._accessToken ??= ConsumerGoogleSignInBodyAccessTokenBuilder();
  set accessToken(ConsumerGoogleSignInBodyAccessTokenBuilder? accessToken) =>
      _$this._accessToken = accessToken;

  int? _guestId;
  int? get guestId => _$this._guestId;
  set guestId(int? guestId) => _$this._guestId = guestId;

  ConsumerGoogleSignInBodyVerifiedEnum? _verified;
  ConsumerGoogleSignInBodyVerifiedEnum? get verified => _$this._verified;
  set verified(ConsumerGoogleSignInBodyVerifiedEnum? verified) =>
      _$this._verified = verified;

  ConsumerGoogleSignInBodyBuilder() {
    ConsumerGoogleSignInBody._defaults(this);
  }

  ConsumerGoogleSignInBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _email = $v.email;
      _uniqueId = $v.uniqueId;
      _accessToken = $v.accessToken?.toBuilder();
      _guestId = $v.guestId;
      _verified = $v.verified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerGoogleSignInBody other) {
    _$v = other as _$ConsumerGoogleSignInBody;
  }

  @override
  void update(void Function(ConsumerGoogleSignInBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerGoogleSignInBody build() => _build();

  _$ConsumerGoogleSignInBody _build() {
    _$ConsumerGoogleSignInBody _$result;
    try {
      _$result = _$v ??
          _$ConsumerGoogleSignInBody._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'ConsumerGoogleSignInBody', 'token'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'ConsumerGoogleSignInBody', 'email'),
            uniqueId: BuiltValueNullFieldError.checkNotNull(
                uniqueId, r'ConsumerGoogleSignInBody', 'uniqueId'),
            accessToken: _accessToken?.build(),
            guestId: guestId,
            verified: verified,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessToken';
        _accessToken?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerGoogleSignInBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

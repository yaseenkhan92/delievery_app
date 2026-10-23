// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_profile_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ConsumerProfileUserBuilder {
  void replace(ConsumerProfileUser other);
  void update(void Function(ConsumerProfileUserBuilder) updates);
  String? get id;
  set id(String? id);

  String? get fName;
  set fName(String? fName);

  String? get lName;
  set lName(String? lName);

  String? get phone;
  set phone(String? phone);

  String? get email;
  set email(String? email);

  String? get image;
  set image(String? image);

  int? get isPhoneVerified;
  set isPhoneVerified(int? isPhoneVerified);

  int? get isEmailVerified;
  set isEmailVerified(int? isEmailVerified);

  String? get refCode;
  set refCode(String? refCode);

  int? get zoneId;
  set zoneId(int? zoneId);

  num? get walletBalance;
  set walletBalance(num? walletBalance);

  num? get loyaltyPoint;
  set loyaltyPoint(num? loyaltyPoint);

  String? get interest;
  set interest(String? interest);

  String? get cmFirebaseToken;
  set cmFirebaseToken(String? cmFirebaseToken);

  String? get currentLanguageKey;
  set currentLanguageKey(String? currentLanguageKey);

  int? get orderCount;
  set orderCount(int? orderCount);
}

class _$$ConsumerProfileUser extends $ConsumerProfileUser {
  @override
  final String? id;
  @override
  final String? fName;
  @override
  final String? lName;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? image;
  @override
  final int? isPhoneVerified;
  @override
  final int? isEmailVerified;
  @override
  final String? refCode;
  @override
  final int? zoneId;
  @override
  final num? walletBalance;
  @override
  final num? loyaltyPoint;
  @override
  final String? interest;
  @override
  final String? cmFirebaseToken;
  @override
  final String? currentLanguageKey;
  @override
  final int? orderCount;

  factory _$$ConsumerProfileUser(
          [void Function($ConsumerProfileUserBuilder)? updates]) =>
      ($ConsumerProfileUserBuilder()..update(updates))._build();

  _$$ConsumerProfileUser._(
      {this.id,
      this.fName,
      this.lName,
      this.phone,
      this.email,
      this.image,
      this.isPhoneVerified,
      this.isEmailVerified,
      this.refCode,
      this.zoneId,
      this.walletBalance,
      this.loyaltyPoint,
      this.interest,
      this.cmFirebaseToken,
      this.currentLanguageKey,
      this.orderCount})
      : super._();
  @override
  $ConsumerProfileUser rebuild(
          void Function($ConsumerProfileUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ConsumerProfileUserBuilder toBuilder() =>
      $ConsumerProfileUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ConsumerProfileUser &&
        id == other.id &&
        fName == other.fName &&
        lName == other.lName &&
        phone == other.phone &&
        email == other.email &&
        image == other.image &&
        isPhoneVerified == other.isPhoneVerified &&
        isEmailVerified == other.isEmailVerified &&
        refCode == other.refCode &&
        zoneId == other.zoneId &&
        walletBalance == other.walletBalance &&
        loyaltyPoint == other.loyaltyPoint &&
        interest == other.interest &&
        cmFirebaseToken == other.cmFirebaseToken &&
        currentLanguageKey == other.currentLanguageKey &&
        orderCount == other.orderCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fName.hashCode);
    _$hash = $jc(_$hash, lName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jc(_$hash, isEmailVerified.hashCode);
    _$hash = $jc(_$hash, refCode.hashCode);
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jc(_$hash, walletBalance.hashCode);
    _$hash = $jc(_$hash, loyaltyPoint.hashCode);
    _$hash = $jc(_$hash, interest.hashCode);
    _$hash = $jc(_$hash, cmFirebaseToken.hashCode);
    _$hash = $jc(_$hash, currentLanguageKey.hashCode);
    _$hash = $jc(_$hash, orderCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$ConsumerProfileUser')
          ..add('id', id)
          ..add('fName', fName)
          ..add('lName', lName)
          ..add('phone', phone)
          ..add('email', email)
          ..add('image', image)
          ..add('isPhoneVerified', isPhoneVerified)
          ..add('isEmailVerified', isEmailVerified)
          ..add('refCode', refCode)
          ..add('zoneId', zoneId)
          ..add('walletBalance', walletBalance)
          ..add('loyaltyPoint', loyaltyPoint)
          ..add('interest', interest)
          ..add('cmFirebaseToken', cmFirebaseToken)
          ..add('currentLanguageKey', currentLanguageKey)
          ..add('orderCount', orderCount))
        .toString();
  }
}

class $ConsumerProfileUserBuilder
    implements
        Builder<$ConsumerProfileUser, $ConsumerProfileUserBuilder>,
        ConsumerProfileUserBuilder {
  _$$ConsumerProfileUser? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _fName;
  String? get fName => _$this._fName;
  set fName(covariant String? fName) => _$this._fName = fName;

  String? _lName;
  String? get lName => _$this._lName;
  set lName(covariant String? lName) => _$this._lName = lName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(covariant String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(covariant String? email) => _$this._email = email;

  String? _image;
  String? get image => _$this._image;
  set image(covariant String? image) => _$this._image = image;

  int? _isPhoneVerified;
  int? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(covariant int? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  int? _isEmailVerified;
  int? get isEmailVerified => _$this._isEmailVerified;
  set isEmailVerified(covariant int? isEmailVerified) =>
      _$this._isEmailVerified = isEmailVerified;

  String? _refCode;
  String? get refCode => _$this._refCode;
  set refCode(covariant String? refCode) => _$this._refCode = refCode;

  int? _zoneId;
  int? get zoneId => _$this._zoneId;
  set zoneId(covariant int? zoneId) => _$this._zoneId = zoneId;

  num? _walletBalance;
  num? get walletBalance => _$this._walletBalance;
  set walletBalance(covariant num? walletBalance) =>
      _$this._walletBalance = walletBalance;

  num? _loyaltyPoint;
  num? get loyaltyPoint => _$this._loyaltyPoint;
  set loyaltyPoint(covariant num? loyaltyPoint) =>
      _$this._loyaltyPoint = loyaltyPoint;

  String? _interest;
  String? get interest => _$this._interest;
  set interest(covariant String? interest) => _$this._interest = interest;

  String? _cmFirebaseToken;
  String? get cmFirebaseToken => _$this._cmFirebaseToken;
  set cmFirebaseToken(covariant String? cmFirebaseToken) =>
      _$this._cmFirebaseToken = cmFirebaseToken;

  String? _currentLanguageKey;
  String? get currentLanguageKey => _$this._currentLanguageKey;
  set currentLanguageKey(covariant String? currentLanguageKey) =>
      _$this._currentLanguageKey = currentLanguageKey;

  int? _orderCount;
  int? get orderCount => _$this._orderCount;
  set orderCount(covariant int? orderCount) => _$this._orderCount = orderCount;

  $ConsumerProfileUserBuilder() {
    $ConsumerProfileUser._defaults(this);
  }

  $ConsumerProfileUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fName = $v.fName;
      _lName = $v.lName;
      _phone = $v.phone;
      _email = $v.email;
      _image = $v.image;
      _isPhoneVerified = $v.isPhoneVerified;
      _isEmailVerified = $v.isEmailVerified;
      _refCode = $v.refCode;
      _zoneId = $v.zoneId;
      _walletBalance = $v.walletBalance;
      _loyaltyPoint = $v.loyaltyPoint;
      _interest = $v.interest;
      _cmFirebaseToken = $v.cmFirebaseToken;
      _currentLanguageKey = $v.currentLanguageKey;
      _orderCount = $v.orderCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ConsumerProfileUser other) {
    _$v = other as _$$ConsumerProfileUser;
  }

  @override
  void update(void Function($ConsumerProfileUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ConsumerProfileUser build() => _build();

  _$$ConsumerProfileUser _build() {
    final _$result = _$v ??
        _$$ConsumerProfileUser._(
          id: id,
          fName: fName,
          lName: lName,
          phone: phone,
          email: email,
          image: image,
          isPhoneVerified: isPhoneVerified,
          isEmailVerified: isEmailVerified,
          refCode: refCode,
          zoneId: zoneId,
          walletBalance: walletBalance,
          loyaltyPoint: loyaltyPoint,
          interest: interest,
          cmFirebaseToken: cmFirebaseToken,
          currentLanguageKey: currentLanguageKey,
          orderCount: orderCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

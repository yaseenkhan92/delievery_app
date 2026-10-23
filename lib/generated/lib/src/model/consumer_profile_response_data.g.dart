// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_profile_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerProfileResponseData extends ConsumerProfileResponseData {
  @override
  final bool? isValidForDiscount;
  @override
  final int? memberSinceDays;
  @override
  final num? discountAmount;
  @override
  final String? validity;
  @override
  final String? discountAmountType;
  @override
  final JsonObject? userinfo;
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

  factory _$ConsumerProfileResponseData(
          [void Function(ConsumerProfileResponseDataBuilder)? updates]) =>
      (ConsumerProfileResponseDataBuilder()..update(updates))._build();

  _$ConsumerProfileResponseData._(
      {this.isValidForDiscount,
      this.memberSinceDays,
      this.discountAmount,
      this.validity,
      this.discountAmountType,
      this.userinfo,
      this.id,
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
  ConsumerProfileResponseData rebuild(
          void Function(ConsumerProfileResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerProfileResponseDataBuilder toBuilder() =>
      ConsumerProfileResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerProfileResponseData &&
        isValidForDiscount == other.isValidForDiscount &&
        memberSinceDays == other.memberSinceDays &&
        discountAmount == other.discountAmount &&
        validity == other.validity &&
        discountAmountType == other.discountAmountType &&
        userinfo == other.userinfo &&
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
    _$hash = $jc(_$hash, isValidForDiscount.hashCode);
    _$hash = $jc(_$hash, memberSinceDays.hashCode);
    _$hash = $jc(_$hash, discountAmount.hashCode);
    _$hash = $jc(_$hash, validity.hashCode);
    _$hash = $jc(_$hash, discountAmountType.hashCode);
    _$hash = $jc(_$hash, userinfo.hashCode);
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
    return (newBuiltValueToStringHelper(r'ConsumerProfileResponseData')
          ..add('isValidForDiscount', isValidForDiscount)
          ..add('memberSinceDays', memberSinceDays)
          ..add('discountAmount', discountAmount)
          ..add('validity', validity)
          ..add('discountAmountType', discountAmountType)
          ..add('userinfo', userinfo)
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

class ConsumerProfileResponseDataBuilder
    implements
        Builder<ConsumerProfileResponseData,
            ConsumerProfileResponseDataBuilder>,
        ConsumerProfileUserBuilder {
  _$ConsumerProfileResponseData? _$v;

  bool? _isValidForDiscount;
  bool? get isValidForDiscount => _$this._isValidForDiscount;
  set isValidForDiscount(covariant bool? isValidForDiscount) =>
      _$this._isValidForDiscount = isValidForDiscount;

  int? _memberSinceDays;
  int? get memberSinceDays => _$this._memberSinceDays;
  set memberSinceDays(covariant int? memberSinceDays) =>
      _$this._memberSinceDays = memberSinceDays;

  num? _discountAmount;
  num? get discountAmount => _$this._discountAmount;
  set discountAmount(covariant num? discountAmount) =>
      _$this._discountAmount = discountAmount;

  String? _validity;
  String? get validity => _$this._validity;
  set validity(covariant String? validity) => _$this._validity = validity;

  String? _discountAmountType;
  String? get discountAmountType => _$this._discountAmountType;
  set discountAmountType(covariant String? discountAmountType) =>
      _$this._discountAmountType = discountAmountType;

  JsonObject? _userinfo;
  JsonObject? get userinfo => _$this._userinfo;
  set userinfo(covariant JsonObject? userinfo) => _$this._userinfo = userinfo;

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

  ConsumerProfileResponseDataBuilder() {
    ConsumerProfileResponseData._defaults(this);
  }

  ConsumerProfileResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isValidForDiscount = $v.isValidForDiscount;
      _memberSinceDays = $v.memberSinceDays;
      _discountAmount = $v.discountAmount;
      _validity = $v.validity;
      _discountAmountType = $v.discountAmountType;
      _userinfo = $v.userinfo;
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
  void replace(covariant ConsumerProfileResponseData other) {
    _$v = other as _$ConsumerProfileResponseData;
  }

  @override
  void update(void Function(ConsumerProfileResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerProfileResponseData build() => _build();

  _$ConsumerProfileResponseData _build() {
    final _$result = _$v ??
        _$ConsumerProfileResponseData._(
          isValidForDiscount: isValidForDiscount,
          memberSinceDays: memberSinceDays,
          discountAmount: discountAmount,
          validity: validity,
          discountAmountType: discountAmountType,
          userinfo: userinfo,
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

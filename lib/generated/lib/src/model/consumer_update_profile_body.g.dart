// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_update_profile_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerUpdateProfileBody extends ConsumerUpdateProfileBody {
  @override
  final String? name;
  @override
  final String? fName;
  @override
  final String? lName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? image;
  @override
  final String? currentLanguageKey;
  @override
  final int? zoneId;

  factory _$ConsumerUpdateProfileBody(
          [void Function(ConsumerUpdateProfileBodyBuilder)? updates]) =>
      (ConsumerUpdateProfileBodyBuilder()..update(updates))._build();

  _$ConsumerUpdateProfileBody._(
      {this.name,
      this.fName,
      this.lName,
      this.email,
      this.phone,
      this.image,
      this.currentLanguageKey,
      this.zoneId})
      : super._();
  @override
  ConsumerUpdateProfileBody rebuild(
          void Function(ConsumerUpdateProfileBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerUpdateProfileBodyBuilder toBuilder() =>
      ConsumerUpdateProfileBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerUpdateProfileBody &&
        name == other.name &&
        fName == other.fName &&
        lName == other.lName &&
        email == other.email &&
        phone == other.phone &&
        image == other.image &&
        currentLanguageKey == other.currentLanguageKey &&
        zoneId == other.zoneId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, fName.hashCode);
    _$hash = $jc(_$hash, lName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, currentLanguageKey.hashCode);
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerUpdateProfileBody')
          ..add('name', name)
          ..add('fName', fName)
          ..add('lName', lName)
          ..add('email', email)
          ..add('phone', phone)
          ..add('image', image)
          ..add('currentLanguageKey', currentLanguageKey)
          ..add('zoneId', zoneId))
        .toString();
  }
}

class ConsumerUpdateProfileBodyBuilder
    implements
        Builder<ConsumerUpdateProfileBody, ConsumerUpdateProfileBodyBuilder> {
  _$ConsumerUpdateProfileBody? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _fName;
  String? get fName => _$this._fName;
  set fName(String? fName) => _$this._fName = fName;

  String? _lName;
  String? get lName => _$this._lName;
  set lName(String? lName) => _$this._lName = lName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _currentLanguageKey;
  String? get currentLanguageKey => _$this._currentLanguageKey;
  set currentLanguageKey(String? currentLanguageKey) =>
      _$this._currentLanguageKey = currentLanguageKey;

  int? _zoneId;
  int? get zoneId => _$this._zoneId;
  set zoneId(int? zoneId) => _$this._zoneId = zoneId;

  ConsumerUpdateProfileBodyBuilder() {
    ConsumerUpdateProfileBody._defaults(this);
  }

  ConsumerUpdateProfileBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _fName = $v.fName;
      _lName = $v.lName;
      _email = $v.email;
      _phone = $v.phone;
      _image = $v.image;
      _currentLanguageKey = $v.currentLanguageKey;
      _zoneId = $v.zoneId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerUpdateProfileBody other) {
    _$v = other as _$ConsumerUpdateProfileBody;
  }

  @override
  void update(void Function(ConsumerUpdateProfileBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerUpdateProfileBody build() => _build();

  _$ConsumerUpdateProfileBody _build() {
    final _$result = _$v ??
        _$ConsumerUpdateProfileBody._(
          name: name,
          fName: fName,
          lName: lName,
          email: email,
          phone: phone,
          image: image,
          currentLanguageKey: currentLanguageKey,
          zoneId: zoneId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

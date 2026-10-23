// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_user_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatUserInfo extends ChatUserInfo {
  @override
  final int? id;
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
  final int? userId;
  @override
  final int? vendorId;
  @override
  final int? deliverymanId;

  factory _$ChatUserInfo([void Function(ChatUserInfoBuilder)? updates]) =>
      (ChatUserInfoBuilder()..update(updates))._build();

  _$ChatUserInfo._(
      {this.id,
      this.fName,
      this.lName,
      this.phone,
      this.email,
      this.image,
      this.userId,
      this.vendorId,
      this.deliverymanId})
      : super._();
  @override
  ChatUserInfo rebuild(void Function(ChatUserInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatUserInfoBuilder toBuilder() => ChatUserInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatUserInfo &&
        id == other.id &&
        fName == other.fName &&
        lName == other.lName &&
        phone == other.phone &&
        email == other.email &&
        image == other.image &&
        userId == other.userId &&
        vendorId == other.vendorId &&
        deliverymanId == other.deliverymanId;
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
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, vendorId.hashCode);
    _$hash = $jc(_$hash, deliverymanId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatUserInfo')
          ..add('id', id)
          ..add('fName', fName)
          ..add('lName', lName)
          ..add('phone', phone)
          ..add('email', email)
          ..add('image', image)
          ..add('userId', userId)
          ..add('vendorId', vendorId)
          ..add('deliverymanId', deliverymanId))
        .toString();
  }
}

class ChatUserInfoBuilder
    implements Builder<ChatUserInfo, ChatUserInfoBuilder> {
  _$ChatUserInfo? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _fName;
  String? get fName => _$this._fName;
  set fName(String? fName) => _$this._fName = fName;

  String? _lName;
  String? get lName => _$this._lName;
  set lName(String? lName) => _$this._lName = lName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _vendorId;
  int? get vendorId => _$this._vendorId;
  set vendorId(int? vendorId) => _$this._vendorId = vendorId;

  int? _deliverymanId;
  int? get deliverymanId => _$this._deliverymanId;
  set deliverymanId(int? deliverymanId) =>
      _$this._deliverymanId = deliverymanId;

  ChatUserInfoBuilder() {
    ChatUserInfo._defaults(this);
  }

  ChatUserInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fName = $v.fName;
      _lName = $v.lName;
      _phone = $v.phone;
      _email = $v.email;
      _image = $v.image;
      _userId = $v.userId;
      _vendorId = $v.vendorId;
      _deliverymanId = $v.deliverymanId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatUserInfo other) {
    _$v = other as _$ChatUserInfo;
  }

  @override
  void update(void Function(ChatUserInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatUserInfo build() => _build();

  _$ChatUserInfo _build() {
    final _$result = _$v ??
        _$ChatUserInfo._(
          id: id,
          fName: fName,
          lName: lName,
          phone: phone,
          email: email,
          image: image,
          userId: userId,
          vendorId: vendorId,
          deliverymanId: deliverymanId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_order_track_delivery_man.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerOrderTrackDeliveryMan extends ConsumerOrderTrackDeliveryMan {
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
  final String? imageUrl;

  factory _$ConsumerOrderTrackDeliveryMan(
          [void Function(ConsumerOrderTrackDeliveryManBuilder)? updates]) =>
      (ConsumerOrderTrackDeliveryManBuilder()..update(updates))._build();

  _$ConsumerOrderTrackDeliveryMan._(
      {this.id,
      this.fName,
      this.lName,
      this.phone,
      this.email,
      this.image,
      this.imageUrl})
      : super._();
  @override
  ConsumerOrderTrackDeliveryMan rebuild(
          void Function(ConsumerOrderTrackDeliveryManBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerOrderTrackDeliveryManBuilder toBuilder() =>
      ConsumerOrderTrackDeliveryManBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerOrderTrackDeliveryMan &&
        id == other.id &&
        fName == other.fName &&
        lName == other.lName &&
        phone == other.phone &&
        email == other.email &&
        image == other.image &&
        imageUrl == other.imageUrl;
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
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerOrderTrackDeliveryMan')
          ..add('id', id)
          ..add('fName', fName)
          ..add('lName', lName)
          ..add('phone', phone)
          ..add('email', email)
          ..add('image', image)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class ConsumerOrderTrackDeliveryManBuilder
    implements
        Builder<ConsumerOrderTrackDeliveryMan,
            ConsumerOrderTrackDeliveryManBuilder> {
  _$ConsumerOrderTrackDeliveryMan? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  ConsumerOrderTrackDeliveryManBuilder() {
    ConsumerOrderTrackDeliveryMan._defaults(this);
  }

  ConsumerOrderTrackDeliveryManBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fName = $v.fName;
      _lName = $v.lName;
      _phone = $v.phone;
      _email = $v.email;
      _image = $v.image;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerOrderTrackDeliveryMan other) {
    _$v = other as _$ConsumerOrderTrackDeliveryMan;
  }

  @override
  void update(void Function(ConsumerOrderTrackDeliveryManBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerOrderTrackDeliveryMan build() => _build();

  _$ConsumerOrderTrackDeliveryMan _build() {
    final _$result = _$v ??
        _$ConsumerOrderTrackDeliveryMan._(
          id: id,
          fName: fName,
          lName: lName,
          phone: phone,
          email: email,
          image: image,
          imageUrl: imageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

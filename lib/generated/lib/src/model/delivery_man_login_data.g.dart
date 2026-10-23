// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_login_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManLoginData extends DeliveryManLoginData {
  @override
  final String? token;
  @override
  final String? topic;
  @override
  final String? id;
  @override
  final String? fName;
  @override
  final String? lName;
  @override
  final String? phone;

  factory _$DeliveryManLoginData(
          [void Function(DeliveryManLoginDataBuilder)? updates]) =>
      (DeliveryManLoginDataBuilder()..update(updates))._build();

  _$DeliveryManLoginData._(
      {this.token, this.topic, this.id, this.fName, this.lName, this.phone})
      : super._();
  @override
  DeliveryManLoginData rebuild(
          void Function(DeliveryManLoginDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManLoginDataBuilder toBuilder() =>
      DeliveryManLoginDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManLoginData &&
        token == other.token &&
        topic == other.topic &&
        id == other.id &&
        fName == other.fName &&
        lName == other.lName &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fName.hashCode);
    _$hash = $jc(_$hash, lName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManLoginData')
          ..add('token', token)
          ..add('topic', topic)
          ..add('id', id)
          ..add('fName', fName)
          ..add('lName', lName)
          ..add('phone', phone))
        .toString();
  }
}

class DeliveryManLoginDataBuilder
    implements Builder<DeliveryManLoginData, DeliveryManLoginDataBuilder> {
  _$DeliveryManLoginData? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

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

  DeliveryManLoginDataBuilder() {
    DeliveryManLoginData._defaults(this);
  }

  DeliveryManLoginDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _topic = $v.topic;
      _id = $v.id;
      _fName = $v.fName;
      _lName = $v.lName;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManLoginData other) {
    _$v = other as _$DeliveryManLoginData;
  }

  @override
  void update(void Function(DeliveryManLoginDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManLoginData build() => _build();

  _$DeliveryManLoginData _build() {
    final _$result = _$v ??
        _$DeliveryManLoginData._(
          token: token,
          topic: topic,
          id: id,
          fName: fName,
          lName: lName,
          phone: phone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

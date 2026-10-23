// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_social_login_exist_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerSocialLoginExistUser extends ConsumerSocialLoginExistUser {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? image;

  factory _$ConsumerSocialLoginExistUser(
          [void Function(ConsumerSocialLoginExistUserBuilder)? updates]) =>
      (ConsumerSocialLoginExistUserBuilder()..update(updates))._build();

  _$ConsumerSocialLoginExistUser._({this.id, this.name, this.image})
      : super._();
  @override
  ConsumerSocialLoginExistUser rebuild(
          void Function(ConsumerSocialLoginExistUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerSocialLoginExistUserBuilder toBuilder() =>
      ConsumerSocialLoginExistUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerSocialLoginExistUser &&
        id == other.id &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerSocialLoginExistUser')
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class ConsumerSocialLoginExistUserBuilder
    implements
        Builder<ConsumerSocialLoginExistUser,
            ConsumerSocialLoginExistUserBuilder> {
  _$ConsumerSocialLoginExistUser? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ConsumerSocialLoginExistUserBuilder() {
    ConsumerSocialLoginExistUser._defaults(this);
  }

  ConsumerSocialLoginExistUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerSocialLoginExistUser other) {
    _$v = other as _$ConsumerSocialLoginExistUser;
  }

  @override
  void update(void Function(ConsumerSocialLoginExistUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerSocialLoginExistUser build() => _build();

  _$ConsumerSocialLoginExistUser _build() {
    final _$result = _$v ??
        _$ConsumerSocialLoginExistUser._(
          id: id,
          name: name,
          image: image,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

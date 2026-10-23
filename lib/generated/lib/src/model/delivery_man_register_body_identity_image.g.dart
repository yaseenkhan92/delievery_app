// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_register_body_identity_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManRegisterBodyIdentityImage
    extends DeliveryManRegisterBodyIdentityImage {
  @override
  final OneOf oneOf;

  factory _$DeliveryManRegisterBodyIdentityImage(
          [void Function(DeliveryManRegisterBodyIdentityImageBuilder)?
              updates]) =>
      (DeliveryManRegisterBodyIdentityImageBuilder()..update(updates))._build();

  _$DeliveryManRegisterBodyIdentityImage._({required this.oneOf}) : super._();
  @override
  DeliveryManRegisterBodyIdentityImage rebuild(
          void Function(DeliveryManRegisterBodyIdentityImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManRegisterBodyIdentityImageBuilder toBuilder() =>
      DeliveryManRegisterBodyIdentityImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManRegisterBodyIdentityImage &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManRegisterBodyIdentityImage')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class DeliveryManRegisterBodyIdentityImageBuilder
    implements
        Builder<DeliveryManRegisterBodyIdentityImage,
            DeliveryManRegisterBodyIdentityImageBuilder> {
  _$DeliveryManRegisterBodyIdentityImage? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  DeliveryManRegisterBodyIdentityImageBuilder() {
    DeliveryManRegisterBodyIdentityImage._defaults(this);
  }

  DeliveryManRegisterBodyIdentityImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManRegisterBodyIdentityImage other) {
    _$v = other as _$DeliveryManRegisterBodyIdentityImage;
  }

  @override
  void update(
      void Function(DeliveryManRegisterBodyIdentityImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManRegisterBodyIdentityImage build() => _build();

  _$DeliveryManRegisterBodyIdentityImage _build() {
    final _$result = _$v ??
        _$DeliveryManRegisterBodyIdentityImage._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'DeliveryManRegisterBodyIdentityImage', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

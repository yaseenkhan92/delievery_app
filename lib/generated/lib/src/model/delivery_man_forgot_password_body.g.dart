// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_forgot_password_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManForgotPasswordBody extends DeliveryManForgotPasswordBody {
  @override
  final String phone;

  factory _$DeliveryManForgotPasswordBody(
          [void Function(DeliveryManForgotPasswordBodyBuilder)? updates]) =>
      (DeliveryManForgotPasswordBodyBuilder()..update(updates))._build();

  _$DeliveryManForgotPasswordBody._({required this.phone}) : super._();
  @override
  DeliveryManForgotPasswordBody rebuild(
          void Function(DeliveryManForgotPasswordBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManForgotPasswordBodyBuilder toBuilder() =>
      DeliveryManForgotPasswordBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManForgotPasswordBody && phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManForgotPasswordBody')
          ..add('phone', phone))
        .toString();
  }
}

class DeliveryManForgotPasswordBodyBuilder
    implements
        Builder<DeliveryManForgotPasswordBody,
            DeliveryManForgotPasswordBodyBuilder> {
  _$DeliveryManForgotPasswordBody? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  DeliveryManForgotPasswordBodyBuilder() {
    DeliveryManForgotPasswordBody._defaults(this);
  }

  DeliveryManForgotPasswordBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManForgotPasswordBody other) {
    _$v = other as _$DeliveryManForgotPasswordBody;
  }

  @override
  void update(void Function(DeliveryManForgotPasswordBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManForgotPasswordBody build() => _build();

  _$DeliveryManForgotPasswordBody _build() {
    final _$result = _$v ??
        _$DeliveryManForgotPasswordBody._(
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'DeliveryManForgotPasswordBody', 'phone'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

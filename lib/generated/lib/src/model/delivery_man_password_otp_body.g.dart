// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_password_otp_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManPasswordOtpBody extends DeliveryManPasswordOtpBody {
  @override
  final String phone;
  @override
  final String otp;

  factory _$DeliveryManPasswordOtpBody(
          [void Function(DeliveryManPasswordOtpBodyBuilder)? updates]) =>
      (DeliveryManPasswordOtpBodyBuilder()..update(updates))._build();

  _$DeliveryManPasswordOtpBody._({required this.phone, required this.otp})
      : super._();
  @override
  DeliveryManPasswordOtpBody rebuild(
          void Function(DeliveryManPasswordOtpBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManPasswordOtpBodyBuilder toBuilder() =>
      DeliveryManPasswordOtpBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManPasswordOtpBody &&
        phone == other.phone &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManPasswordOtpBody')
          ..add('phone', phone)
          ..add('otp', otp))
        .toString();
  }
}

class DeliveryManPasswordOtpBodyBuilder
    implements
        Builder<DeliveryManPasswordOtpBody, DeliveryManPasswordOtpBodyBuilder> {
  _$DeliveryManPasswordOtpBody? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  DeliveryManPasswordOtpBodyBuilder() {
    DeliveryManPasswordOtpBody._defaults(this);
  }

  DeliveryManPasswordOtpBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManPasswordOtpBody other) {
    _$v = other as _$DeliveryManPasswordOtpBody;
  }

  @override
  void update(void Function(DeliveryManPasswordOtpBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManPasswordOtpBody build() => _build();

  _$DeliveryManPasswordOtpBody _build() {
    final _$result = _$v ??
        _$DeliveryManPasswordOtpBody._(
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'DeliveryManPasswordOtpBody', 'phone'),
          otp: BuiltValueNullFieldError.checkNotNull(
              otp, r'DeliveryManPasswordOtpBody', 'otp'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

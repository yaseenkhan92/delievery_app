// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_login_verify_otp_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerLoginVerifyOtpPostRequest
    extends ConsumerLoginVerifyOtpPostRequest {
  @override
  final String phone;
  @override
  final String otp;
  @override
  final int? guestId;

  factory _$ConsumerLoginVerifyOtpPostRequest(
          [void Function(ConsumerLoginVerifyOtpPostRequestBuilder)? updates]) =>
      (ConsumerLoginVerifyOtpPostRequestBuilder()..update(updates))._build();

  _$ConsumerLoginVerifyOtpPostRequest._(
      {required this.phone, required this.otp, this.guestId})
      : super._();
  @override
  ConsumerLoginVerifyOtpPostRequest rebuild(
          void Function(ConsumerLoginVerifyOtpPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerLoginVerifyOtpPostRequestBuilder toBuilder() =>
      ConsumerLoginVerifyOtpPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerLoginVerifyOtpPostRequest &&
        phone == other.phone &&
        otp == other.otp &&
        guestId == other.guestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jc(_$hash, guestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerLoginVerifyOtpPostRequest')
          ..add('phone', phone)
          ..add('otp', otp)
          ..add('guestId', guestId))
        .toString();
  }
}

class ConsumerLoginVerifyOtpPostRequestBuilder
    implements
        Builder<ConsumerLoginVerifyOtpPostRequest,
            ConsumerLoginVerifyOtpPostRequestBuilder> {
  _$ConsumerLoginVerifyOtpPostRequest? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  int? _guestId;
  int? get guestId => _$this._guestId;
  set guestId(int? guestId) => _$this._guestId = guestId;

  ConsumerLoginVerifyOtpPostRequestBuilder() {
    ConsumerLoginVerifyOtpPostRequest._defaults(this);
  }

  ConsumerLoginVerifyOtpPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _otp = $v.otp;
      _guestId = $v.guestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerLoginVerifyOtpPostRequest other) {
    _$v = other as _$ConsumerLoginVerifyOtpPostRequest;
  }

  @override
  void update(
      void Function(ConsumerLoginVerifyOtpPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerLoginVerifyOtpPostRequest build() => _build();

  _$ConsumerLoginVerifyOtpPostRequest _build() {
    final _$result = _$v ??
        _$ConsumerLoginVerifyOtpPostRequest._(
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'ConsumerLoginVerifyOtpPostRequest', 'phone'),
          otp: BuiltValueNullFieldError.checkNotNull(
              otp, r'ConsumerLoginVerifyOtpPostRequest', 'otp'),
          guestId: guestId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

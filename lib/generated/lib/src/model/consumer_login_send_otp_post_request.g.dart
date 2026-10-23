// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_login_send_otp_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerLoginSendOtpPostRequest
    extends ConsumerLoginSendOtpPostRequest {
  @override
  final String phone;

  factory _$ConsumerLoginSendOtpPostRequest(
          [void Function(ConsumerLoginSendOtpPostRequestBuilder)? updates]) =>
      (ConsumerLoginSendOtpPostRequestBuilder()..update(updates))._build();

  _$ConsumerLoginSendOtpPostRequest._({required this.phone}) : super._();
  @override
  ConsumerLoginSendOtpPostRequest rebuild(
          void Function(ConsumerLoginSendOtpPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerLoginSendOtpPostRequestBuilder toBuilder() =>
      ConsumerLoginSendOtpPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerLoginSendOtpPostRequest && phone == other.phone;
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
    return (newBuiltValueToStringHelper(r'ConsumerLoginSendOtpPostRequest')
          ..add('phone', phone))
        .toString();
  }
}

class ConsumerLoginSendOtpPostRequestBuilder
    implements
        Builder<ConsumerLoginSendOtpPostRequest,
            ConsumerLoginSendOtpPostRequestBuilder> {
  _$ConsumerLoginSendOtpPostRequest? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  ConsumerLoginSendOtpPostRequestBuilder() {
    ConsumerLoginSendOtpPostRequest._defaults(this);
  }

  ConsumerLoginSendOtpPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerLoginSendOtpPostRequest other) {
    _$v = other as _$ConsumerLoginSendOtpPostRequest;
  }

  @override
  void update(void Function(ConsumerLoginSendOtpPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerLoginSendOtpPostRequest build() => _build();

  _$ConsumerLoginSendOtpPostRequest _build() {
    final _$result = _$v ??
        _$ConsumerLoginSendOtpPostRequest._(
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'ConsumerLoginSendOtpPostRequest', 'phone'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

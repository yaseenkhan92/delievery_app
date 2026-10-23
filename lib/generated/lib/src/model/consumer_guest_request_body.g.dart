// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_guest_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerGuestRequestBody extends ConsumerGuestRequestBody {
  @override
  final String? fcmToken;

  factory _$ConsumerGuestRequestBody(
          [void Function(ConsumerGuestRequestBodyBuilder)? updates]) =>
      (ConsumerGuestRequestBodyBuilder()..update(updates))._build();

  _$ConsumerGuestRequestBody._({this.fcmToken}) : super._();
  @override
  ConsumerGuestRequestBody rebuild(
          void Function(ConsumerGuestRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerGuestRequestBodyBuilder toBuilder() =>
      ConsumerGuestRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerGuestRequestBody && fcmToken == other.fcmToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerGuestRequestBody')
          ..add('fcmToken', fcmToken))
        .toString();
  }
}

class ConsumerGuestRequestBodyBuilder
    implements
        Builder<ConsumerGuestRequestBody, ConsumerGuestRequestBodyBuilder> {
  _$ConsumerGuestRequestBody? _$v;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  ConsumerGuestRequestBodyBuilder() {
    ConsumerGuestRequestBody._defaults(this);
  }

  ConsumerGuestRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fcmToken = $v.fcmToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerGuestRequestBody other) {
    _$v = other as _$ConsumerGuestRequestBody;
  }

  @override
  void update(void Function(ConsumerGuestRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerGuestRequestBody build() => _build();

  _$ConsumerGuestRequestBody _build() {
    final _$result = _$v ??
        _$ConsumerGuestRequestBody._(
          fcmToken: fcmToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

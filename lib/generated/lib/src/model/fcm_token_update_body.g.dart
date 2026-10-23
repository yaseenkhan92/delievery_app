// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_token_update_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FcmTokenUpdateBody extends FcmTokenUpdateBody {
  @override
  final String fcmToken;

  factory _$FcmTokenUpdateBody(
          [void Function(FcmTokenUpdateBodyBuilder)? updates]) =>
      (FcmTokenUpdateBodyBuilder()..update(updates))._build();

  _$FcmTokenUpdateBody._({required this.fcmToken}) : super._();
  @override
  FcmTokenUpdateBody rebuild(
          void Function(FcmTokenUpdateBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FcmTokenUpdateBodyBuilder toBuilder() =>
      FcmTokenUpdateBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FcmTokenUpdateBody && fcmToken == other.fcmToken;
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
    return (newBuiltValueToStringHelper(r'FcmTokenUpdateBody')
          ..add('fcmToken', fcmToken))
        .toString();
  }
}

class FcmTokenUpdateBodyBuilder
    implements Builder<FcmTokenUpdateBody, FcmTokenUpdateBodyBuilder> {
  _$FcmTokenUpdateBody? _$v;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  FcmTokenUpdateBodyBuilder() {
    FcmTokenUpdateBody._defaults(this);
  }

  FcmTokenUpdateBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fcmToken = $v.fcmToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FcmTokenUpdateBody other) {
    _$v = other as _$FcmTokenUpdateBody;
  }

  @override
  void update(void Function(FcmTokenUpdateBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FcmTokenUpdateBody build() => _build();

  _$FcmTokenUpdateBody _build() {
    final _$result = _$v ??
        _$FcmTokenUpdateBody._(
          fcmToken: BuiltValueNullFieldError.checkNotNull(
              fcmToken, r'FcmTokenUpdateBody', 'fcmToken'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

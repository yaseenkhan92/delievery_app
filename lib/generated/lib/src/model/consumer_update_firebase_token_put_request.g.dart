// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_update_firebase_token_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerUpdateFirebaseTokenPutRequest
    extends ConsumerUpdateFirebaseTokenPutRequest {
  @override
  final String cmFirebaseToken;

  factory _$ConsumerUpdateFirebaseTokenPutRequest(
          [void Function(ConsumerUpdateFirebaseTokenPutRequestBuilder)?
              updates]) =>
      (ConsumerUpdateFirebaseTokenPutRequestBuilder()..update(updates))
          ._build();

  _$ConsumerUpdateFirebaseTokenPutRequest._({required this.cmFirebaseToken})
      : super._();
  @override
  ConsumerUpdateFirebaseTokenPutRequest rebuild(
          void Function(ConsumerUpdateFirebaseTokenPutRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerUpdateFirebaseTokenPutRequestBuilder toBuilder() =>
      ConsumerUpdateFirebaseTokenPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerUpdateFirebaseTokenPutRequest &&
        cmFirebaseToken == other.cmFirebaseToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cmFirebaseToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ConsumerUpdateFirebaseTokenPutRequest')
          ..add('cmFirebaseToken', cmFirebaseToken))
        .toString();
  }
}

class ConsumerUpdateFirebaseTokenPutRequestBuilder
    implements
        Builder<ConsumerUpdateFirebaseTokenPutRequest,
            ConsumerUpdateFirebaseTokenPutRequestBuilder> {
  _$ConsumerUpdateFirebaseTokenPutRequest? _$v;

  String? _cmFirebaseToken;
  String? get cmFirebaseToken => _$this._cmFirebaseToken;
  set cmFirebaseToken(String? cmFirebaseToken) =>
      _$this._cmFirebaseToken = cmFirebaseToken;

  ConsumerUpdateFirebaseTokenPutRequestBuilder() {
    ConsumerUpdateFirebaseTokenPutRequest._defaults(this);
  }

  ConsumerUpdateFirebaseTokenPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cmFirebaseToken = $v.cmFirebaseToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerUpdateFirebaseTokenPutRequest other) {
    _$v = other as _$ConsumerUpdateFirebaseTokenPutRequest;
  }

  @override
  void update(
      void Function(ConsumerUpdateFirebaseTokenPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerUpdateFirebaseTokenPutRequest build() => _build();

  _$ConsumerUpdateFirebaseTokenPutRequest _build() {
    final _$result = _$v ??
        _$ConsumerUpdateFirebaseTokenPutRequest._(
          cmFirebaseToken: BuiltValueNullFieldError.checkNotNull(
              cmFirebaseToken,
              r'ConsumerUpdateFirebaseTokenPutRequest',
              'cmFirebaseToken'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_guest_session_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerGuestSessionData extends ConsumerGuestSessionData {
  @override
  final String guestId;
  @override
  final String token;

  factory _$ConsumerGuestSessionData(
          [void Function(ConsumerGuestSessionDataBuilder)? updates]) =>
      (ConsumerGuestSessionDataBuilder()..update(updates))._build();

  _$ConsumerGuestSessionData._({required this.guestId, required this.token})
      : super._();
  @override
  ConsumerGuestSessionData rebuild(
          void Function(ConsumerGuestSessionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerGuestSessionDataBuilder toBuilder() =>
      ConsumerGuestSessionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerGuestSessionData &&
        guestId == other.guestId &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, guestId.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerGuestSessionData')
          ..add('guestId', guestId)
          ..add('token', token))
        .toString();
  }
}

class ConsumerGuestSessionDataBuilder
    implements
        Builder<ConsumerGuestSessionData, ConsumerGuestSessionDataBuilder> {
  _$ConsumerGuestSessionData? _$v;

  String? _guestId;
  String? get guestId => _$this._guestId;
  set guestId(String? guestId) => _$this._guestId = guestId;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  ConsumerGuestSessionDataBuilder() {
    ConsumerGuestSessionData._defaults(this);
  }

  ConsumerGuestSessionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guestId = $v.guestId;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerGuestSessionData other) {
    _$v = other as _$ConsumerGuestSessionData;
  }

  @override
  void update(void Function(ConsumerGuestSessionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerGuestSessionData build() => _build();

  _$ConsumerGuestSessionData _build() {
    final _$result = _$v ??
        _$ConsumerGuestSessionData._(
          guestId: BuiltValueNullFieldError.checkNotNull(
              guestId, r'ConsumerGuestSessionData', 'guestId'),
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'ConsumerGuestSessionData', 'token'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

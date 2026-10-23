// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_update_zone_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerUpdateZonePutRequest extends ConsumerUpdateZonePutRequest {
  @override
  final int? zoneId;

  factory _$ConsumerUpdateZonePutRequest(
          [void Function(ConsumerUpdateZonePutRequestBuilder)? updates]) =>
      (ConsumerUpdateZonePutRequestBuilder()..update(updates))._build();

  _$ConsumerUpdateZonePutRequest._({this.zoneId}) : super._();
  @override
  ConsumerUpdateZonePutRequest rebuild(
          void Function(ConsumerUpdateZonePutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerUpdateZonePutRequestBuilder toBuilder() =>
      ConsumerUpdateZonePutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerUpdateZonePutRequest && zoneId == other.zoneId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerUpdateZonePutRequest')
          ..add('zoneId', zoneId))
        .toString();
  }
}

class ConsumerUpdateZonePutRequestBuilder
    implements
        Builder<ConsumerUpdateZonePutRequest,
            ConsumerUpdateZonePutRequestBuilder> {
  _$ConsumerUpdateZonePutRequest? _$v;

  int? _zoneId;
  int? get zoneId => _$this._zoneId;
  set zoneId(int? zoneId) => _$this._zoneId = zoneId;

  ConsumerUpdateZonePutRequestBuilder() {
    ConsumerUpdateZonePutRequest._defaults(this);
  }

  ConsumerUpdateZonePutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _zoneId = $v.zoneId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerUpdateZonePutRequest other) {
    _$v = other as _$ConsumerUpdateZonePutRequest;
  }

  @override
  void update(void Function(ConsumerUpdateZonePutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerUpdateZonePutRequest build() => _build();

  _$ConsumerUpdateZonePutRequest _build() {
    final _$result = _$v ??
        _$ConsumerUpdateZonePutRequest._(
          zoneId: zoneId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

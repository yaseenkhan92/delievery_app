// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_get_zone_id_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerGetZoneIdResponse extends ConsumerGetZoneIdResponse {
  @override
  final String? zoneId;
  @override
  final BuiltList<ConsumerZoneDataItem>? zoneData;

  factory _$ConsumerGetZoneIdResponse(
          [void Function(ConsumerGetZoneIdResponseBuilder)? updates]) =>
      (ConsumerGetZoneIdResponseBuilder()..update(updates))._build();

  _$ConsumerGetZoneIdResponse._({this.zoneId, this.zoneData}) : super._();
  @override
  ConsumerGetZoneIdResponse rebuild(
          void Function(ConsumerGetZoneIdResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerGetZoneIdResponseBuilder toBuilder() =>
      ConsumerGetZoneIdResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerGetZoneIdResponse &&
        zoneId == other.zoneId &&
        zoneData == other.zoneData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jc(_$hash, zoneData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerGetZoneIdResponse')
          ..add('zoneId', zoneId)
          ..add('zoneData', zoneData))
        .toString();
  }
}

class ConsumerGetZoneIdResponseBuilder
    implements
        Builder<ConsumerGetZoneIdResponse, ConsumerGetZoneIdResponseBuilder> {
  _$ConsumerGetZoneIdResponse? _$v;

  String? _zoneId;
  String? get zoneId => _$this._zoneId;
  set zoneId(String? zoneId) => _$this._zoneId = zoneId;

  ListBuilder<ConsumerZoneDataItem>? _zoneData;
  ListBuilder<ConsumerZoneDataItem> get zoneData =>
      _$this._zoneData ??= ListBuilder<ConsumerZoneDataItem>();
  set zoneData(ListBuilder<ConsumerZoneDataItem>? zoneData) =>
      _$this._zoneData = zoneData;

  ConsumerGetZoneIdResponseBuilder() {
    ConsumerGetZoneIdResponse._defaults(this);
  }

  ConsumerGetZoneIdResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _zoneId = $v.zoneId;
      _zoneData = $v.zoneData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerGetZoneIdResponse other) {
    _$v = other as _$ConsumerGetZoneIdResponse;
  }

  @override
  void update(void Function(ConsumerGetZoneIdResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerGetZoneIdResponse build() => _build();

  _$ConsumerGetZoneIdResponse _build() {
    _$ConsumerGetZoneIdResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerGetZoneIdResponse._(
            zoneId: zoneId,
            zoneData: _zoneData?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'zoneData';
        _zoneData?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerGetZoneIdResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

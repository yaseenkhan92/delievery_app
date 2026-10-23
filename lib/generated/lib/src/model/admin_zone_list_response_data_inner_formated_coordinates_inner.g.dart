// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_zone_list_response_data_inner_formated_coordinates_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminZoneListResponseDataInnerFormatedCoordinatesInner
    extends AdminZoneListResponseDataInnerFormatedCoordinatesInner {
  @override
  final num? lat;
  @override
  final num? lng;

  factory _$AdminZoneListResponseDataInnerFormatedCoordinatesInner(
          [void Function(
                  AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder)?
              updates]) =>
      (AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder()
            ..update(updates))
          ._build();

  _$AdminZoneListResponseDataInnerFormatedCoordinatesInner._(
      {this.lat, this.lng})
      : super._();
  @override
  AdminZoneListResponseDataInnerFormatedCoordinatesInner rebuild(
          void Function(
                  AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder toBuilder() =>
      AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminZoneListResponseDataInnerFormatedCoordinatesInner &&
        lat == other.lat &&
        lng == other.lng;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AdminZoneListResponseDataInnerFormatedCoordinatesInner')
          ..add('lat', lat)
          ..add('lng', lng))
        .toString();
  }
}

class AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder
    implements
        Builder<AdminZoneListResponseDataInnerFormatedCoordinatesInner,
            AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder> {
  _$AdminZoneListResponseDataInnerFormatedCoordinatesInner? _$v;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  num? _lng;
  num? get lng => _$this._lng;
  set lng(num? lng) => _$this._lng = lng;

  AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder() {
    AdminZoneListResponseDataInnerFormatedCoordinatesInner._defaults(this);
  }

  AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _lng = $v.lng;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminZoneListResponseDataInnerFormatedCoordinatesInner other) {
    _$v = other as _$AdminZoneListResponseDataInnerFormatedCoordinatesInner;
  }

  @override
  void update(
      void Function(
              AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminZoneListResponseDataInnerFormatedCoordinatesInner build() => _build();

  _$AdminZoneListResponseDataInnerFormatedCoordinatesInner _build() {
    final _$result = _$v ??
        _$AdminZoneListResponseDataInnerFormatedCoordinatesInner._(
          lat: lat,
          lng: lng,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_create_zone_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminCreateZoneBody extends AdminCreateZoneBody {
  @override
  final String name;
  @override
  final String? displayName;
  @override
  final bool? status;
  @override
  final BuiltList<BuiltList<num>> coordinates;
  @override
  final num? perKmShippingCharge;
  @override
  final num? minimumShippingCharge;
  @override
  final num? maximumShippingCharge;
  @override
  final num? maxCodOrderAmount;

  factory _$AdminCreateZoneBody(
          [void Function(AdminCreateZoneBodyBuilder)? updates]) =>
      (AdminCreateZoneBodyBuilder()..update(updates))._build();

  _$AdminCreateZoneBody._(
      {required this.name,
      this.displayName,
      this.status,
      required this.coordinates,
      this.perKmShippingCharge,
      this.minimumShippingCharge,
      this.maximumShippingCharge,
      this.maxCodOrderAmount})
      : super._();
  @override
  AdminCreateZoneBody rebuild(
          void Function(AdminCreateZoneBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminCreateZoneBodyBuilder toBuilder() =>
      AdminCreateZoneBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminCreateZoneBody &&
        name == other.name &&
        displayName == other.displayName &&
        status == other.status &&
        coordinates == other.coordinates &&
        perKmShippingCharge == other.perKmShippingCharge &&
        minimumShippingCharge == other.minimumShippingCharge &&
        maximumShippingCharge == other.maximumShippingCharge &&
        maxCodOrderAmount == other.maxCodOrderAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, coordinates.hashCode);
    _$hash = $jc(_$hash, perKmShippingCharge.hashCode);
    _$hash = $jc(_$hash, minimumShippingCharge.hashCode);
    _$hash = $jc(_$hash, maximumShippingCharge.hashCode);
    _$hash = $jc(_$hash, maxCodOrderAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminCreateZoneBody')
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('status', status)
          ..add('coordinates', coordinates)
          ..add('perKmShippingCharge', perKmShippingCharge)
          ..add('minimumShippingCharge', minimumShippingCharge)
          ..add('maximumShippingCharge', maximumShippingCharge)
          ..add('maxCodOrderAmount', maxCodOrderAmount))
        .toString();
  }
}

class AdminCreateZoneBodyBuilder
    implements Builder<AdminCreateZoneBody, AdminCreateZoneBodyBuilder> {
  _$AdminCreateZoneBody? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<BuiltList<num>>? _coordinates;
  ListBuilder<BuiltList<num>> get coordinates =>
      _$this._coordinates ??= ListBuilder<BuiltList<num>>();
  set coordinates(ListBuilder<BuiltList<num>>? coordinates) =>
      _$this._coordinates = coordinates;

  num? _perKmShippingCharge;
  num? get perKmShippingCharge => _$this._perKmShippingCharge;
  set perKmShippingCharge(num? perKmShippingCharge) =>
      _$this._perKmShippingCharge = perKmShippingCharge;

  num? _minimumShippingCharge;
  num? get minimumShippingCharge => _$this._minimumShippingCharge;
  set minimumShippingCharge(num? minimumShippingCharge) =>
      _$this._minimumShippingCharge = minimumShippingCharge;

  num? _maximumShippingCharge;
  num? get maximumShippingCharge => _$this._maximumShippingCharge;
  set maximumShippingCharge(num? maximumShippingCharge) =>
      _$this._maximumShippingCharge = maximumShippingCharge;

  num? _maxCodOrderAmount;
  num? get maxCodOrderAmount => _$this._maxCodOrderAmount;
  set maxCodOrderAmount(num? maxCodOrderAmount) =>
      _$this._maxCodOrderAmount = maxCodOrderAmount;

  AdminCreateZoneBodyBuilder() {
    AdminCreateZoneBody._defaults(this);
  }

  AdminCreateZoneBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _displayName = $v.displayName;
      _status = $v.status;
      _coordinates = $v.coordinates.toBuilder();
      _perKmShippingCharge = $v.perKmShippingCharge;
      _minimumShippingCharge = $v.minimumShippingCharge;
      _maximumShippingCharge = $v.maximumShippingCharge;
      _maxCodOrderAmount = $v.maxCodOrderAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminCreateZoneBody other) {
    _$v = other as _$AdminCreateZoneBody;
  }

  @override
  void update(void Function(AdminCreateZoneBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminCreateZoneBody build() => _build();

  _$AdminCreateZoneBody _build() {
    _$AdminCreateZoneBody _$result;
    try {
      _$result = _$v ??
          _$AdminCreateZoneBody._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AdminCreateZoneBody', 'name'),
            displayName: displayName,
            status: status,
            coordinates: coordinates.build(),
            perKmShippingCharge: perKmShippingCharge,
            minimumShippingCharge: minimumShippingCharge,
            maximumShippingCharge: maximumShippingCharge,
            maxCodOrderAmount: maxCodOrderAmount,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        coordinates.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AdminCreateZoneBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_zone_data_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerZoneDataItem extends ConsumerZoneDataItem {
  @override
  final int? id;
  @override
  final int? status;
  @override
  final String? name;
  @override
  final String? displayName;
  @override
  final num? minimumShippingCharge;
  @override
  final num? perKmShippingCharge;
  @override
  final num? maximumShippingCharge;
  @override
  final num? maxCodOrderAmount;
  @override
  final num? increasedDeliveryFee;
  @override
  final int? increasedDeliveryFeeStatus;
  @override
  final String? increaseDeliveryChargeMessage;

  factory _$ConsumerZoneDataItem(
          [void Function(ConsumerZoneDataItemBuilder)? updates]) =>
      (ConsumerZoneDataItemBuilder()..update(updates))._build();

  _$ConsumerZoneDataItem._(
      {this.id,
      this.status,
      this.name,
      this.displayName,
      this.minimumShippingCharge,
      this.perKmShippingCharge,
      this.maximumShippingCharge,
      this.maxCodOrderAmount,
      this.increasedDeliveryFee,
      this.increasedDeliveryFeeStatus,
      this.increaseDeliveryChargeMessage})
      : super._();
  @override
  ConsumerZoneDataItem rebuild(
          void Function(ConsumerZoneDataItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerZoneDataItemBuilder toBuilder() =>
      ConsumerZoneDataItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerZoneDataItem &&
        id == other.id &&
        status == other.status &&
        name == other.name &&
        displayName == other.displayName &&
        minimumShippingCharge == other.minimumShippingCharge &&
        perKmShippingCharge == other.perKmShippingCharge &&
        maximumShippingCharge == other.maximumShippingCharge &&
        maxCodOrderAmount == other.maxCodOrderAmount &&
        increasedDeliveryFee == other.increasedDeliveryFee &&
        increasedDeliveryFeeStatus == other.increasedDeliveryFeeStatus &&
        increaseDeliveryChargeMessage == other.increaseDeliveryChargeMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, minimumShippingCharge.hashCode);
    _$hash = $jc(_$hash, perKmShippingCharge.hashCode);
    _$hash = $jc(_$hash, maximumShippingCharge.hashCode);
    _$hash = $jc(_$hash, maxCodOrderAmount.hashCode);
    _$hash = $jc(_$hash, increasedDeliveryFee.hashCode);
    _$hash = $jc(_$hash, increasedDeliveryFeeStatus.hashCode);
    _$hash = $jc(_$hash, increaseDeliveryChargeMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerZoneDataItem')
          ..add('id', id)
          ..add('status', status)
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('minimumShippingCharge', minimumShippingCharge)
          ..add('perKmShippingCharge', perKmShippingCharge)
          ..add('maximumShippingCharge', maximumShippingCharge)
          ..add('maxCodOrderAmount', maxCodOrderAmount)
          ..add('increasedDeliveryFee', increasedDeliveryFee)
          ..add('increasedDeliveryFeeStatus', increasedDeliveryFeeStatus)
          ..add('increaseDeliveryChargeMessage', increaseDeliveryChargeMessage))
        .toString();
  }
}

class ConsumerZoneDataItemBuilder
    implements Builder<ConsumerZoneDataItem, ConsumerZoneDataItemBuilder> {
  _$ConsumerZoneDataItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  num? _minimumShippingCharge;
  num? get minimumShippingCharge => _$this._minimumShippingCharge;
  set minimumShippingCharge(num? minimumShippingCharge) =>
      _$this._minimumShippingCharge = minimumShippingCharge;

  num? _perKmShippingCharge;
  num? get perKmShippingCharge => _$this._perKmShippingCharge;
  set perKmShippingCharge(num? perKmShippingCharge) =>
      _$this._perKmShippingCharge = perKmShippingCharge;

  num? _maximumShippingCharge;
  num? get maximumShippingCharge => _$this._maximumShippingCharge;
  set maximumShippingCharge(num? maximumShippingCharge) =>
      _$this._maximumShippingCharge = maximumShippingCharge;

  num? _maxCodOrderAmount;
  num? get maxCodOrderAmount => _$this._maxCodOrderAmount;
  set maxCodOrderAmount(num? maxCodOrderAmount) =>
      _$this._maxCodOrderAmount = maxCodOrderAmount;

  num? _increasedDeliveryFee;
  num? get increasedDeliveryFee => _$this._increasedDeliveryFee;
  set increasedDeliveryFee(num? increasedDeliveryFee) =>
      _$this._increasedDeliveryFee = increasedDeliveryFee;

  int? _increasedDeliveryFeeStatus;
  int? get increasedDeliveryFeeStatus => _$this._increasedDeliveryFeeStatus;
  set increasedDeliveryFeeStatus(int? increasedDeliveryFeeStatus) =>
      _$this._increasedDeliveryFeeStatus = increasedDeliveryFeeStatus;

  String? _increaseDeliveryChargeMessage;
  String? get increaseDeliveryChargeMessage =>
      _$this._increaseDeliveryChargeMessage;
  set increaseDeliveryChargeMessage(String? increaseDeliveryChargeMessage) =>
      _$this._increaseDeliveryChargeMessage = increaseDeliveryChargeMessage;

  ConsumerZoneDataItemBuilder() {
    ConsumerZoneDataItem._defaults(this);
  }

  ConsumerZoneDataItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _name = $v.name;
      _displayName = $v.displayName;
      _minimumShippingCharge = $v.minimumShippingCharge;
      _perKmShippingCharge = $v.perKmShippingCharge;
      _maximumShippingCharge = $v.maximumShippingCharge;
      _maxCodOrderAmount = $v.maxCodOrderAmount;
      _increasedDeliveryFee = $v.increasedDeliveryFee;
      _increasedDeliveryFeeStatus = $v.increasedDeliveryFeeStatus;
      _increaseDeliveryChargeMessage = $v.increaseDeliveryChargeMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerZoneDataItem other) {
    _$v = other as _$ConsumerZoneDataItem;
  }

  @override
  void update(void Function(ConsumerZoneDataItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerZoneDataItem build() => _build();

  _$ConsumerZoneDataItem _build() {
    final _$result = _$v ??
        _$ConsumerZoneDataItem._(
          id: id,
          status: status,
          name: name,
          displayName: displayName,
          minimumShippingCharge: minimumShippingCharge,
          perKmShippingCharge: perKmShippingCharge,
          maximumShippingCharge: maximumShippingCharge,
          maxCodOrderAmount: maxCodOrderAmount,
          increasedDeliveryFee: increasedDeliveryFee,
          increasedDeliveryFeeStatus: increasedDeliveryFeeStatus,
          increaseDeliveryChargeMessage: increaseDeliveryChargeMessage,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

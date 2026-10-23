// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_setup_schedule_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantSetupScheduleItem
    extends VendorRestaurantSetupScheduleItem {
  @override
  final int? id;
  @override
  final int? day;
  @override
  final String? openingTime;
  @override
  final String? closingTime;

  factory _$VendorRestaurantSetupScheduleItem(
          [void Function(VendorRestaurantSetupScheduleItemBuilder)? updates]) =>
      (VendorRestaurantSetupScheduleItemBuilder()..update(updates))._build();

  _$VendorRestaurantSetupScheduleItem._(
      {this.id, this.day, this.openingTime, this.closingTime})
      : super._();
  @override
  VendorRestaurantSetupScheduleItem rebuild(
          void Function(VendorRestaurantSetupScheduleItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantSetupScheduleItemBuilder toBuilder() =>
      VendorRestaurantSetupScheduleItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantSetupScheduleItem &&
        id == other.id &&
        day == other.day &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, openingTime.hashCode);
    _$hash = $jc(_$hash, closingTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRestaurantSetupScheduleItem')
          ..add('id', id)
          ..add('day', day)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime))
        .toString();
  }
}

class VendorRestaurantSetupScheduleItemBuilder
    implements
        Builder<VendorRestaurantSetupScheduleItem,
            VendorRestaurantSetupScheduleItemBuilder> {
  _$VendorRestaurantSetupScheduleItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  String? _openingTime;
  String? get openingTime => _$this._openingTime;
  set openingTime(String? openingTime) => _$this._openingTime = openingTime;

  String? _closingTime;
  String? get closingTime => _$this._closingTime;
  set closingTime(String? closingTime) => _$this._closingTime = closingTime;

  VendorRestaurantSetupScheduleItemBuilder() {
    VendorRestaurantSetupScheduleItem._defaults(this);
  }

  VendorRestaurantSetupScheduleItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _day = $v.day;
      _openingTime = $v.openingTime;
      _closingTime = $v.closingTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantSetupScheduleItem other) {
    _$v = other as _$VendorRestaurantSetupScheduleItem;
  }

  @override
  void update(
      void Function(VendorRestaurantSetupScheduleItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantSetupScheduleItem build() => _build();

  _$VendorRestaurantSetupScheduleItem _build() {
    final _$result = _$v ??
        _$VendorRestaurantSetupScheduleItem._(
          id: id,
          day: day,
          openingTime: openingTime,
          closingTime: closingTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

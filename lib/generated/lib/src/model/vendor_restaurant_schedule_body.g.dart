// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_schedule_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantScheduleBody extends VendorRestaurantScheduleBody {
  @override
  final int day;
  @override
  final String startTime;
  @override
  final String endTime;

  factory _$VendorRestaurantScheduleBody(
          [void Function(VendorRestaurantScheduleBodyBuilder)? updates]) =>
      (VendorRestaurantScheduleBodyBuilder()..update(updates))._build();

  _$VendorRestaurantScheduleBody._(
      {required this.day, required this.startTime, required this.endTime})
      : super._();
  @override
  VendorRestaurantScheduleBody rebuild(
          void Function(VendorRestaurantScheduleBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantScheduleBodyBuilder toBuilder() =>
      VendorRestaurantScheduleBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantScheduleBody &&
        day == other.day &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRestaurantScheduleBody')
          ..add('day', day)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class VendorRestaurantScheduleBodyBuilder
    implements
        Builder<VendorRestaurantScheduleBody,
            VendorRestaurantScheduleBodyBuilder> {
  _$VendorRestaurantScheduleBody? _$v;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  VendorRestaurantScheduleBodyBuilder() {
    VendorRestaurantScheduleBody._defaults(this);
  }

  VendorRestaurantScheduleBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _day = $v.day;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantScheduleBody other) {
    _$v = other as _$VendorRestaurantScheduleBody;
  }

  @override
  void update(void Function(VendorRestaurantScheduleBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantScheduleBody build() => _build();

  _$VendorRestaurantScheduleBody _build() {
    final _$result = _$v ??
        _$VendorRestaurantScheduleBody._(
          day: BuiltValueNullFieldError.checkNotNull(
              day, r'VendorRestaurantScheduleBody', 'day'),
          startTime: BuiltValueNullFieldError.checkNotNull(
              startTime, r'VendorRestaurantScheduleBody', 'startTime'),
          endTime: BuiltValueNullFieldError.checkNotNull(
              endTime, r'VendorRestaurantScheduleBody', 'endTime'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

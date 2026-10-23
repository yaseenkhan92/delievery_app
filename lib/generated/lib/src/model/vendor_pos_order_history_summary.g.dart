// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_pos_order_history_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorPosOrderHistorySummary extends VendorPosOrderHistorySummary {
  @override
  final int? today;
  @override
  final int? thisWeek;
  @override
  final int? thisMonth;

  factory _$VendorPosOrderHistorySummary(
          [void Function(VendorPosOrderHistorySummaryBuilder)? updates]) =>
      (VendorPosOrderHistorySummaryBuilder()..update(updates))._build();

  _$VendorPosOrderHistorySummary._({this.today, this.thisWeek, this.thisMonth})
      : super._();
  @override
  VendorPosOrderHistorySummary rebuild(
          void Function(VendorPosOrderHistorySummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorPosOrderHistorySummaryBuilder toBuilder() =>
      VendorPosOrderHistorySummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorPosOrderHistorySummary &&
        today == other.today &&
        thisWeek == other.thisWeek &&
        thisMonth == other.thisMonth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, today.hashCode);
    _$hash = $jc(_$hash, thisWeek.hashCode);
    _$hash = $jc(_$hash, thisMonth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorPosOrderHistorySummary')
          ..add('today', today)
          ..add('thisWeek', thisWeek)
          ..add('thisMonth', thisMonth))
        .toString();
  }
}

class VendorPosOrderHistorySummaryBuilder
    implements
        Builder<VendorPosOrderHistorySummary,
            VendorPosOrderHistorySummaryBuilder> {
  _$VendorPosOrderHistorySummary? _$v;

  int? _today;
  int? get today => _$this._today;
  set today(int? today) => _$this._today = today;

  int? _thisWeek;
  int? get thisWeek => _$this._thisWeek;
  set thisWeek(int? thisWeek) => _$this._thisWeek = thisWeek;

  int? _thisMonth;
  int? get thisMonth => _$this._thisMonth;
  set thisMonth(int? thisMonth) => _$this._thisMonth = thisMonth;

  VendorPosOrderHistorySummaryBuilder() {
    VendorPosOrderHistorySummary._defaults(this);
  }

  VendorPosOrderHistorySummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _today = $v.today;
      _thisWeek = $v.thisWeek;
      _thisMonth = $v.thisMonth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorPosOrderHistorySummary other) {
    _$v = other as _$VendorPosOrderHistorySummary;
  }

  @override
  void update(void Function(VendorPosOrderHistorySummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorPosOrderHistorySummary build() => _build();

  _$VendorPosOrderHistorySummary _build() {
    final _$result = _$v ??
        _$VendorPosOrderHistorySummary._(
          today: today,
          thisWeek: thisWeek,
          thisMonth: thisMonth,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

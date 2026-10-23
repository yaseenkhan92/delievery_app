// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_home_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManHomeResponseData extends DeliveryManHomeResponseData {
  @override
  final int? todaysOrderCount;
  @override
  final int? thisWeekOrderCount;
  @override
  final int? thisMonthOrderCount;
  @override
  final num? todaysEarning;

  factory _$DeliveryManHomeResponseData(
          [void Function(DeliveryManHomeResponseDataBuilder)? updates]) =>
      (DeliveryManHomeResponseDataBuilder()..update(updates))._build();

  _$DeliveryManHomeResponseData._(
      {this.todaysOrderCount,
      this.thisWeekOrderCount,
      this.thisMonthOrderCount,
      this.todaysEarning})
      : super._();
  @override
  DeliveryManHomeResponseData rebuild(
          void Function(DeliveryManHomeResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManHomeResponseDataBuilder toBuilder() =>
      DeliveryManHomeResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManHomeResponseData &&
        todaysOrderCount == other.todaysOrderCount &&
        thisWeekOrderCount == other.thisWeekOrderCount &&
        thisMonthOrderCount == other.thisMonthOrderCount &&
        todaysEarning == other.todaysEarning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, todaysOrderCount.hashCode);
    _$hash = $jc(_$hash, thisWeekOrderCount.hashCode);
    _$hash = $jc(_$hash, thisMonthOrderCount.hashCode);
    _$hash = $jc(_$hash, todaysEarning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManHomeResponseData')
          ..add('todaysOrderCount', todaysOrderCount)
          ..add('thisWeekOrderCount', thisWeekOrderCount)
          ..add('thisMonthOrderCount', thisMonthOrderCount)
          ..add('todaysEarning', todaysEarning))
        .toString();
  }
}

class DeliveryManHomeResponseDataBuilder
    implements
        Builder<DeliveryManHomeResponseData,
            DeliveryManHomeResponseDataBuilder> {
  _$DeliveryManHomeResponseData? _$v;

  int? _todaysOrderCount;
  int? get todaysOrderCount => _$this._todaysOrderCount;
  set todaysOrderCount(int? todaysOrderCount) =>
      _$this._todaysOrderCount = todaysOrderCount;

  int? _thisWeekOrderCount;
  int? get thisWeekOrderCount => _$this._thisWeekOrderCount;
  set thisWeekOrderCount(int? thisWeekOrderCount) =>
      _$this._thisWeekOrderCount = thisWeekOrderCount;

  int? _thisMonthOrderCount;
  int? get thisMonthOrderCount => _$this._thisMonthOrderCount;
  set thisMonthOrderCount(int? thisMonthOrderCount) =>
      _$this._thisMonthOrderCount = thisMonthOrderCount;

  num? _todaysEarning;
  num? get todaysEarning => _$this._todaysEarning;
  set todaysEarning(num? todaysEarning) =>
      _$this._todaysEarning = todaysEarning;

  DeliveryManHomeResponseDataBuilder() {
    DeliveryManHomeResponseData._defaults(this);
  }

  DeliveryManHomeResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todaysOrderCount = $v.todaysOrderCount;
      _thisWeekOrderCount = $v.thisWeekOrderCount;
      _thisMonthOrderCount = $v.thisMonthOrderCount;
      _todaysEarning = $v.todaysEarning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManHomeResponseData other) {
    _$v = other as _$DeliveryManHomeResponseData;
  }

  @override
  void update(void Function(DeliveryManHomeResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManHomeResponseData build() => _build();

  _$DeliveryManHomeResponseData _build() {
    final _$result = _$v ??
        _$DeliveryManHomeResponseData._(
          todaysOrderCount: todaysOrderCount,
          thisWeekOrderCount: thisWeekOrderCount,
          thisMonthOrderCount: thisMonthOrderCount,
          todaysEarning: todaysEarning,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

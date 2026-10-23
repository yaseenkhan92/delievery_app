// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_earnings_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManEarningsSummary extends DeliveryManEarningsSummary {
  @override
  final DeliveryManEarningsSummaryWallet? wallet;
  @override
  final num? todaysEarning;
  @override
  final num? thisWeekEarning;
  @override
  final num? thisMonthEarning;
  @override
  final num? lifetimeEarning;

  factory _$DeliveryManEarningsSummary(
          [void Function(DeliveryManEarningsSummaryBuilder)? updates]) =>
      (DeliveryManEarningsSummaryBuilder()..update(updates))._build();

  _$DeliveryManEarningsSummary._(
      {this.wallet,
      this.todaysEarning,
      this.thisWeekEarning,
      this.thisMonthEarning,
      this.lifetimeEarning})
      : super._();
  @override
  DeliveryManEarningsSummary rebuild(
          void Function(DeliveryManEarningsSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManEarningsSummaryBuilder toBuilder() =>
      DeliveryManEarningsSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManEarningsSummary &&
        wallet == other.wallet &&
        todaysEarning == other.todaysEarning &&
        thisWeekEarning == other.thisWeekEarning &&
        thisMonthEarning == other.thisMonthEarning &&
        lifetimeEarning == other.lifetimeEarning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, wallet.hashCode);
    _$hash = $jc(_$hash, todaysEarning.hashCode);
    _$hash = $jc(_$hash, thisWeekEarning.hashCode);
    _$hash = $jc(_$hash, thisMonthEarning.hashCode);
    _$hash = $jc(_$hash, lifetimeEarning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManEarningsSummary')
          ..add('wallet', wallet)
          ..add('todaysEarning', todaysEarning)
          ..add('thisWeekEarning', thisWeekEarning)
          ..add('thisMonthEarning', thisMonthEarning)
          ..add('lifetimeEarning', lifetimeEarning))
        .toString();
  }
}

class DeliveryManEarningsSummaryBuilder
    implements
        Builder<DeliveryManEarningsSummary, DeliveryManEarningsSummaryBuilder> {
  _$DeliveryManEarningsSummary? _$v;

  DeliveryManEarningsSummaryWalletBuilder? _wallet;
  DeliveryManEarningsSummaryWalletBuilder get wallet =>
      _$this._wallet ??= DeliveryManEarningsSummaryWalletBuilder();
  set wallet(DeliveryManEarningsSummaryWalletBuilder? wallet) =>
      _$this._wallet = wallet;

  num? _todaysEarning;
  num? get todaysEarning => _$this._todaysEarning;
  set todaysEarning(num? todaysEarning) =>
      _$this._todaysEarning = todaysEarning;

  num? _thisWeekEarning;
  num? get thisWeekEarning => _$this._thisWeekEarning;
  set thisWeekEarning(num? thisWeekEarning) =>
      _$this._thisWeekEarning = thisWeekEarning;

  num? _thisMonthEarning;
  num? get thisMonthEarning => _$this._thisMonthEarning;
  set thisMonthEarning(num? thisMonthEarning) =>
      _$this._thisMonthEarning = thisMonthEarning;

  num? _lifetimeEarning;
  num? get lifetimeEarning => _$this._lifetimeEarning;
  set lifetimeEarning(num? lifetimeEarning) =>
      _$this._lifetimeEarning = lifetimeEarning;

  DeliveryManEarningsSummaryBuilder() {
    DeliveryManEarningsSummary._defaults(this);
  }

  DeliveryManEarningsSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wallet = $v.wallet?.toBuilder();
      _todaysEarning = $v.todaysEarning;
      _thisWeekEarning = $v.thisWeekEarning;
      _thisMonthEarning = $v.thisMonthEarning;
      _lifetimeEarning = $v.lifetimeEarning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManEarningsSummary other) {
    _$v = other as _$DeliveryManEarningsSummary;
  }

  @override
  void update(void Function(DeliveryManEarningsSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManEarningsSummary build() => _build();

  _$DeliveryManEarningsSummary _build() {
    _$DeliveryManEarningsSummary _$result;
    try {
      _$result = _$v ??
          _$DeliveryManEarningsSummary._(
            wallet: _wallet?.build(),
            todaysEarning: todaysEarning,
            thisWeekEarning: thisWeekEarning,
            thisMonthEarning: thisMonthEarning,
            lifetimeEarning: lifetimeEarning,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wallet';
        _wallet?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryManEarningsSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

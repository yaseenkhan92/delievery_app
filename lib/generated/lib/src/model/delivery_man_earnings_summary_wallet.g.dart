// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_earnings_summary_wallet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManEarningsSummaryWallet
    extends DeliveryManEarningsSummaryWallet {
  @override
  final num? totalEarning;
  @override
  final num? totalWithdrawn;
  @override
  final num? pendingWithdraw;
  @override
  final num? collectedCash;
  @override
  final num? balance;

  factory _$DeliveryManEarningsSummaryWallet(
          [void Function(DeliveryManEarningsSummaryWalletBuilder)? updates]) =>
      (DeliveryManEarningsSummaryWalletBuilder()..update(updates))._build();

  _$DeliveryManEarningsSummaryWallet._(
      {this.totalEarning,
      this.totalWithdrawn,
      this.pendingWithdraw,
      this.collectedCash,
      this.balance})
      : super._();
  @override
  DeliveryManEarningsSummaryWallet rebuild(
          void Function(DeliveryManEarningsSummaryWalletBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManEarningsSummaryWalletBuilder toBuilder() =>
      DeliveryManEarningsSummaryWalletBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManEarningsSummaryWallet &&
        totalEarning == other.totalEarning &&
        totalWithdrawn == other.totalWithdrawn &&
        pendingWithdraw == other.pendingWithdraw &&
        collectedCash == other.collectedCash &&
        balance == other.balance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalEarning.hashCode);
    _$hash = $jc(_$hash, totalWithdrawn.hashCode);
    _$hash = $jc(_$hash, pendingWithdraw.hashCode);
    _$hash = $jc(_$hash, collectedCash.hashCode);
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManEarningsSummaryWallet')
          ..add('totalEarning', totalEarning)
          ..add('totalWithdrawn', totalWithdrawn)
          ..add('pendingWithdraw', pendingWithdraw)
          ..add('collectedCash', collectedCash)
          ..add('balance', balance))
        .toString();
  }
}

class DeliveryManEarningsSummaryWalletBuilder
    implements
        Builder<DeliveryManEarningsSummaryWallet,
            DeliveryManEarningsSummaryWalletBuilder> {
  _$DeliveryManEarningsSummaryWallet? _$v;

  num? _totalEarning;
  num? get totalEarning => _$this._totalEarning;
  set totalEarning(num? totalEarning) => _$this._totalEarning = totalEarning;

  num? _totalWithdrawn;
  num? get totalWithdrawn => _$this._totalWithdrawn;
  set totalWithdrawn(num? totalWithdrawn) =>
      _$this._totalWithdrawn = totalWithdrawn;

  num? _pendingWithdraw;
  num? get pendingWithdraw => _$this._pendingWithdraw;
  set pendingWithdraw(num? pendingWithdraw) =>
      _$this._pendingWithdraw = pendingWithdraw;

  num? _collectedCash;
  num? get collectedCash => _$this._collectedCash;
  set collectedCash(num? collectedCash) =>
      _$this._collectedCash = collectedCash;

  num? _balance;
  num? get balance => _$this._balance;
  set balance(num? balance) => _$this._balance = balance;

  DeliveryManEarningsSummaryWalletBuilder() {
    DeliveryManEarningsSummaryWallet._defaults(this);
  }

  DeliveryManEarningsSummaryWalletBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalEarning = $v.totalEarning;
      _totalWithdrawn = $v.totalWithdrawn;
      _pendingWithdraw = $v.pendingWithdraw;
      _collectedCash = $v.collectedCash;
      _balance = $v.balance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManEarningsSummaryWallet other) {
    _$v = other as _$DeliveryManEarningsSummaryWallet;
  }

  @override
  void update(void Function(DeliveryManEarningsSummaryWalletBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManEarningsSummaryWallet build() => _build();

  _$DeliveryManEarningsSummaryWallet _build() {
    final _$result = _$v ??
        _$DeliveryManEarningsSummaryWallet._(
          totalEarning: totalEarning,
          totalWithdrawn: totalWithdrawn,
          pendingWithdraw: pendingWithdraw,
          collectedCash: collectedCash,
          balance: balance,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

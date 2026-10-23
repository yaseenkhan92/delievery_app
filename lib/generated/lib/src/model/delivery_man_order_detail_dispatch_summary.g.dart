// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_detail_dispatch_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderDetailDispatchSummary
    extends DeliveryManOrderDetailDispatchSummary {
  @override
  final String? title;
  @override
  final num? deliveryFee;

  factory _$DeliveryManOrderDetailDispatchSummary(
          [void Function(DeliveryManOrderDetailDispatchSummaryBuilder)?
              updates]) =>
      (DeliveryManOrderDetailDispatchSummaryBuilder()..update(updates))
          ._build();

  _$DeliveryManOrderDetailDispatchSummary._({this.title, this.deliveryFee})
      : super._();
  @override
  DeliveryManOrderDetailDispatchSummary rebuild(
          void Function(DeliveryManOrderDetailDispatchSummaryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderDetailDispatchSummaryBuilder toBuilder() =>
      DeliveryManOrderDetailDispatchSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderDetailDispatchSummary &&
        title == other.title &&
        deliveryFee == other.deliveryFee;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, deliveryFee.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'DeliveryManOrderDetailDispatchSummary')
          ..add('title', title)
          ..add('deliveryFee', deliveryFee))
        .toString();
  }
}

class DeliveryManOrderDetailDispatchSummaryBuilder
    implements
        Builder<DeliveryManOrderDetailDispatchSummary,
            DeliveryManOrderDetailDispatchSummaryBuilder> {
  _$DeliveryManOrderDetailDispatchSummary? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  num? _deliveryFee;
  num? get deliveryFee => _$this._deliveryFee;
  set deliveryFee(num? deliveryFee) => _$this._deliveryFee = deliveryFee;

  DeliveryManOrderDetailDispatchSummaryBuilder() {
    DeliveryManOrderDetailDispatchSummary._defaults(this);
  }

  DeliveryManOrderDetailDispatchSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _deliveryFee = $v.deliveryFee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManOrderDetailDispatchSummary other) {
    _$v = other as _$DeliveryManOrderDetailDispatchSummary;
  }

  @override
  void update(
      void Function(DeliveryManOrderDetailDispatchSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderDetailDispatchSummary build() => _build();

  _$DeliveryManOrderDetailDispatchSummary _build() {
    final _$result = _$v ??
        _$DeliveryManOrderDetailDispatchSummary._(
          title: title,
          deliveryFee: deliveryFee,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

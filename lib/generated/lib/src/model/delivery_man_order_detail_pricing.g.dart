// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_detail_pricing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderDetailPricing extends DeliveryManOrderDetailPricing {
  @override
  final num? itemsPrice;
  @override
  final num? discount;
  @override
  final num? vatTax;
  @override
  final num? taxPercent;
  @override
  final num? deliveryManTips;
  @override
  final num? addons;
  @override
  final num? deliveryCharge;
  @override
  final num? subtotal;

  factory _$DeliveryManOrderDetailPricing(
          [void Function(DeliveryManOrderDetailPricingBuilder)? updates]) =>
      (DeliveryManOrderDetailPricingBuilder()..update(updates))._build();

  _$DeliveryManOrderDetailPricing._(
      {this.itemsPrice,
      this.discount,
      this.vatTax,
      this.taxPercent,
      this.deliveryManTips,
      this.addons,
      this.deliveryCharge,
      this.subtotal})
      : super._();
  @override
  DeliveryManOrderDetailPricing rebuild(
          void Function(DeliveryManOrderDetailPricingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderDetailPricingBuilder toBuilder() =>
      DeliveryManOrderDetailPricingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderDetailPricing &&
        itemsPrice == other.itemsPrice &&
        discount == other.discount &&
        vatTax == other.vatTax &&
        taxPercent == other.taxPercent &&
        deliveryManTips == other.deliveryManTips &&
        addons == other.addons &&
        deliveryCharge == other.deliveryCharge &&
        subtotal == other.subtotal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, itemsPrice.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, vatTax.hashCode);
    _$hash = $jc(_$hash, taxPercent.hashCode);
    _$hash = $jc(_$hash, deliveryManTips.hashCode);
    _$hash = $jc(_$hash, addons.hashCode);
    _$hash = $jc(_$hash, deliveryCharge.hashCode);
    _$hash = $jc(_$hash, subtotal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManOrderDetailPricing')
          ..add('itemsPrice', itemsPrice)
          ..add('discount', discount)
          ..add('vatTax', vatTax)
          ..add('taxPercent', taxPercent)
          ..add('deliveryManTips', deliveryManTips)
          ..add('addons', addons)
          ..add('deliveryCharge', deliveryCharge)
          ..add('subtotal', subtotal))
        .toString();
  }
}

class DeliveryManOrderDetailPricingBuilder
    implements
        Builder<DeliveryManOrderDetailPricing,
            DeliveryManOrderDetailPricingBuilder> {
  _$DeliveryManOrderDetailPricing? _$v;

  num? _itemsPrice;
  num? get itemsPrice => _$this._itemsPrice;
  set itemsPrice(num? itemsPrice) => _$this._itemsPrice = itemsPrice;

  num? _discount;
  num? get discount => _$this._discount;
  set discount(num? discount) => _$this._discount = discount;

  num? _vatTax;
  num? get vatTax => _$this._vatTax;
  set vatTax(num? vatTax) => _$this._vatTax = vatTax;

  num? _taxPercent;
  num? get taxPercent => _$this._taxPercent;
  set taxPercent(num? taxPercent) => _$this._taxPercent = taxPercent;

  num? _deliveryManTips;
  num? get deliveryManTips => _$this._deliveryManTips;
  set deliveryManTips(num? deliveryManTips) =>
      _$this._deliveryManTips = deliveryManTips;

  num? _addons;
  num? get addons => _$this._addons;
  set addons(num? addons) => _$this._addons = addons;

  num? _deliveryCharge;
  num? get deliveryCharge => _$this._deliveryCharge;
  set deliveryCharge(num? deliveryCharge) =>
      _$this._deliveryCharge = deliveryCharge;

  num? _subtotal;
  num? get subtotal => _$this._subtotal;
  set subtotal(num? subtotal) => _$this._subtotal = subtotal;

  DeliveryManOrderDetailPricingBuilder() {
    DeliveryManOrderDetailPricing._defaults(this);
  }

  DeliveryManOrderDetailPricingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemsPrice = $v.itemsPrice;
      _discount = $v.discount;
      _vatTax = $v.vatTax;
      _taxPercent = $v.taxPercent;
      _deliveryManTips = $v.deliveryManTips;
      _addons = $v.addons;
      _deliveryCharge = $v.deliveryCharge;
      _subtotal = $v.subtotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManOrderDetailPricing other) {
    _$v = other as _$DeliveryManOrderDetailPricing;
  }

  @override
  void update(void Function(DeliveryManOrderDetailPricingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderDetailPricing build() => _build();

  _$DeliveryManOrderDetailPricing _build() {
    final _$result = _$v ??
        _$DeliveryManOrderDetailPricing._(
          itemsPrice: itemsPrice,
          discount: discount,
          vatTax: vatTax,
          taxPercent: taxPercent,
          deliveryManTips: deliveryManTips,
          addons: addons,
          deliveryCharge: deliveryCharge,
          subtotal: subtotal,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

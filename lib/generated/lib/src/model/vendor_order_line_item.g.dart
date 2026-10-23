// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_order_line_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorOrderLineItem extends VendorOrderLineItem {
  @override
  final String? id;
  @override
  final String? foodId;
  @override
  final String? foodName;
  @override
  final String? foodImage;
  @override
  final num? price;
  @override
  final int? quantity;
  @override
  final String? variation;
  @override
  final String? addOns;
  @override
  final num? taxAmount;
  @override
  final num? totalAddOnPrice;

  factory _$VendorOrderLineItem(
          [void Function(VendorOrderLineItemBuilder)? updates]) =>
      (VendorOrderLineItemBuilder()..update(updates))._build();

  _$VendorOrderLineItem._(
      {this.id,
      this.foodId,
      this.foodName,
      this.foodImage,
      this.price,
      this.quantity,
      this.variation,
      this.addOns,
      this.taxAmount,
      this.totalAddOnPrice})
      : super._();
  @override
  VendorOrderLineItem rebuild(
          void Function(VendorOrderLineItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorOrderLineItemBuilder toBuilder() =>
      VendorOrderLineItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorOrderLineItem &&
        id == other.id &&
        foodId == other.foodId &&
        foodName == other.foodName &&
        foodImage == other.foodImage &&
        price == other.price &&
        quantity == other.quantity &&
        variation == other.variation &&
        addOns == other.addOns &&
        taxAmount == other.taxAmount &&
        totalAddOnPrice == other.totalAddOnPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, foodId.hashCode);
    _$hash = $jc(_$hash, foodName.hashCode);
    _$hash = $jc(_$hash, foodImage.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, variation.hashCode);
    _$hash = $jc(_$hash, addOns.hashCode);
    _$hash = $jc(_$hash, taxAmount.hashCode);
    _$hash = $jc(_$hash, totalAddOnPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorOrderLineItem')
          ..add('id', id)
          ..add('foodId', foodId)
          ..add('foodName', foodName)
          ..add('foodImage', foodImage)
          ..add('price', price)
          ..add('quantity', quantity)
          ..add('variation', variation)
          ..add('addOns', addOns)
          ..add('taxAmount', taxAmount)
          ..add('totalAddOnPrice', totalAddOnPrice))
        .toString();
  }
}

class VendorOrderLineItemBuilder
    implements Builder<VendorOrderLineItem, VendorOrderLineItemBuilder> {
  _$VendorOrderLineItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _foodId;
  String? get foodId => _$this._foodId;
  set foodId(String? foodId) => _$this._foodId = foodId;

  String? _foodName;
  String? get foodName => _$this._foodName;
  set foodName(String? foodName) => _$this._foodName = foodName;

  String? _foodImage;
  String? get foodImage => _$this._foodImage;
  set foodImage(String? foodImage) => _$this._foodImage = foodImage;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _variation;
  String? get variation => _$this._variation;
  set variation(String? variation) => _$this._variation = variation;

  String? _addOns;
  String? get addOns => _$this._addOns;
  set addOns(String? addOns) => _$this._addOns = addOns;

  num? _taxAmount;
  num? get taxAmount => _$this._taxAmount;
  set taxAmount(num? taxAmount) => _$this._taxAmount = taxAmount;

  num? _totalAddOnPrice;
  num? get totalAddOnPrice => _$this._totalAddOnPrice;
  set totalAddOnPrice(num? totalAddOnPrice) =>
      _$this._totalAddOnPrice = totalAddOnPrice;

  VendorOrderLineItemBuilder() {
    VendorOrderLineItem._defaults(this);
  }

  VendorOrderLineItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _foodId = $v.foodId;
      _foodName = $v.foodName;
      _foodImage = $v.foodImage;
      _price = $v.price;
      _quantity = $v.quantity;
      _variation = $v.variation;
      _addOns = $v.addOns;
      _taxAmount = $v.taxAmount;
      _totalAddOnPrice = $v.totalAddOnPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorOrderLineItem other) {
    _$v = other as _$VendorOrderLineItem;
  }

  @override
  void update(void Function(VendorOrderLineItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorOrderLineItem build() => _build();

  _$VendorOrderLineItem _build() {
    final _$result = _$v ??
        _$VendorOrderLineItem._(
          id: id,
          foodId: foodId,
          foodName: foodName,
          foodImage: foodImage,
          price: price,
          quantity: quantity,
          variation: variation,
          addOns: addOns,
          taxAmount: taxAmount,
          totalAddOnPrice: totalAddOnPrice,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

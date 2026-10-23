// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_detail_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderDetailItem extends DeliveryManOrderDetailItem {
  @override
  final String? id;
  @override
  final String? foodId;
  @override
  final String? foodName;
  @override
  final String? foodImageUrl;
  @override
  final num? quantity;
  @override
  final String? unitLabel;
  @override
  final num? price;
  @override
  final num? lineTotal;
  @override
  final BuiltList<DeliveryManOrderDetailItemAddonLinesInner>? addonLines;
  @override
  final num? taxAmount;

  factory _$DeliveryManOrderDetailItem(
          [void Function(DeliveryManOrderDetailItemBuilder)? updates]) =>
      (DeliveryManOrderDetailItemBuilder()..update(updates))._build();

  _$DeliveryManOrderDetailItem._(
      {this.id,
      this.foodId,
      this.foodName,
      this.foodImageUrl,
      this.quantity,
      this.unitLabel,
      this.price,
      this.lineTotal,
      this.addonLines,
      this.taxAmount})
      : super._();
  @override
  DeliveryManOrderDetailItem rebuild(
          void Function(DeliveryManOrderDetailItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderDetailItemBuilder toBuilder() =>
      DeliveryManOrderDetailItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderDetailItem &&
        id == other.id &&
        foodId == other.foodId &&
        foodName == other.foodName &&
        foodImageUrl == other.foodImageUrl &&
        quantity == other.quantity &&
        unitLabel == other.unitLabel &&
        price == other.price &&
        lineTotal == other.lineTotal &&
        addonLines == other.addonLines &&
        taxAmount == other.taxAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, foodId.hashCode);
    _$hash = $jc(_$hash, foodName.hashCode);
    _$hash = $jc(_$hash, foodImageUrl.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unitLabel.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, lineTotal.hashCode);
    _$hash = $jc(_$hash, addonLines.hashCode);
    _$hash = $jc(_$hash, taxAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManOrderDetailItem')
          ..add('id', id)
          ..add('foodId', foodId)
          ..add('foodName', foodName)
          ..add('foodImageUrl', foodImageUrl)
          ..add('quantity', quantity)
          ..add('unitLabel', unitLabel)
          ..add('price', price)
          ..add('lineTotal', lineTotal)
          ..add('addonLines', addonLines)
          ..add('taxAmount', taxAmount))
        .toString();
  }
}

class DeliveryManOrderDetailItemBuilder
    implements
        Builder<DeliveryManOrderDetailItem, DeliveryManOrderDetailItemBuilder> {
  _$DeliveryManOrderDetailItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _foodId;
  String? get foodId => _$this._foodId;
  set foodId(String? foodId) => _$this._foodId = foodId;

  String? _foodName;
  String? get foodName => _$this._foodName;
  set foodName(String? foodName) => _$this._foodName = foodName;

  String? _foodImageUrl;
  String? get foodImageUrl => _$this._foodImageUrl;
  set foodImageUrl(String? foodImageUrl) => _$this._foodImageUrl = foodImageUrl;

  num? _quantity;
  num? get quantity => _$this._quantity;
  set quantity(num? quantity) => _$this._quantity = quantity;

  String? _unitLabel;
  String? get unitLabel => _$this._unitLabel;
  set unitLabel(String? unitLabel) => _$this._unitLabel = unitLabel;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  num? _lineTotal;
  num? get lineTotal => _$this._lineTotal;
  set lineTotal(num? lineTotal) => _$this._lineTotal = lineTotal;

  ListBuilder<DeliveryManOrderDetailItemAddonLinesInner>? _addonLines;
  ListBuilder<DeliveryManOrderDetailItemAddonLinesInner> get addonLines =>
      _$this._addonLines ??=
          ListBuilder<DeliveryManOrderDetailItemAddonLinesInner>();
  set addonLines(
          ListBuilder<DeliveryManOrderDetailItemAddonLinesInner>? addonLines) =>
      _$this._addonLines = addonLines;

  num? _taxAmount;
  num? get taxAmount => _$this._taxAmount;
  set taxAmount(num? taxAmount) => _$this._taxAmount = taxAmount;

  DeliveryManOrderDetailItemBuilder() {
    DeliveryManOrderDetailItem._defaults(this);
  }

  DeliveryManOrderDetailItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _foodId = $v.foodId;
      _foodName = $v.foodName;
      _foodImageUrl = $v.foodImageUrl;
      _quantity = $v.quantity;
      _unitLabel = $v.unitLabel;
      _price = $v.price;
      _lineTotal = $v.lineTotal;
      _addonLines = $v.addonLines?.toBuilder();
      _taxAmount = $v.taxAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManOrderDetailItem other) {
    _$v = other as _$DeliveryManOrderDetailItem;
  }

  @override
  void update(void Function(DeliveryManOrderDetailItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderDetailItem build() => _build();

  _$DeliveryManOrderDetailItem _build() {
    _$DeliveryManOrderDetailItem _$result;
    try {
      _$result = _$v ??
          _$DeliveryManOrderDetailItem._(
            id: id,
            foodId: foodId,
            foodName: foodName,
            foodImageUrl: foodImageUrl,
            quantity: quantity,
            unitLabel: unitLabel,
            price: price,
            lineTotal: lineTotal,
            addonLines: _addonLines?.build(),
            taxAmount: taxAmount,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addonLines';
        _addonLines?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryManOrderDetailItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

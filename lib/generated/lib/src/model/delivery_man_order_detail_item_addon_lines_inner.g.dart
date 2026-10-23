// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_detail_item_addon_lines_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderDetailItemAddonLinesInner
    extends DeliveryManOrderDetailItemAddonLinesInner {
  @override
  final String? name;
  @override
  final num? quantity;
  @override
  final num? price;

  factory _$DeliveryManOrderDetailItemAddonLinesInner(
          [void Function(DeliveryManOrderDetailItemAddonLinesInnerBuilder)?
              updates]) =>
      (DeliveryManOrderDetailItemAddonLinesInnerBuilder()..update(updates))
          ._build();

  _$DeliveryManOrderDetailItemAddonLinesInner._(
      {this.name, this.quantity, this.price})
      : super._();
  @override
  DeliveryManOrderDetailItemAddonLinesInner rebuild(
          void Function(DeliveryManOrderDetailItemAddonLinesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderDetailItemAddonLinesInnerBuilder toBuilder() =>
      DeliveryManOrderDetailItemAddonLinesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderDetailItemAddonLinesInner &&
        name == other.name &&
        quantity == other.quantity &&
        price == other.price;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'DeliveryManOrderDetailItemAddonLinesInner')
          ..add('name', name)
          ..add('quantity', quantity)
          ..add('price', price))
        .toString();
  }
}

class DeliveryManOrderDetailItemAddonLinesInnerBuilder
    implements
        Builder<DeliveryManOrderDetailItemAddonLinesInner,
            DeliveryManOrderDetailItemAddonLinesInnerBuilder> {
  _$DeliveryManOrderDetailItemAddonLinesInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  num? _quantity;
  num? get quantity => _$this._quantity;
  set quantity(num? quantity) => _$this._quantity = quantity;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  DeliveryManOrderDetailItemAddonLinesInnerBuilder() {
    DeliveryManOrderDetailItemAddonLinesInner._defaults(this);
  }

  DeliveryManOrderDetailItemAddonLinesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _quantity = $v.quantity;
      _price = $v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManOrderDetailItemAddonLinesInner other) {
    _$v = other as _$DeliveryManOrderDetailItemAddonLinesInner;
  }

  @override
  void update(
      void Function(DeliveryManOrderDetailItemAddonLinesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderDetailItemAddonLinesInner build() => _build();

  _$DeliveryManOrderDetailItemAddonLinesInner _build() {
    final _$result = _$v ??
        _$DeliveryManOrderDetailItemAddonLinesInner._(
          name: name,
          quantity: quantity,
          price: price,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_earning_order_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManEarningOrderItem extends DeliveryManEarningOrderItem {
  @override
  final String? id;
  @override
  final String? foodId;
  @override
  final String? name;
  @override
  final int? quantity;
  @override
  final num? price;
  @override
  final String? image;

  factory _$DeliveryManEarningOrderItem(
          [void Function(DeliveryManEarningOrderItemBuilder)? updates]) =>
      (DeliveryManEarningOrderItemBuilder()..update(updates))._build();

  _$DeliveryManEarningOrderItem._(
      {this.id, this.foodId, this.name, this.quantity, this.price, this.image})
      : super._();
  @override
  DeliveryManEarningOrderItem rebuild(
          void Function(DeliveryManEarningOrderItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManEarningOrderItemBuilder toBuilder() =>
      DeliveryManEarningOrderItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManEarningOrderItem &&
        id == other.id &&
        foodId == other.foodId &&
        name == other.name &&
        quantity == other.quantity &&
        price == other.price &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, foodId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManEarningOrderItem')
          ..add('id', id)
          ..add('foodId', foodId)
          ..add('name', name)
          ..add('quantity', quantity)
          ..add('price', price)
          ..add('image', image))
        .toString();
  }
}

class DeliveryManEarningOrderItemBuilder
    implements
        Builder<DeliveryManEarningOrderItem,
            DeliveryManEarningOrderItemBuilder> {
  _$DeliveryManEarningOrderItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _foodId;
  String? get foodId => _$this._foodId;
  set foodId(String? foodId) => _$this._foodId = foodId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DeliveryManEarningOrderItemBuilder() {
    DeliveryManEarningOrderItem._defaults(this);
  }

  DeliveryManEarningOrderItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _foodId = $v.foodId;
      _name = $v.name;
      _quantity = $v.quantity;
      _price = $v.price;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManEarningOrderItem other) {
    _$v = other as _$DeliveryManEarningOrderItem;
  }

  @override
  void update(void Function(DeliveryManEarningOrderItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManEarningOrderItem build() => _build();

  _$DeliveryManEarningOrderItem _build() {
    final _$result = _$v ??
        _$DeliveryManEarningOrderItem._(
          id: id,
          foodId: foodId,
          name: name,
          quantity: quantity,
          price: price,
          image: image,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

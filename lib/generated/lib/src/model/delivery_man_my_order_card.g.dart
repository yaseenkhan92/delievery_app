// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_my_order_card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManMyOrderCard extends DeliveryManMyOrderCard {
  @override
  final String? id;
  @override
  final String? orderId;
  @override
  final String? orderNumber;
  @override
  final String? itemName;
  @override
  final int? itemCount;
  @override
  final String? image;
  @override
  final num? orderAmount;
  @override
  final String? orderStatus;
  @override
  final String? statusLabel;
  @override
  final String? orderDate;
  @override
  final String? orderTime;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? deliveredAt;
  @override
  final String? restaurantName;

  factory _$DeliveryManMyOrderCard(
          [void Function(DeliveryManMyOrderCardBuilder)? updates]) =>
      (DeliveryManMyOrderCardBuilder()..update(updates))._build();

  _$DeliveryManMyOrderCard._(
      {this.id,
      this.orderId,
      this.orderNumber,
      this.itemName,
      this.itemCount,
      this.image,
      this.orderAmount,
      this.orderStatus,
      this.statusLabel,
      this.orderDate,
      this.orderTime,
      this.createdAt,
      this.deliveredAt,
      this.restaurantName})
      : super._();
  @override
  DeliveryManMyOrderCard rebuild(
          void Function(DeliveryManMyOrderCardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManMyOrderCardBuilder toBuilder() =>
      DeliveryManMyOrderCardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManMyOrderCard &&
        id == other.id &&
        orderId == other.orderId &&
        orderNumber == other.orderNumber &&
        itemName == other.itemName &&
        itemCount == other.itemCount &&
        image == other.image &&
        orderAmount == other.orderAmount &&
        orderStatus == other.orderStatus &&
        statusLabel == other.statusLabel &&
        orderDate == other.orderDate &&
        orderTime == other.orderTime &&
        createdAt == other.createdAt &&
        deliveredAt == other.deliveredAt &&
        restaurantName == other.restaurantName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, orderNumber.hashCode);
    _$hash = $jc(_$hash, itemName.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, orderAmount.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, statusLabel.hashCode);
    _$hash = $jc(_$hash, orderDate.hashCode);
    _$hash = $jc(_$hash, orderTime.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, deliveredAt.hashCode);
    _$hash = $jc(_$hash, restaurantName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManMyOrderCard')
          ..add('id', id)
          ..add('orderId', orderId)
          ..add('orderNumber', orderNumber)
          ..add('itemName', itemName)
          ..add('itemCount', itemCount)
          ..add('image', image)
          ..add('orderAmount', orderAmount)
          ..add('orderStatus', orderStatus)
          ..add('statusLabel', statusLabel)
          ..add('orderDate', orderDate)
          ..add('orderTime', orderTime)
          ..add('createdAt', createdAt)
          ..add('deliveredAt', deliveredAt)
          ..add('restaurantName', restaurantName))
        .toString();
  }
}

class DeliveryManMyOrderCardBuilder
    implements Builder<DeliveryManMyOrderCard, DeliveryManMyOrderCardBuilder> {
  _$DeliveryManMyOrderCard? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _orderNumber;
  String? get orderNumber => _$this._orderNumber;
  set orderNumber(String? orderNumber) => _$this._orderNumber = orderNumber;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  int? _itemCount;
  int? get itemCount => _$this._itemCount;
  set itemCount(int? itemCount) => _$this._itemCount = itemCount;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  num? _orderAmount;
  num? get orderAmount => _$this._orderAmount;
  set orderAmount(num? orderAmount) => _$this._orderAmount = orderAmount;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  String? _statusLabel;
  String? get statusLabel => _$this._statusLabel;
  set statusLabel(String? statusLabel) => _$this._statusLabel = statusLabel;

  String? _orderDate;
  String? get orderDate => _$this._orderDate;
  set orderDate(String? orderDate) => _$this._orderDate = orderDate;

  String? _orderTime;
  String? get orderTime => _$this._orderTime;
  set orderTime(String? orderTime) => _$this._orderTime = orderTime;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _deliveredAt;
  DateTime? get deliveredAt => _$this._deliveredAt;
  set deliveredAt(DateTime? deliveredAt) => _$this._deliveredAt = deliveredAt;

  String? _restaurantName;
  String? get restaurantName => _$this._restaurantName;
  set restaurantName(String? restaurantName) =>
      _$this._restaurantName = restaurantName;

  DeliveryManMyOrderCardBuilder() {
    DeliveryManMyOrderCard._defaults(this);
  }

  DeliveryManMyOrderCardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderId = $v.orderId;
      _orderNumber = $v.orderNumber;
      _itemName = $v.itemName;
      _itemCount = $v.itemCount;
      _image = $v.image;
      _orderAmount = $v.orderAmount;
      _orderStatus = $v.orderStatus;
      _statusLabel = $v.statusLabel;
      _orderDate = $v.orderDate;
      _orderTime = $v.orderTime;
      _createdAt = $v.createdAt;
      _deliveredAt = $v.deliveredAt;
      _restaurantName = $v.restaurantName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManMyOrderCard other) {
    _$v = other as _$DeliveryManMyOrderCard;
  }

  @override
  void update(void Function(DeliveryManMyOrderCardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManMyOrderCard build() => _build();

  _$DeliveryManMyOrderCard _build() {
    final _$result = _$v ??
        _$DeliveryManMyOrderCard._(
          id: id,
          orderId: orderId,
          orderNumber: orderNumber,
          itemName: itemName,
          itemCount: itemCount,
          image: image,
          orderAmount: orderAmount,
          orderStatus: orderStatus,
          statusLabel: statusLabel,
          orderDate: orderDate,
          orderTime: orderTime,
          createdAt: createdAt,
          deliveredAt: deliveredAt,
          restaurantName: restaurantName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_order_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ConsumerOrderListItemBuilder {
  void replace(ConsumerOrderListItem other);
  void update(void Function(ConsumerOrderListItemBuilder) updates);
  String? get id;
  set id(String? id);

  String? get orderId;
  set orderId(String? orderId);

  String? get orderNumber;
  set orderNumber(String? orderNumber);

  String? get restaurantId;
  set restaurantId(String? restaurantId);

  String? get restaurantName;
  set restaurantName(String? restaurantName);

  String? get restaurantLogo;
  set restaurantLogo(String? restaurantLogo);

  String? get image;
  set image(String? image);

  num? get orderAmount;
  set orderAmount(num? orderAmount);

  String? get orderStatus;
  set orderStatus(String? orderStatus);

  String? get statusLabel;
  set statusLabel(String? statusLabel);

  String? get paymentStatus;
  set paymentStatus(String? paymentStatus);

  DateTime? get createdAt;
  set createdAt(DateTime? createdAt);

  String? get orderDate;
  set orderDate(String? orderDate);

  String? get orderTime;
  set orderTime(String? orderTime);

  bool? get trackOrder;
  set trackOrder(bool? trackOrder);
}

class _$$ConsumerOrderListItem extends $ConsumerOrderListItem {
  @override
  final String? id;
  @override
  final String? orderId;
  @override
  final String? orderNumber;
  @override
  final String? restaurantId;
  @override
  final String? restaurantName;
  @override
  final String? restaurantLogo;
  @override
  final String? image;
  @override
  final num? orderAmount;
  @override
  final String? orderStatus;
  @override
  final String? statusLabel;
  @override
  final String? paymentStatus;
  @override
  final DateTime? createdAt;
  @override
  final String? orderDate;
  @override
  final String? orderTime;
  @override
  final bool? trackOrder;

  factory _$$ConsumerOrderListItem(
          [void Function($ConsumerOrderListItemBuilder)? updates]) =>
      ($ConsumerOrderListItemBuilder()..update(updates))._build();

  _$$ConsumerOrderListItem._(
      {this.id,
      this.orderId,
      this.orderNumber,
      this.restaurantId,
      this.restaurantName,
      this.restaurantLogo,
      this.image,
      this.orderAmount,
      this.orderStatus,
      this.statusLabel,
      this.paymentStatus,
      this.createdAt,
      this.orderDate,
      this.orderTime,
      this.trackOrder})
      : super._();
  @override
  $ConsumerOrderListItem rebuild(
          void Function($ConsumerOrderListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ConsumerOrderListItemBuilder toBuilder() =>
      $ConsumerOrderListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ConsumerOrderListItem &&
        id == other.id &&
        orderId == other.orderId &&
        orderNumber == other.orderNumber &&
        restaurantId == other.restaurantId &&
        restaurantName == other.restaurantName &&
        restaurantLogo == other.restaurantLogo &&
        image == other.image &&
        orderAmount == other.orderAmount &&
        orderStatus == other.orderStatus &&
        statusLabel == other.statusLabel &&
        paymentStatus == other.paymentStatus &&
        createdAt == other.createdAt &&
        orderDate == other.orderDate &&
        orderTime == other.orderTime &&
        trackOrder == other.trackOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, orderNumber.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, restaurantName.hashCode);
    _$hash = $jc(_$hash, restaurantLogo.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, orderAmount.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, statusLabel.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, orderDate.hashCode);
    _$hash = $jc(_$hash, orderTime.hashCode);
    _$hash = $jc(_$hash, trackOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$ConsumerOrderListItem')
          ..add('id', id)
          ..add('orderId', orderId)
          ..add('orderNumber', orderNumber)
          ..add('restaurantId', restaurantId)
          ..add('restaurantName', restaurantName)
          ..add('restaurantLogo', restaurantLogo)
          ..add('image', image)
          ..add('orderAmount', orderAmount)
          ..add('orderStatus', orderStatus)
          ..add('statusLabel', statusLabel)
          ..add('paymentStatus', paymentStatus)
          ..add('createdAt', createdAt)
          ..add('orderDate', orderDate)
          ..add('orderTime', orderTime)
          ..add('trackOrder', trackOrder))
        .toString();
  }
}

class $ConsumerOrderListItemBuilder
    implements
        Builder<$ConsumerOrderListItem, $ConsumerOrderListItemBuilder>,
        ConsumerOrderListItemBuilder {
  _$$ConsumerOrderListItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(covariant String? orderId) => _$this._orderId = orderId;

  String? _orderNumber;
  String? get orderNumber => _$this._orderNumber;
  set orderNumber(covariant String? orderNumber) =>
      _$this._orderNumber = orderNumber;

  String? _restaurantId;
  String? get restaurantId => _$this._restaurantId;
  set restaurantId(covariant String? restaurantId) =>
      _$this._restaurantId = restaurantId;

  String? _restaurantName;
  String? get restaurantName => _$this._restaurantName;
  set restaurantName(covariant String? restaurantName) =>
      _$this._restaurantName = restaurantName;

  String? _restaurantLogo;
  String? get restaurantLogo => _$this._restaurantLogo;
  set restaurantLogo(covariant String? restaurantLogo) =>
      _$this._restaurantLogo = restaurantLogo;

  String? _image;
  String? get image => _$this._image;
  set image(covariant String? image) => _$this._image = image;

  num? _orderAmount;
  num? get orderAmount => _$this._orderAmount;
  set orderAmount(covariant num? orderAmount) =>
      _$this._orderAmount = orderAmount;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(covariant String? orderStatus) =>
      _$this._orderStatus = orderStatus;

  String? _statusLabel;
  String? get statusLabel => _$this._statusLabel;
  set statusLabel(covariant String? statusLabel) =>
      _$this._statusLabel = statusLabel;

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(covariant String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(covariant DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _orderDate;
  String? get orderDate => _$this._orderDate;
  set orderDate(covariant String? orderDate) => _$this._orderDate = orderDate;

  String? _orderTime;
  String? get orderTime => _$this._orderTime;
  set orderTime(covariant String? orderTime) => _$this._orderTime = orderTime;

  bool? _trackOrder;
  bool? get trackOrder => _$this._trackOrder;
  set trackOrder(covariant bool? trackOrder) => _$this._trackOrder = trackOrder;

  $ConsumerOrderListItemBuilder() {
    $ConsumerOrderListItem._defaults(this);
  }

  $ConsumerOrderListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderId = $v.orderId;
      _orderNumber = $v.orderNumber;
      _restaurantId = $v.restaurantId;
      _restaurantName = $v.restaurantName;
      _restaurantLogo = $v.restaurantLogo;
      _image = $v.image;
      _orderAmount = $v.orderAmount;
      _orderStatus = $v.orderStatus;
      _statusLabel = $v.statusLabel;
      _paymentStatus = $v.paymentStatus;
      _createdAt = $v.createdAt;
      _orderDate = $v.orderDate;
      _orderTime = $v.orderTime;
      _trackOrder = $v.trackOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ConsumerOrderListItem other) {
    _$v = other as _$$ConsumerOrderListItem;
  }

  @override
  void update(void Function($ConsumerOrderListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ConsumerOrderListItem build() => _build();

  _$$ConsumerOrderListItem _build() {
    final _$result = _$v ??
        _$$ConsumerOrderListItem._(
          id: id,
          orderId: orderId,
          orderNumber: orderNumber,
          restaurantId: restaurantId,
          restaurantName: restaurantName,
          restaurantLogo: restaurantLogo,
          image: image,
          orderAmount: orderAmount,
          orderStatus: orderStatus,
          statusLabel: statusLabel,
          paymentStatus: paymentStatus,
          createdAt: createdAt,
          orderDate: orderDate,
          orderTime: orderTime,
          trackOrder: trackOrder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderSummary extends DeliveryManOrderSummary {
  @override
  final String? id;
  @override
  final String? orderStatus;
  @override
  final String? paymentMethod;
  @override
  final num? orderAmount;
  @override
  final num? deliveryCharge;
  @override
  final DateTime? scheduleAt;
  @override
  final String? restaurantId;
  @override
  final String? restaurantName;
  @override
  final String? customerName;
  @override
  final String? restaurantImageUrl;
  @override
  final String? customerImageUrl;
  @override
  final String? itemTitle;
  @override
  final String? deliveryAddressSnippet;
  @override
  final String? latitude;
  @override
  final String? longitude;

  factory _$DeliveryManOrderSummary(
          [void Function(DeliveryManOrderSummaryBuilder)? updates]) =>
      (DeliveryManOrderSummaryBuilder()..update(updates))._build();

  _$DeliveryManOrderSummary._(
      {this.id,
      this.orderStatus,
      this.paymentMethod,
      this.orderAmount,
      this.deliveryCharge,
      this.scheduleAt,
      this.restaurantId,
      this.restaurantName,
      this.customerName,
      this.restaurantImageUrl,
      this.customerImageUrl,
      this.itemTitle,
      this.deliveryAddressSnippet,
      this.latitude,
      this.longitude})
      : super._();
  @override
  DeliveryManOrderSummary rebuild(
          void Function(DeliveryManOrderSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderSummaryBuilder toBuilder() =>
      DeliveryManOrderSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderSummary &&
        id == other.id &&
        orderStatus == other.orderStatus &&
        paymentMethod == other.paymentMethod &&
        orderAmount == other.orderAmount &&
        deliveryCharge == other.deliveryCharge &&
        scheduleAt == other.scheduleAt &&
        restaurantId == other.restaurantId &&
        restaurantName == other.restaurantName &&
        customerName == other.customerName &&
        restaurantImageUrl == other.restaurantImageUrl &&
        customerImageUrl == other.customerImageUrl &&
        itemTitle == other.itemTitle &&
        deliveryAddressSnippet == other.deliveryAddressSnippet &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, orderAmount.hashCode);
    _$hash = $jc(_$hash, deliveryCharge.hashCode);
    _$hash = $jc(_$hash, scheduleAt.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, restaurantName.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, restaurantImageUrl.hashCode);
    _$hash = $jc(_$hash, customerImageUrl.hashCode);
    _$hash = $jc(_$hash, itemTitle.hashCode);
    _$hash = $jc(_$hash, deliveryAddressSnippet.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManOrderSummary')
          ..add('id', id)
          ..add('orderStatus', orderStatus)
          ..add('paymentMethod', paymentMethod)
          ..add('orderAmount', orderAmount)
          ..add('deliveryCharge', deliveryCharge)
          ..add('scheduleAt', scheduleAt)
          ..add('restaurantId', restaurantId)
          ..add('restaurantName', restaurantName)
          ..add('customerName', customerName)
          ..add('restaurantImageUrl', restaurantImageUrl)
          ..add('customerImageUrl', customerImageUrl)
          ..add('itemTitle', itemTitle)
          ..add('deliveryAddressSnippet', deliveryAddressSnippet)
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class DeliveryManOrderSummaryBuilder
    implements
        Builder<DeliveryManOrderSummary, DeliveryManOrderSummaryBuilder> {
  _$DeliveryManOrderSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  num? _orderAmount;
  num? get orderAmount => _$this._orderAmount;
  set orderAmount(num? orderAmount) => _$this._orderAmount = orderAmount;

  num? _deliveryCharge;
  num? get deliveryCharge => _$this._deliveryCharge;
  set deliveryCharge(num? deliveryCharge) =>
      _$this._deliveryCharge = deliveryCharge;

  DateTime? _scheduleAt;
  DateTime? get scheduleAt => _$this._scheduleAt;
  set scheduleAt(DateTime? scheduleAt) => _$this._scheduleAt = scheduleAt;

  String? _restaurantId;
  String? get restaurantId => _$this._restaurantId;
  set restaurantId(String? restaurantId) => _$this._restaurantId = restaurantId;

  String? _restaurantName;
  String? get restaurantName => _$this._restaurantName;
  set restaurantName(String? restaurantName) =>
      _$this._restaurantName = restaurantName;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _restaurantImageUrl;
  String? get restaurantImageUrl => _$this._restaurantImageUrl;
  set restaurantImageUrl(String? restaurantImageUrl) =>
      _$this._restaurantImageUrl = restaurantImageUrl;

  String? _customerImageUrl;
  String? get customerImageUrl => _$this._customerImageUrl;
  set customerImageUrl(String? customerImageUrl) =>
      _$this._customerImageUrl = customerImageUrl;

  String? _itemTitle;
  String? get itemTitle => _$this._itemTitle;
  set itemTitle(String? itemTitle) => _$this._itemTitle = itemTitle;

  String? _deliveryAddressSnippet;
  String? get deliveryAddressSnippet => _$this._deliveryAddressSnippet;
  set deliveryAddressSnippet(String? deliveryAddressSnippet) =>
      _$this._deliveryAddressSnippet = deliveryAddressSnippet;

  String? _latitude;
  String? get latitude => _$this._latitude;
  set latitude(String? latitude) => _$this._latitude = latitude;

  String? _longitude;
  String? get longitude => _$this._longitude;
  set longitude(String? longitude) => _$this._longitude = longitude;

  DeliveryManOrderSummaryBuilder() {
    DeliveryManOrderSummary._defaults(this);
  }

  DeliveryManOrderSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderStatus = $v.orderStatus;
      _paymentMethod = $v.paymentMethod;
      _orderAmount = $v.orderAmount;
      _deliveryCharge = $v.deliveryCharge;
      _scheduleAt = $v.scheduleAt;
      _restaurantId = $v.restaurantId;
      _restaurantName = $v.restaurantName;
      _customerName = $v.customerName;
      _restaurantImageUrl = $v.restaurantImageUrl;
      _customerImageUrl = $v.customerImageUrl;
      _itemTitle = $v.itemTitle;
      _deliveryAddressSnippet = $v.deliveryAddressSnippet;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManOrderSummary other) {
    _$v = other as _$DeliveryManOrderSummary;
  }

  @override
  void update(void Function(DeliveryManOrderSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderSummary build() => _build();

  _$DeliveryManOrderSummary _build() {
    final _$result = _$v ??
        _$DeliveryManOrderSummary._(
          id: id,
          orderStatus: orderStatus,
          paymentMethod: paymentMethod,
          orderAmount: orderAmount,
          deliveryCharge: deliveryCharge,
          scheduleAt: scheduleAt,
          restaurantId: restaurantId,
          restaurantName: restaurantName,
          customerName: customerName,
          restaurantImageUrl: restaurantImageUrl,
          customerImageUrl: customerImageUrl,
          itemTitle: itemTitle,
          deliveryAddressSnippet: deliveryAddressSnippet,
          latitude: latitude,
          longitude: longitude,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

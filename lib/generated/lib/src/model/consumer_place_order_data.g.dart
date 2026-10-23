// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_place_order_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerPlaceOrderData extends ConsumerPlaceOrderData {
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? restaurantId;
  @override
  final num? orderAmount;
  @override
  final num? deliveryCharge;
  @override
  final num? totalTaxAmount;
  @override
  final num? additionalCharge;
  @override
  final num? dmTips;
  @override
  final String? paymentStatus;
  @override
  final String? orderStatus;
  @override
  final String? paymentMethod;
  @override
  final String? orderType;
  @override
  final bool? scheduled;
  @override
  final DateTime? scheduleAt;
  @override
  final DateTime? createdAt;

  factory _$ConsumerPlaceOrderData(
          [void Function(ConsumerPlaceOrderDataBuilder)? updates]) =>
      (ConsumerPlaceOrderDataBuilder()..update(updates))._build();

  _$ConsumerPlaceOrderData._(
      {this.id,
      this.userId,
      this.restaurantId,
      this.orderAmount,
      this.deliveryCharge,
      this.totalTaxAmount,
      this.additionalCharge,
      this.dmTips,
      this.paymentStatus,
      this.orderStatus,
      this.paymentMethod,
      this.orderType,
      this.scheduled,
      this.scheduleAt,
      this.createdAt})
      : super._();
  @override
  ConsumerPlaceOrderData rebuild(
          void Function(ConsumerPlaceOrderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerPlaceOrderDataBuilder toBuilder() =>
      ConsumerPlaceOrderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerPlaceOrderData &&
        id == other.id &&
        userId == other.userId &&
        restaurantId == other.restaurantId &&
        orderAmount == other.orderAmount &&
        deliveryCharge == other.deliveryCharge &&
        totalTaxAmount == other.totalTaxAmount &&
        additionalCharge == other.additionalCharge &&
        dmTips == other.dmTips &&
        paymentStatus == other.paymentStatus &&
        orderStatus == other.orderStatus &&
        paymentMethod == other.paymentMethod &&
        orderType == other.orderType &&
        scheduled == other.scheduled &&
        scheduleAt == other.scheduleAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, orderAmount.hashCode);
    _$hash = $jc(_$hash, deliveryCharge.hashCode);
    _$hash = $jc(_$hash, totalTaxAmount.hashCode);
    _$hash = $jc(_$hash, additionalCharge.hashCode);
    _$hash = $jc(_$hash, dmTips.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, orderType.hashCode);
    _$hash = $jc(_$hash, scheduled.hashCode);
    _$hash = $jc(_$hash, scheduleAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerPlaceOrderData')
          ..add('id', id)
          ..add('userId', userId)
          ..add('restaurantId', restaurantId)
          ..add('orderAmount', orderAmount)
          ..add('deliveryCharge', deliveryCharge)
          ..add('totalTaxAmount', totalTaxAmount)
          ..add('additionalCharge', additionalCharge)
          ..add('dmTips', dmTips)
          ..add('paymentStatus', paymentStatus)
          ..add('orderStatus', orderStatus)
          ..add('paymentMethod', paymentMethod)
          ..add('orderType', orderType)
          ..add('scheduled', scheduled)
          ..add('scheduleAt', scheduleAt)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ConsumerPlaceOrderDataBuilder
    implements Builder<ConsumerPlaceOrderData, ConsumerPlaceOrderDataBuilder> {
  _$ConsumerPlaceOrderData? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _restaurantId;
  String? get restaurantId => _$this._restaurantId;
  set restaurantId(String? restaurantId) => _$this._restaurantId = restaurantId;

  num? _orderAmount;
  num? get orderAmount => _$this._orderAmount;
  set orderAmount(num? orderAmount) => _$this._orderAmount = orderAmount;

  num? _deliveryCharge;
  num? get deliveryCharge => _$this._deliveryCharge;
  set deliveryCharge(num? deliveryCharge) =>
      _$this._deliveryCharge = deliveryCharge;

  num? _totalTaxAmount;
  num? get totalTaxAmount => _$this._totalTaxAmount;
  set totalTaxAmount(num? totalTaxAmount) =>
      _$this._totalTaxAmount = totalTaxAmount;

  num? _additionalCharge;
  num? get additionalCharge => _$this._additionalCharge;
  set additionalCharge(num? additionalCharge) =>
      _$this._additionalCharge = additionalCharge;

  num? _dmTips;
  num? get dmTips => _$this._dmTips;
  set dmTips(num? dmTips) => _$this._dmTips = dmTips;

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _orderType;
  String? get orderType => _$this._orderType;
  set orderType(String? orderType) => _$this._orderType = orderType;

  bool? _scheduled;
  bool? get scheduled => _$this._scheduled;
  set scheduled(bool? scheduled) => _$this._scheduled = scheduled;

  DateTime? _scheduleAt;
  DateTime? get scheduleAt => _$this._scheduleAt;
  set scheduleAt(DateTime? scheduleAt) => _$this._scheduleAt = scheduleAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ConsumerPlaceOrderDataBuilder() {
    ConsumerPlaceOrderData._defaults(this);
  }

  ConsumerPlaceOrderDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _restaurantId = $v.restaurantId;
      _orderAmount = $v.orderAmount;
      _deliveryCharge = $v.deliveryCharge;
      _totalTaxAmount = $v.totalTaxAmount;
      _additionalCharge = $v.additionalCharge;
      _dmTips = $v.dmTips;
      _paymentStatus = $v.paymentStatus;
      _orderStatus = $v.orderStatus;
      _paymentMethod = $v.paymentMethod;
      _orderType = $v.orderType;
      _scheduled = $v.scheduled;
      _scheduleAt = $v.scheduleAt;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerPlaceOrderData other) {
    _$v = other as _$ConsumerPlaceOrderData;
  }

  @override
  void update(void Function(ConsumerPlaceOrderDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerPlaceOrderData build() => _build();

  _$ConsumerPlaceOrderData _build() {
    final _$result = _$v ??
        _$ConsumerPlaceOrderData._(
          id: id,
          userId: userId,
          restaurantId: restaurantId,
          orderAmount: orderAmount,
          deliveryCharge: deliveryCharge,
          totalTaxAmount: totalTaxAmount,
          additionalCharge: additionalCharge,
          dmTips: dmTips,
          paymentStatus: paymentStatus,
          orderStatus: orderStatus,
          paymentMethod: paymentMethod,
          orderType: orderType,
          scheduled: scheduled,
          scheduleAt: scheduleAt,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

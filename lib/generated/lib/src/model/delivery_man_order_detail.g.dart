// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderDetail extends DeliveryManOrderDetail {
  @override
  final String? id;
  @override
  final String? orderStatus;
  @override
  final String? statusLabel;
  @override
  final String? paymentStatus;
  @override
  final String? paymentMethod;
  @override
  final String? orderType;
  @override
  final num? orderAmount;
  @override
  final num? deliveryCharge;
  @override
  final bool? scheduled;
  @override
  final DateTime? scheduleAt;
  @override
  final DateTime? createdAt;
  @override
  final bool? isManualDispatch;
  @override
  final String? orderNote;
  @override
  final DeliveryManOrderDetailDispatchSummary? dispatchSummary;
  @override
  final DeliveryManOrderDetailRestaurant? restaurant;
  @override
  final DeliveryManOrderDetailParty? customer;
  @override
  final String? deliveryAddress;
  @override
  final JsonObject? deliveryAddressParsed;
  @override
  final BuiltList<DeliveryManOrderDetailItem>? items;
  @override
  final DeliveryManOrderDetailPricing? pricing;
  @override
  final bool? assignedToMe;
  @override
  final bool? canAccept;
  @override
  final bool? canUpdateStatus;

  factory _$DeliveryManOrderDetail(
          [void Function(DeliveryManOrderDetailBuilder)? updates]) =>
      (DeliveryManOrderDetailBuilder()..update(updates))._build();

  _$DeliveryManOrderDetail._(
      {this.id,
      this.orderStatus,
      this.statusLabel,
      this.paymentStatus,
      this.paymentMethod,
      this.orderType,
      this.orderAmount,
      this.deliveryCharge,
      this.scheduled,
      this.scheduleAt,
      this.createdAt,
      this.isManualDispatch,
      this.orderNote,
      this.dispatchSummary,
      this.restaurant,
      this.customer,
      this.deliveryAddress,
      this.deliveryAddressParsed,
      this.items,
      this.pricing,
      this.assignedToMe,
      this.canAccept,
      this.canUpdateStatus})
      : super._();
  @override
  DeliveryManOrderDetail rebuild(
          void Function(DeliveryManOrderDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderDetailBuilder toBuilder() =>
      DeliveryManOrderDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderDetail &&
        id == other.id &&
        orderStatus == other.orderStatus &&
        statusLabel == other.statusLabel &&
        paymentStatus == other.paymentStatus &&
        paymentMethod == other.paymentMethod &&
        orderType == other.orderType &&
        orderAmount == other.orderAmount &&
        deliveryCharge == other.deliveryCharge &&
        scheduled == other.scheduled &&
        scheduleAt == other.scheduleAt &&
        createdAt == other.createdAt &&
        isManualDispatch == other.isManualDispatch &&
        orderNote == other.orderNote &&
        dispatchSummary == other.dispatchSummary &&
        restaurant == other.restaurant &&
        customer == other.customer &&
        deliveryAddress == other.deliveryAddress &&
        deliveryAddressParsed == other.deliveryAddressParsed &&
        items == other.items &&
        pricing == other.pricing &&
        assignedToMe == other.assignedToMe &&
        canAccept == other.canAccept &&
        canUpdateStatus == other.canUpdateStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, statusLabel.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, orderType.hashCode);
    _$hash = $jc(_$hash, orderAmount.hashCode);
    _$hash = $jc(_$hash, deliveryCharge.hashCode);
    _$hash = $jc(_$hash, scheduled.hashCode);
    _$hash = $jc(_$hash, scheduleAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, isManualDispatch.hashCode);
    _$hash = $jc(_$hash, orderNote.hashCode);
    _$hash = $jc(_$hash, dispatchSummary.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, deliveryAddress.hashCode);
    _$hash = $jc(_$hash, deliveryAddressParsed.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, pricing.hashCode);
    _$hash = $jc(_$hash, assignedToMe.hashCode);
    _$hash = $jc(_$hash, canAccept.hashCode);
    _$hash = $jc(_$hash, canUpdateStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManOrderDetail')
          ..add('id', id)
          ..add('orderStatus', orderStatus)
          ..add('statusLabel', statusLabel)
          ..add('paymentStatus', paymentStatus)
          ..add('paymentMethod', paymentMethod)
          ..add('orderType', orderType)
          ..add('orderAmount', orderAmount)
          ..add('deliveryCharge', deliveryCharge)
          ..add('scheduled', scheduled)
          ..add('scheduleAt', scheduleAt)
          ..add('createdAt', createdAt)
          ..add('isManualDispatch', isManualDispatch)
          ..add('orderNote', orderNote)
          ..add('dispatchSummary', dispatchSummary)
          ..add('restaurant', restaurant)
          ..add('customer', customer)
          ..add('deliveryAddress', deliveryAddress)
          ..add('deliveryAddressParsed', deliveryAddressParsed)
          ..add('items', items)
          ..add('pricing', pricing)
          ..add('assignedToMe', assignedToMe)
          ..add('canAccept', canAccept)
          ..add('canUpdateStatus', canUpdateStatus))
        .toString();
  }
}

class DeliveryManOrderDetailBuilder
    implements Builder<DeliveryManOrderDetail, DeliveryManOrderDetailBuilder> {
  _$DeliveryManOrderDetail? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  String? _statusLabel;
  String? get statusLabel => _$this._statusLabel;
  set statusLabel(String? statusLabel) => _$this._statusLabel = statusLabel;

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _orderType;
  String? get orderType => _$this._orderType;
  set orderType(String? orderType) => _$this._orderType = orderType;

  num? _orderAmount;
  num? get orderAmount => _$this._orderAmount;
  set orderAmount(num? orderAmount) => _$this._orderAmount = orderAmount;

  num? _deliveryCharge;
  num? get deliveryCharge => _$this._deliveryCharge;
  set deliveryCharge(num? deliveryCharge) =>
      _$this._deliveryCharge = deliveryCharge;

  bool? _scheduled;
  bool? get scheduled => _$this._scheduled;
  set scheduled(bool? scheduled) => _$this._scheduled = scheduled;

  DateTime? _scheduleAt;
  DateTime? get scheduleAt => _$this._scheduleAt;
  set scheduleAt(DateTime? scheduleAt) => _$this._scheduleAt = scheduleAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  bool? _isManualDispatch;
  bool? get isManualDispatch => _$this._isManualDispatch;
  set isManualDispatch(bool? isManualDispatch) =>
      _$this._isManualDispatch = isManualDispatch;

  String? _orderNote;
  String? get orderNote => _$this._orderNote;
  set orderNote(String? orderNote) => _$this._orderNote = orderNote;

  DeliveryManOrderDetailDispatchSummaryBuilder? _dispatchSummary;
  DeliveryManOrderDetailDispatchSummaryBuilder get dispatchSummary =>
      _$this._dispatchSummary ??=
          DeliveryManOrderDetailDispatchSummaryBuilder();
  set dispatchSummary(
          DeliveryManOrderDetailDispatchSummaryBuilder? dispatchSummary) =>
      _$this._dispatchSummary = dispatchSummary;

  DeliveryManOrderDetailRestaurantBuilder? _restaurant;
  DeliveryManOrderDetailRestaurantBuilder get restaurant =>
      _$this._restaurant ??= DeliveryManOrderDetailRestaurantBuilder();
  set restaurant(DeliveryManOrderDetailRestaurantBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  DeliveryManOrderDetailPartyBuilder? _customer;
  DeliveryManOrderDetailPartyBuilder get customer =>
      _$this._customer ??= DeliveryManOrderDetailPartyBuilder();
  set customer(DeliveryManOrderDetailPartyBuilder? customer) =>
      _$this._customer = customer;

  String? _deliveryAddress;
  String? get deliveryAddress => _$this._deliveryAddress;
  set deliveryAddress(String? deliveryAddress) =>
      _$this._deliveryAddress = deliveryAddress;

  JsonObject? _deliveryAddressParsed;
  JsonObject? get deliveryAddressParsed => _$this._deliveryAddressParsed;
  set deliveryAddressParsed(JsonObject? deliveryAddressParsed) =>
      _$this._deliveryAddressParsed = deliveryAddressParsed;

  ListBuilder<DeliveryManOrderDetailItem>? _items;
  ListBuilder<DeliveryManOrderDetailItem> get items =>
      _$this._items ??= ListBuilder<DeliveryManOrderDetailItem>();
  set items(ListBuilder<DeliveryManOrderDetailItem>? items) =>
      _$this._items = items;

  DeliveryManOrderDetailPricingBuilder? _pricing;
  DeliveryManOrderDetailPricingBuilder get pricing =>
      _$this._pricing ??= DeliveryManOrderDetailPricingBuilder();
  set pricing(DeliveryManOrderDetailPricingBuilder? pricing) =>
      _$this._pricing = pricing;

  bool? _assignedToMe;
  bool? get assignedToMe => _$this._assignedToMe;
  set assignedToMe(bool? assignedToMe) => _$this._assignedToMe = assignedToMe;

  bool? _canAccept;
  bool? get canAccept => _$this._canAccept;
  set canAccept(bool? canAccept) => _$this._canAccept = canAccept;

  bool? _canUpdateStatus;
  bool? get canUpdateStatus => _$this._canUpdateStatus;
  set canUpdateStatus(bool? canUpdateStatus) =>
      _$this._canUpdateStatus = canUpdateStatus;

  DeliveryManOrderDetailBuilder() {
    DeliveryManOrderDetail._defaults(this);
  }

  DeliveryManOrderDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderStatus = $v.orderStatus;
      _statusLabel = $v.statusLabel;
      _paymentStatus = $v.paymentStatus;
      _paymentMethod = $v.paymentMethod;
      _orderType = $v.orderType;
      _orderAmount = $v.orderAmount;
      _deliveryCharge = $v.deliveryCharge;
      _scheduled = $v.scheduled;
      _scheduleAt = $v.scheduleAt;
      _createdAt = $v.createdAt;
      _isManualDispatch = $v.isManualDispatch;
      _orderNote = $v.orderNote;
      _dispatchSummary = $v.dispatchSummary?.toBuilder();
      _restaurant = $v.restaurant?.toBuilder();
      _customer = $v.customer?.toBuilder();
      _deliveryAddress = $v.deliveryAddress;
      _deliveryAddressParsed = $v.deliveryAddressParsed;
      _items = $v.items?.toBuilder();
      _pricing = $v.pricing?.toBuilder();
      _assignedToMe = $v.assignedToMe;
      _canAccept = $v.canAccept;
      _canUpdateStatus = $v.canUpdateStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManOrderDetail other) {
    _$v = other as _$DeliveryManOrderDetail;
  }

  @override
  void update(void Function(DeliveryManOrderDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderDetail build() => _build();

  _$DeliveryManOrderDetail _build() {
    _$DeliveryManOrderDetail _$result;
    try {
      _$result = _$v ??
          _$DeliveryManOrderDetail._(
            id: id,
            orderStatus: orderStatus,
            statusLabel: statusLabel,
            paymentStatus: paymentStatus,
            paymentMethod: paymentMethod,
            orderType: orderType,
            orderAmount: orderAmount,
            deliveryCharge: deliveryCharge,
            scheduled: scheduled,
            scheduleAt: scheduleAt,
            createdAt: createdAt,
            isManualDispatch: isManualDispatch,
            orderNote: orderNote,
            dispatchSummary: _dispatchSummary?.build(),
            restaurant: _restaurant?.build(),
            customer: _customer?.build(),
            deliveryAddress: deliveryAddress,
            deliveryAddressParsed: deliveryAddressParsed,
            items: _items?.build(),
            pricing: _pricing?.build(),
            assignedToMe: assignedToMe,
            canAccept: canAccept,
            canUpdateStatus: canUpdateStatus,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dispatchSummary';
        _dispatchSummary?.build();
        _$failedField = 'restaurant';
        _restaurant?.build();
        _$failedField = 'customer';
        _customer?.build();

        _$failedField = 'items';
        _items?.build();
        _$failedField = 'pricing';
        _pricing?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryManOrderDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_order_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorOrderDetail extends VendorOrderDetail {
  @override
  final String? deliveryAddress;
  @override
  final String? orderNote;
  @override
  final num? deliveryCharge;
  @override
  final num? totalTaxAmount;
  @override
  final BuiltList<VendorOrderLineItem>? items;
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? restaurantId;
  @override
  final num? orderAmount;
  @override
  final String? orderStatus;
  @override
  final String? paymentStatus;
  @override
  final String? paymentMethod;
  @override
  final String? orderType;
  @override
  final bool? scheduled;
  @override
  final bool? checked;
  @override
  final DateTime? createdAt;
  @override
  final String? customerName;
  @override
  final String? customerPhone;

  factory _$VendorOrderDetail(
          [void Function(VendorOrderDetailBuilder)? updates]) =>
      (VendorOrderDetailBuilder()..update(updates))._build();

  _$VendorOrderDetail._(
      {this.deliveryAddress,
      this.orderNote,
      this.deliveryCharge,
      this.totalTaxAmount,
      this.items,
      this.id,
      this.userId,
      this.restaurantId,
      this.orderAmount,
      this.orderStatus,
      this.paymentStatus,
      this.paymentMethod,
      this.orderType,
      this.scheduled,
      this.checked,
      this.createdAt,
      this.customerName,
      this.customerPhone})
      : super._();
  @override
  VendorOrderDetail rebuild(void Function(VendorOrderDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorOrderDetailBuilder toBuilder() =>
      VendorOrderDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorOrderDetail &&
        deliveryAddress == other.deliveryAddress &&
        orderNote == other.orderNote &&
        deliveryCharge == other.deliveryCharge &&
        totalTaxAmount == other.totalTaxAmount &&
        items == other.items &&
        id == other.id &&
        userId == other.userId &&
        restaurantId == other.restaurantId &&
        orderAmount == other.orderAmount &&
        orderStatus == other.orderStatus &&
        paymentStatus == other.paymentStatus &&
        paymentMethod == other.paymentMethod &&
        orderType == other.orderType &&
        scheduled == other.scheduled &&
        checked == other.checked &&
        createdAt == other.createdAt &&
        customerName == other.customerName &&
        customerPhone == other.customerPhone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveryAddress.hashCode);
    _$hash = $jc(_$hash, orderNote.hashCode);
    _$hash = $jc(_$hash, deliveryCharge.hashCode);
    _$hash = $jc(_$hash, totalTaxAmount.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, orderAmount.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, orderType.hashCode);
    _$hash = $jc(_$hash, scheduled.hashCode);
    _$hash = $jc(_$hash, checked.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerPhone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorOrderDetail')
          ..add('deliveryAddress', deliveryAddress)
          ..add('orderNote', orderNote)
          ..add('deliveryCharge', deliveryCharge)
          ..add('totalTaxAmount', totalTaxAmount)
          ..add('items', items)
          ..add('id', id)
          ..add('userId', userId)
          ..add('restaurantId', restaurantId)
          ..add('orderAmount', orderAmount)
          ..add('orderStatus', orderStatus)
          ..add('paymentStatus', paymentStatus)
          ..add('paymentMethod', paymentMethod)
          ..add('orderType', orderType)
          ..add('scheduled', scheduled)
          ..add('checked', checked)
          ..add('createdAt', createdAt)
          ..add('customerName', customerName)
          ..add('customerPhone', customerPhone))
        .toString();
  }
}

class VendorOrderDetailBuilder
    implements
        Builder<VendorOrderDetail, VendorOrderDetailBuilder>,
        VendorOrderSummaryBuilder {
  _$VendorOrderDetail? _$v;

  String? _deliveryAddress;
  String? get deliveryAddress => _$this._deliveryAddress;
  set deliveryAddress(covariant String? deliveryAddress) =>
      _$this._deliveryAddress = deliveryAddress;

  String? _orderNote;
  String? get orderNote => _$this._orderNote;
  set orderNote(covariant String? orderNote) => _$this._orderNote = orderNote;

  num? _deliveryCharge;
  num? get deliveryCharge => _$this._deliveryCharge;
  set deliveryCharge(covariant num? deliveryCharge) =>
      _$this._deliveryCharge = deliveryCharge;

  num? _totalTaxAmount;
  num? get totalTaxAmount => _$this._totalTaxAmount;
  set totalTaxAmount(covariant num? totalTaxAmount) =>
      _$this._totalTaxAmount = totalTaxAmount;

  ListBuilder<VendorOrderLineItem>? _items;
  ListBuilder<VendorOrderLineItem> get items =>
      _$this._items ??= ListBuilder<VendorOrderLineItem>();
  set items(covariant ListBuilder<VendorOrderLineItem>? items) =>
      _$this._items = items;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(covariant String? userId) => _$this._userId = userId;

  String? _restaurantId;
  String? get restaurantId => _$this._restaurantId;
  set restaurantId(covariant String? restaurantId) =>
      _$this._restaurantId = restaurantId;

  num? _orderAmount;
  num? get orderAmount => _$this._orderAmount;
  set orderAmount(covariant num? orderAmount) =>
      _$this._orderAmount = orderAmount;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(covariant String? orderStatus) =>
      _$this._orderStatus = orderStatus;

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(covariant String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(covariant String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _orderType;
  String? get orderType => _$this._orderType;
  set orderType(covariant String? orderType) => _$this._orderType = orderType;

  bool? _scheduled;
  bool? get scheduled => _$this._scheduled;
  set scheduled(covariant bool? scheduled) => _$this._scheduled = scheduled;

  bool? _checked;
  bool? get checked => _$this._checked;
  set checked(covariant bool? checked) => _$this._checked = checked;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(covariant DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(covariant String? customerName) =>
      _$this._customerName = customerName;

  String? _customerPhone;
  String? get customerPhone => _$this._customerPhone;
  set customerPhone(covariant String? customerPhone) =>
      _$this._customerPhone = customerPhone;

  VendorOrderDetailBuilder() {
    VendorOrderDetail._defaults(this);
  }

  VendorOrderDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryAddress = $v.deliveryAddress;
      _orderNote = $v.orderNote;
      _deliveryCharge = $v.deliveryCharge;
      _totalTaxAmount = $v.totalTaxAmount;
      _items = $v.items?.toBuilder();
      _id = $v.id;
      _userId = $v.userId;
      _restaurantId = $v.restaurantId;
      _orderAmount = $v.orderAmount;
      _orderStatus = $v.orderStatus;
      _paymentStatus = $v.paymentStatus;
      _paymentMethod = $v.paymentMethod;
      _orderType = $v.orderType;
      _scheduled = $v.scheduled;
      _checked = $v.checked;
      _createdAt = $v.createdAt;
      _customerName = $v.customerName;
      _customerPhone = $v.customerPhone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant VendorOrderDetail other) {
    _$v = other as _$VendorOrderDetail;
  }

  @override
  void update(void Function(VendorOrderDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorOrderDetail build() => _build();

  _$VendorOrderDetail _build() {
    _$VendorOrderDetail _$result;
    try {
      _$result = _$v ??
          _$VendorOrderDetail._(
            deliveryAddress: deliveryAddress,
            orderNote: orderNote,
            deliveryCharge: deliveryCharge,
            totalTaxAmount: totalTaxAmount,
            items: _items?.build(),
            id: id,
            userId: userId,
            restaurantId: restaurantId,
            orderAmount: orderAmount,
            orderStatus: orderStatus,
            paymentStatus: paymentStatus,
            paymentMethod: paymentMethod,
            orderType: orderType,
            scheduled: scheduled,
            checked: checked,
            createdAt: createdAt,
            customerName: customerName,
            customerPhone: customerPhone,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VendorOrderDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

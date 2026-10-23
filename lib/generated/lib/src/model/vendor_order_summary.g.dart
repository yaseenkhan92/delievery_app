// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_order_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class VendorOrderSummaryBuilder {
  void replace(VendorOrderSummary other);
  void update(void Function(VendorOrderSummaryBuilder) updates);
  String? get id;
  set id(String? id);

  String? get userId;
  set userId(String? userId);

  String? get restaurantId;
  set restaurantId(String? restaurantId);

  num? get orderAmount;
  set orderAmount(num? orderAmount);

  String? get orderStatus;
  set orderStatus(String? orderStatus);

  String? get paymentStatus;
  set paymentStatus(String? paymentStatus);

  String? get paymentMethod;
  set paymentMethod(String? paymentMethod);

  String? get orderType;
  set orderType(String? orderType);

  bool? get scheduled;
  set scheduled(bool? scheduled);

  bool? get checked;
  set checked(bool? checked);

  DateTime? get createdAt;
  set createdAt(DateTime? createdAt);

  String? get customerName;
  set customerName(String? customerName);

  String? get customerPhone;
  set customerPhone(String? customerPhone);
}

class _$$VendorOrderSummary extends $VendorOrderSummary {
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

  factory _$$VendorOrderSummary(
          [void Function($VendorOrderSummaryBuilder)? updates]) =>
      ($VendorOrderSummaryBuilder()..update(updates))._build();

  _$$VendorOrderSummary._(
      {this.id,
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
  $VendorOrderSummary rebuild(
          void Function($VendorOrderSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $VendorOrderSummaryBuilder toBuilder() =>
      $VendorOrderSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $VendorOrderSummary &&
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
    return (newBuiltValueToStringHelper(r'$VendorOrderSummary')
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

class $VendorOrderSummaryBuilder
    implements
        Builder<$VendorOrderSummary, $VendorOrderSummaryBuilder>,
        VendorOrderSummaryBuilder {
  _$$VendorOrderSummary? _$v;

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

  $VendorOrderSummaryBuilder() {
    $VendorOrderSummary._defaults(this);
  }

  $VendorOrderSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $VendorOrderSummary other) {
    _$v = other as _$$VendorOrderSummary;
  }

  @override
  void update(void Function($VendorOrderSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $VendorOrderSummary build() => _build();

  _$$VendorOrderSummary _build() {
    final _$result = _$v ??
        _$$VendorOrderSummary._(
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
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

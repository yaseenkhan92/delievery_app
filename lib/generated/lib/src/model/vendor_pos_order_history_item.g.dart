// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_pos_order_history_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorPosOrderHistoryItem extends VendorPosOrderHistoryItem {
  @override
  final String? previewItemImage;
  @override
  final String? previewItemName;
  @override
  final bool? isManualDispatch;
  @override
  final String? statusLabel;
  @override
  final int? itemsCount;
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

  factory _$VendorPosOrderHistoryItem(
          [void Function(VendorPosOrderHistoryItemBuilder)? updates]) =>
      (VendorPosOrderHistoryItemBuilder()..update(updates))._build();

  _$VendorPosOrderHistoryItem._(
      {this.previewItemImage,
      this.previewItemName,
      this.isManualDispatch,
      this.statusLabel,
      this.itemsCount,
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
  VendorPosOrderHistoryItem rebuild(
          void Function(VendorPosOrderHistoryItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorPosOrderHistoryItemBuilder toBuilder() =>
      VendorPosOrderHistoryItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorPosOrderHistoryItem &&
        previewItemImage == other.previewItemImage &&
        previewItemName == other.previewItemName &&
        isManualDispatch == other.isManualDispatch &&
        statusLabel == other.statusLabel &&
        itemsCount == other.itemsCount &&
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
    _$hash = $jc(_$hash, previewItemImage.hashCode);
    _$hash = $jc(_$hash, previewItemName.hashCode);
    _$hash = $jc(_$hash, isManualDispatch.hashCode);
    _$hash = $jc(_$hash, statusLabel.hashCode);
    _$hash = $jc(_$hash, itemsCount.hashCode);
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
    return (newBuiltValueToStringHelper(r'VendorPosOrderHistoryItem')
          ..add('previewItemImage', previewItemImage)
          ..add('previewItemName', previewItemName)
          ..add('isManualDispatch', isManualDispatch)
          ..add('statusLabel', statusLabel)
          ..add('itemsCount', itemsCount)
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

class VendorPosOrderHistoryItemBuilder
    implements
        Builder<VendorPosOrderHistoryItem, VendorPosOrderHistoryItemBuilder>,
        VendorOrderSummaryBuilder {
  _$VendorPosOrderHistoryItem? _$v;

  String? _previewItemImage;
  String? get previewItemImage => _$this._previewItemImage;
  set previewItemImage(covariant String? previewItemImage) =>
      _$this._previewItemImage = previewItemImage;

  String? _previewItemName;
  String? get previewItemName => _$this._previewItemName;
  set previewItemName(covariant String? previewItemName) =>
      _$this._previewItemName = previewItemName;

  bool? _isManualDispatch;
  bool? get isManualDispatch => _$this._isManualDispatch;
  set isManualDispatch(covariant bool? isManualDispatch) =>
      _$this._isManualDispatch = isManualDispatch;

  String? _statusLabel;
  String? get statusLabel => _$this._statusLabel;
  set statusLabel(covariant String? statusLabel) =>
      _$this._statusLabel = statusLabel;

  int? _itemsCount;
  int? get itemsCount => _$this._itemsCount;
  set itemsCount(covariant int? itemsCount) => _$this._itemsCount = itemsCount;

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

  VendorPosOrderHistoryItemBuilder() {
    VendorPosOrderHistoryItem._defaults(this);
  }

  VendorPosOrderHistoryItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _previewItemImage = $v.previewItemImage;
      _previewItemName = $v.previewItemName;
      _isManualDispatch = $v.isManualDispatch;
      _statusLabel = $v.statusLabel;
      _itemsCount = $v.itemsCount;
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
  void replace(covariant VendorPosOrderHistoryItem other) {
    _$v = other as _$VendorPosOrderHistoryItem;
  }

  @override
  void update(void Function(VendorPosOrderHistoryItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorPosOrderHistoryItem build() => _build();

  _$VendorPosOrderHistoryItem _build() {
    final _$result = _$v ??
        _$VendorPosOrderHistoryItem._(
          previewItemImage: previewItemImage,
          previewItemName: previewItemName,
          isManualDispatch: isManualDispatch,
          statusLabel: statusLabel,
          itemsCount: itemsCount,
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

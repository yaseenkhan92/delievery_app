// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_earning_order_snapshot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManEarningOrderSnapshot
    extends DeliveryManEarningOrderSnapshot {
  @override
  final String? id;
  @override
  final String? orderStatus;
  @override
  final num? orderAmount;
  @override
  final num? deliveryCharge;
  @override
  final num? originalDeliveryCharge;
  @override
  final num? dmTips;
  @override
  final String? paymentMethod;
  @override
  final String? paymentStatus;
  @override
  final DateTime? deliveredAt;
  @override
  final DateTime? createdAt;
  @override
  final String? deliveryAddress;
  @override
  final num? distance;
  @override
  final BuiltList<DeliveryManEarningOrderItem>? items;

  factory _$DeliveryManEarningOrderSnapshot(
          [void Function(DeliveryManEarningOrderSnapshotBuilder)? updates]) =>
      (DeliveryManEarningOrderSnapshotBuilder()..update(updates))._build();

  _$DeliveryManEarningOrderSnapshot._(
      {this.id,
      this.orderStatus,
      this.orderAmount,
      this.deliveryCharge,
      this.originalDeliveryCharge,
      this.dmTips,
      this.paymentMethod,
      this.paymentStatus,
      this.deliveredAt,
      this.createdAt,
      this.deliveryAddress,
      this.distance,
      this.items})
      : super._();
  @override
  DeliveryManEarningOrderSnapshot rebuild(
          void Function(DeliveryManEarningOrderSnapshotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManEarningOrderSnapshotBuilder toBuilder() =>
      DeliveryManEarningOrderSnapshotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManEarningOrderSnapshot &&
        id == other.id &&
        orderStatus == other.orderStatus &&
        orderAmount == other.orderAmount &&
        deliveryCharge == other.deliveryCharge &&
        originalDeliveryCharge == other.originalDeliveryCharge &&
        dmTips == other.dmTips &&
        paymentMethod == other.paymentMethod &&
        paymentStatus == other.paymentStatus &&
        deliveredAt == other.deliveredAt &&
        createdAt == other.createdAt &&
        deliveryAddress == other.deliveryAddress &&
        distance == other.distance &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, orderAmount.hashCode);
    _$hash = $jc(_$hash, deliveryCharge.hashCode);
    _$hash = $jc(_$hash, originalDeliveryCharge.hashCode);
    _$hash = $jc(_$hash, dmTips.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, deliveredAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, deliveryAddress.hashCode);
    _$hash = $jc(_$hash, distance.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManEarningOrderSnapshot')
          ..add('id', id)
          ..add('orderStatus', orderStatus)
          ..add('orderAmount', orderAmount)
          ..add('deliveryCharge', deliveryCharge)
          ..add('originalDeliveryCharge', originalDeliveryCharge)
          ..add('dmTips', dmTips)
          ..add('paymentMethod', paymentMethod)
          ..add('paymentStatus', paymentStatus)
          ..add('deliveredAt', deliveredAt)
          ..add('createdAt', createdAt)
          ..add('deliveryAddress', deliveryAddress)
          ..add('distance', distance)
          ..add('items', items))
        .toString();
  }
}

class DeliveryManEarningOrderSnapshotBuilder
    implements
        Builder<DeliveryManEarningOrderSnapshot,
            DeliveryManEarningOrderSnapshotBuilder> {
  _$DeliveryManEarningOrderSnapshot? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  num? _orderAmount;
  num? get orderAmount => _$this._orderAmount;
  set orderAmount(num? orderAmount) => _$this._orderAmount = orderAmount;

  num? _deliveryCharge;
  num? get deliveryCharge => _$this._deliveryCharge;
  set deliveryCharge(num? deliveryCharge) =>
      _$this._deliveryCharge = deliveryCharge;

  num? _originalDeliveryCharge;
  num? get originalDeliveryCharge => _$this._originalDeliveryCharge;
  set originalDeliveryCharge(num? originalDeliveryCharge) =>
      _$this._originalDeliveryCharge = originalDeliveryCharge;

  num? _dmTips;
  num? get dmTips => _$this._dmTips;
  set dmTips(num? dmTips) => _$this._dmTips = dmTips;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  DateTime? _deliveredAt;
  DateTime? get deliveredAt => _$this._deliveredAt;
  set deliveredAt(DateTime? deliveredAt) => _$this._deliveredAt = deliveredAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _deliveryAddress;
  String? get deliveryAddress => _$this._deliveryAddress;
  set deliveryAddress(String? deliveryAddress) =>
      _$this._deliveryAddress = deliveryAddress;

  num? _distance;
  num? get distance => _$this._distance;
  set distance(num? distance) => _$this._distance = distance;

  ListBuilder<DeliveryManEarningOrderItem>? _items;
  ListBuilder<DeliveryManEarningOrderItem> get items =>
      _$this._items ??= ListBuilder<DeliveryManEarningOrderItem>();
  set items(ListBuilder<DeliveryManEarningOrderItem>? items) =>
      _$this._items = items;

  DeliveryManEarningOrderSnapshotBuilder() {
    DeliveryManEarningOrderSnapshot._defaults(this);
  }

  DeliveryManEarningOrderSnapshotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderStatus = $v.orderStatus;
      _orderAmount = $v.orderAmount;
      _deliveryCharge = $v.deliveryCharge;
      _originalDeliveryCharge = $v.originalDeliveryCharge;
      _dmTips = $v.dmTips;
      _paymentMethod = $v.paymentMethod;
      _paymentStatus = $v.paymentStatus;
      _deliveredAt = $v.deliveredAt;
      _createdAt = $v.createdAt;
      _deliveryAddress = $v.deliveryAddress;
      _distance = $v.distance;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManEarningOrderSnapshot other) {
    _$v = other as _$DeliveryManEarningOrderSnapshot;
  }

  @override
  void update(void Function(DeliveryManEarningOrderSnapshotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManEarningOrderSnapshot build() => _build();

  _$DeliveryManEarningOrderSnapshot _build() {
    _$DeliveryManEarningOrderSnapshot _$result;
    try {
      _$result = _$v ??
          _$DeliveryManEarningOrderSnapshot._(
            id: id,
            orderStatus: orderStatus,
            orderAmount: orderAmount,
            deliveryCharge: deliveryCharge,
            originalDeliveryCharge: originalDeliveryCharge,
            dmTips: dmTips,
            paymentMethod: paymentMethod,
            paymentStatus: paymentStatus,
            deliveredAt: deliveredAt,
            createdAt: createdAt,
            deliveryAddress: deliveryAddress,
            distance: distance,
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryManEarningOrderSnapshot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

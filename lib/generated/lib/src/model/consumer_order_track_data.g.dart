// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_order_track_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerOrderTrackData extends ConsumerOrderTrackData {
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
  final String? paymentStatus;
  @override
  final String? orderStatus;
  @override
  final String? statusLabel;
  @override
  final String? paymentMethod;
  @override
  final String? orderType;
  @override
  final DateTime? scheduleAt;
  @override
  final bool? scheduled;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? pending;
  @override
  final DateTime? accepted;
  @override
  final DateTime? confirmed;
  @override
  final DateTime? processing;
  @override
  final DateTime? handover;
  @override
  final DateTime? pickedUp;
  @override
  final DateTime? delivered;
  @override
  final DateTime? canceled;
  @override
  final BuiltMap<String, JsonObject?>? deliveryAddress;
  @override
  final ConsumerOrderTrackRestaurant? restaurant;
  @override
  final ConsumerOrderTrackDeliveryMan? deliveryMan;
  @override
  final int? detailsCount;
  @override
  final num? dmTips;
  @override
  final String? deliveryManId;
  @override
  final String? cancellationReason;
  @override
  final String? canceledBy;

  factory _$ConsumerOrderTrackData(
          [void Function(ConsumerOrderTrackDataBuilder)? updates]) =>
      (ConsumerOrderTrackDataBuilder()..update(updates))._build();

  _$ConsumerOrderTrackData._(
      {this.id,
      this.userId,
      this.restaurantId,
      this.orderAmount,
      this.deliveryCharge,
      this.totalTaxAmount,
      this.paymentStatus,
      this.orderStatus,
      this.statusLabel,
      this.paymentMethod,
      this.orderType,
      this.scheduleAt,
      this.scheduled,
      this.createdAt,
      this.updatedAt,
      this.pending,
      this.accepted,
      this.confirmed,
      this.processing,
      this.handover,
      this.pickedUp,
      this.delivered,
      this.canceled,
      this.deliveryAddress,
      this.restaurant,
      this.deliveryMan,
      this.detailsCount,
      this.dmTips,
      this.deliveryManId,
      this.cancellationReason,
      this.canceledBy})
      : super._();
  @override
  ConsumerOrderTrackData rebuild(
          void Function(ConsumerOrderTrackDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerOrderTrackDataBuilder toBuilder() =>
      ConsumerOrderTrackDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerOrderTrackData &&
        id == other.id &&
        userId == other.userId &&
        restaurantId == other.restaurantId &&
        orderAmount == other.orderAmount &&
        deliveryCharge == other.deliveryCharge &&
        totalTaxAmount == other.totalTaxAmount &&
        paymentStatus == other.paymentStatus &&
        orderStatus == other.orderStatus &&
        statusLabel == other.statusLabel &&
        paymentMethod == other.paymentMethod &&
        orderType == other.orderType &&
        scheduleAt == other.scheduleAt &&
        scheduled == other.scheduled &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        pending == other.pending &&
        accepted == other.accepted &&
        confirmed == other.confirmed &&
        processing == other.processing &&
        handover == other.handover &&
        pickedUp == other.pickedUp &&
        delivered == other.delivered &&
        canceled == other.canceled &&
        deliveryAddress == other.deliveryAddress &&
        restaurant == other.restaurant &&
        deliveryMan == other.deliveryMan &&
        detailsCount == other.detailsCount &&
        dmTips == other.dmTips &&
        deliveryManId == other.deliveryManId &&
        cancellationReason == other.cancellationReason &&
        canceledBy == other.canceledBy;
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
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, statusLabel.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, orderType.hashCode);
    _$hash = $jc(_$hash, scheduleAt.hashCode);
    _$hash = $jc(_$hash, scheduled.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, pending.hashCode);
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jc(_$hash, confirmed.hashCode);
    _$hash = $jc(_$hash, processing.hashCode);
    _$hash = $jc(_$hash, handover.hashCode);
    _$hash = $jc(_$hash, pickedUp.hashCode);
    _$hash = $jc(_$hash, delivered.hashCode);
    _$hash = $jc(_$hash, canceled.hashCode);
    _$hash = $jc(_$hash, deliveryAddress.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jc(_$hash, deliveryMan.hashCode);
    _$hash = $jc(_$hash, detailsCount.hashCode);
    _$hash = $jc(_$hash, dmTips.hashCode);
    _$hash = $jc(_$hash, deliveryManId.hashCode);
    _$hash = $jc(_$hash, cancellationReason.hashCode);
    _$hash = $jc(_$hash, canceledBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerOrderTrackData')
          ..add('id', id)
          ..add('userId', userId)
          ..add('restaurantId', restaurantId)
          ..add('orderAmount', orderAmount)
          ..add('deliveryCharge', deliveryCharge)
          ..add('totalTaxAmount', totalTaxAmount)
          ..add('paymentStatus', paymentStatus)
          ..add('orderStatus', orderStatus)
          ..add('statusLabel', statusLabel)
          ..add('paymentMethod', paymentMethod)
          ..add('orderType', orderType)
          ..add('scheduleAt', scheduleAt)
          ..add('scheduled', scheduled)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('pending', pending)
          ..add('accepted', accepted)
          ..add('confirmed', confirmed)
          ..add('processing', processing)
          ..add('handover', handover)
          ..add('pickedUp', pickedUp)
          ..add('delivered', delivered)
          ..add('canceled', canceled)
          ..add('deliveryAddress', deliveryAddress)
          ..add('restaurant', restaurant)
          ..add('deliveryMan', deliveryMan)
          ..add('detailsCount', detailsCount)
          ..add('dmTips', dmTips)
          ..add('deliveryManId', deliveryManId)
          ..add('cancellationReason', cancellationReason)
          ..add('canceledBy', canceledBy))
        .toString();
  }
}

class ConsumerOrderTrackDataBuilder
    implements Builder<ConsumerOrderTrackData, ConsumerOrderTrackDataBuilder> {
  _$ConsumerOrderTrackData? _$v;

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

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  String? _statusLabel;
  String? get statusLabel => _$this._statusLabel;
  set statusLabel(String? statusLabel) => _$this._statusLabel = statusLabel;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _orderType;
  String? get orderType => _$this._orderType;
  set orderType(String? orderType) => _$this._orderType = orderType;

  DateTime? _scheduleAt;
  DateTime? get scheduleAt => _$this._scheduleAt;
  set scheduleAt(DateTime? scheduleAt) => _$this._scheduleAt = scheduleAt;

  bool? _scheduled;
  bool? get scheduled => _$this._scheduled;
  set scheduled(bool? scheduled) => _$this._scheduled = scheduled;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _pending;
  DateTime? get pending => _$this._pending;
  set pending(DateTime? pending) => _$this._pending = pending;

  DateTime? _accepted;
  DateTime? get accepted => _$this._accepted;
  set accepted(DateTime? accepted) => _$this._accepted = accepted;

  DateTime? _confirmed;
  DateTime? get confirmed => _$this._confirmed;
  set confirmed(DateTime? confirmed) => _$this._confirmed = confirmed;

  DateTime? _processing;
  DateTime? get processing => _$this._processing;
  set processing(DateTime? processing) => _$this._processing = processing;

  DateTime? _handover;
  DateTime? get handover => _$this._handover;
  set handover(DateTime? handover) => _$this._handover = handover;

  DateTime? _pickedUp;
  DateTime? get pickedUp => _$this._pickedUp;
  set pickedUp(DateTime? pickedUp) => _$this._pickedUp = pickedUp;

  DateTime? _delivered;
  DateTime? get delivered => _$this._delivered;
  set delivered(DateTime? delivered) => _$this._delivered = delivered;

  DateTime? _canceled;
  DateTime? get canceled => _$this._canceled;
  set canceled(DateTime? canceled) => _$this._canceled = canceled;

  MapBuilder<String, JsonObject?>? _deliveryAddress;
  MapBuilder<String, JsonObject?> get deliveryAddress =>
      _$this._deliveryAddress ??= MapBuilder<String, JsonObject?>();
  set deliveryAddress(MapBuilder<String, JsonObject?>? deliveryAddress) =>
      _$this._deliveryAddress = deliveryAddress;

  ConsumerOrderTrackRestaurantBuilder? _restaurant;
  ConsumerOrderTrackRestaurantBuilder get restaurant =>
      _$this._restaurant ??= ConsumerOrderTrackRestaurantBuilder();
  set restaurant(ConsumerOrderTrackRestaurantBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  ConsumerOrderTrackDeliveryManBuilder? _deliveryMan;
  ConsumerOrderTrackDeliveryManBuilder get deliveryMan =>
      _$this._deliveryMan ??= ConsumerOrderTrackDeliveryManBuilder();
  set deliveryMan(ConsumerOrderTrackDeliveryManBuilder? deliveryMan) =>
      _$this._deliveryMan = deliveryMan;

  int? _detailsCount;
  int? get detailsCount => _$this._detailsCount;
  set detailsCount(int? detailsCount) => _$this._detailsCount = detailsCount;

  num? _dmTips;
  num? get dmTips => _$this._dmTips;
  set dmTips(num? dmTips) => _$this._dmTips = dmTips;

  String? _deliveryManId;
  String? get deliveryManId => _$this._deliveryManId;
  set deliveryManId(String? deliveryManId) =>
      _$this._deliveryManId = deliveryManId;

  String? _cancellationReason;
  String? get cancellationReason => _$this._cancellationReason;
  set cancellationReason(String? cancellationReason) =>
      _$this._cancellationReason = cancellationReason;

  String? _canceledBy;
  String? get canceledBy => _$this._canceledBy;
  set canceledBy(String? canceledBy) => _$this._canceledBy = canceledBy;

  ConsumerOrderTrackDataBuilder() {
    ConsumerOrderTrackData._defaults(this);
  }

  ConsumerOrderTrackDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _restaurantId = $v.restaurantId;
      _orderAmount = $v.orderAmount;
      _deliveryCharge = $v.deliveryCharge;
      _totalTaxAmount = $v.totalTaxAmount;
      _paymentStatus = $v.paymentStatus;
      _orderStatus = $v.orderStatus;
      _statusLabel = $v.statusLabel;
      _paymentMethod = $v.paymentMethod;
      _orderType = $v.orderType;
      _scheduleAt = $v.scheduleAt;
      _scheduled = $v.scheduled;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _pending = $v.pending;
      _accepted = $v.accepted;
      _confirmed = $v.confirmed;
      _processing = $v.processing;
      _handover = $v.handover;
      _pickedUp = $v.pickedUp;
      _delivered = $v.delivered;
      _canceled = $v.canceled;
      _deliveryAddress = $v.deliveryAddress?.toBuilder();
      _restaurant = $v.restaurant?.toBuilder();
      _deliveryMan = $v.deliveryMan?.toBuilder();
      _detailsCount = $v.detailsCount;
      _dmTips = $v.dmTips;
      _deliveryManId = $v.deliveryManId;
      _cancellationReason = $v.cancellationReason;
      _canceledBy = $v.canceledBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerOrderTrackData other) {
    _$v = other as _$ConsumerOrderTrackData;
  }

  @override
  void update(void Function(ConsumerOrderTrackDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerOrderTrackData build() => _build();

  _$ConsumerOrderTrackData _build() {
    _$ConsumerOrderTrackData _$result;
    try {
      _$result = _$v ??
          _$ConsumerOrderTrackData._(
            id: id,
            userId: userId,
            restaurantId: restaurantId,
            orderAmount: orderAmount,
            deliveryCharge: deliveryCharge,
            totalTaxAmount: totalTaxAmount,
            paymentStatus: paymentStatus,
            orderStatus: orderStatus,
            statusLabel: statusLabel,
            paymentMethod: paymentMethod,
            orderType: orderType,
            scheduleAt: scheduleAt,
            scheduled: scheduled,
            createdAt: createdAt,
            updatedAt: updatedAt,
            pending: pending,
            accepted: accepted,
            confirmed: confirmed,
            processing: processing,
            handover: handover,
            pickedUp: pickedUp,
            delivered: delivered,
            canceled: canceled,
            deliveryAddress: _deliveryAddress?.build(),
            restaurant: _restaurant?.build(),
            deliveryMan: _deliveryMan?.build(),
            detailsCount: detailsCount,
            dmTips: dmTips,
            deliveryManId: deliveryManId,
            cancellationReason: cancellationReason,
            canceledBy: canceledBy,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryAddress';
        _deliveryAddress?.build();
        _$failedField = 'restaurant';
        _restaurant?.build();
        _$failedField = 'deliveryMan';
        _deliveryMan?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerOrderTrackData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

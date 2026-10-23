// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_earning_history_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeliveryManEarningHistoryItemSource_Enum
    _$deliveryManEarningHistoryItemSourceEnum_orderTransaction =
    const DeliveryManEarningHistoryItemSource_Enum._('orderTransaction');
const DeliveryManEarningHistoryItemSource_Enum
    _$deliveryManEarningHistoryItemSourceEnum_deliveredOrder =
    const DeliveryManEarningHistoryItemSource_Enum._('deliveredOrder');

DeliveryManEarningHistoryItemSource_Enum
    _$deliveryManEarningHistoryItemSourceEnumValueOf(String name) {
  switch (name) {
    case 'orderTransaction':
      return _$deliveryManEarningHistoryItemSourceEnum_orderTransaction;
    case 'deliveredOrder':
      return _$deliveryManEarningHistoryItemSourceEnum_deliveredOrder;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeliveryManEarningHistoryItemSource_Enum>
    _$deliveryManEarningHistoryItemSourceEnumValues = BuiltSet<
        DeliveryManEarningHistoryItemSource_Enum>(const <DeliveryManEarningHistoryItemSource_Enum>[
  _$deliveryManEarningHistoryItemSourceEnum_orderTransaction,
  _$deliveryManEarningHistoryItemSourceEnum_deliveredOrder,
]);

Serializer<DeliveryManEarningHistoryItemSource_Enum>
    _$deliveryManEarningHistoryItemSourceEnumSerializer =
    _$DeliveryManEarningHistoryItemSource_EnumSerializer();

class _$DeliveryManEarningHistoryItemSource_EnumSerializer
    implements PrimitiveSerializer<DeliveryManEarningHistoryItemSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'orderTransaction': 'order_transaction',
    'deliveredOrder': 'delivered_order',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'order_transaction': 'orderTransaction',
    'delivered_order': 'deliveredOrder',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DeliveryManEarningHistoryItemSource_Enum
  ];
  @override
  final String wireName = 'DeliveryManEarningHistoryItemSource_Enum';

  @override
  Object serialize(Serializers serializers,
          DeliveryManEarningHistoryItemSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeliveryManEarningHistoryItemSource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeliveryManEarningHistoryItemSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DeliveryManEarningHistoryItem extends DeliveryManEarningHistoryItem {
  @override
  final String? id;
  @override
  final DeliveryManEarningHistoryItemSource_Enum? source_;
  @override
  final String? orderId;
  @override
  final String? transactionId;
  @override
  final DateTime? earnedAt;
  @override
  final num? deliveryFee;
  @override
  final num? dmTips;
  @override
  final num? totalEarning;
  @override
  final num? orderAmount;
  @override
  final String? paymentMethod;
  @override
  final String? paymentStatus;
  @override
  final String? orderStatus;
  @override
  final String? restaurantId;
  @override
  final String? restaurantName;
  @override
  final String? restaurantLogo;
  @override
  final String? itemName;
  @override
  final int? itemCount;
  @override
  final String? image;
  @override
  final DeliveryManEarningOrderSnapshot? order;

  factory _$DeliveryManEarningHistoryItem(
          [void Function(DeliveryManEarningHistoryItemBuilder)? updates]) =>
      (DeliveryManEarningHistoryItemBuilder()..update(updates))._build();

  _$DeliveryManEarningHistoryItem._(
      {this.id,
      this.source_,
      this.orderId,
      this.transactionId,
      this.earnedAt,
      this.deliveryFee,
      this.dmTips,
      this.totalEarning,
      this.orderAmount,
      this.paymentMethod,
      this.paymentStatus,
      this.orderStatus,
      this.restaurantId,
      this.restaurantName,
      this.restaurantLogo,
      this.itemName,
      this.itemCount,
      this.image,
      this.order})
      : super._();
  @override
  DeliveryManEarningHistoryItem rebuild(
          void Function(DeliveryManEarningHistoryItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManEarningHistoryItemBuilder toBuilder() =>
      DeliveryManEarningHistoryItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManEarningHistoryItem &&
        id == other.id &&
        source_ == other.source_ &&
        orderId == other.orderId &&
        transactionId == other.transactionId &&
        earnedAt == other.earnedAt &&
        deliveryFee == other.deliveryFee &&
        dmTips == other.dmTips &&
        totalEarning == other.totalEarning &&
        orderAmount == other.orderAmount &&
        paymentMethod == other.paymentMethod &&
        paymentStatus == other.paymentStatus &&
        orderStatus == other.orderStatus &&
        restaurantId == other.restaurantId &&
        restaurantName == other.restaurantName &&
        restaurantLogo == other.restaurantLogo &&
        itemName == other.itemName &&
        itemCount == other.itemCount &&
        image == other.image &&
        order == other.order;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, earnedAt.hashCode);
    _$hash = $jc(_$hash, deliveryFee.hashCode);
    _$hash = $jc(_$hash, dmTips.hashCode);
    _$hash = $jc(_$hash, totalEarning.hashCode);
    _$hash = $jc(_$hash, orderAmount.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, restaurantName.hashCode);
    _$hash = $jc(_$hash, restaurantLogo.hashCode);
    _$hash = $jc(_$hash, itemName.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManEarningHistoryItem')
          ..add('id', id)
          ..add('source_', source_)
          ..add('orderId', orderId)
          ..add('transactionId', transactionId)
          ..add('earnedAt', earnedAt)
          ..add('deliveryFee', deliveryFee)
          ..add('dmTips', dmTips)
          ..add('totalEarning', totalEarning)
          ..add('orderAmount', orderAmount)
          ..add('paymentMethod', paymentMethod)
          ..add('paymentStatus', paymentStatus)
          ..add('orderStatus', orderStatus)
          ..add('restaurantId', restaurantId)
          ..add('restaurantName', restaurantName)
          ..add('restaurantLogo', restaurantLogo)
          ..add('itemName', itemName)
          ..add('itemCount', itemCount)
          ..add('image', image)
          ..add('order', order))
        .toString();
  }
}

class DeliveryManEarningHistoryItemBuilder
    implements
        Builder<DeliveryManEarningHistoryItem,
            DeliveryManEarningHistoryItemBuilder> {
  _$DeliveryManEarningHistoryItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DeliveryManEarningHistoryItemSource_Enum? _source_;
  DeliveryManEarningHistoryItemSource_Enum? get source_ => _$this._source_;
  set source_(DeliveryManEarningHistoryItemSource_Enum? source_) =>
      _$this._source_ = source_;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  DateTime? _earnedAt;
  DateTime? get earnedAt => _$this._earnedAt;
  set earnedAt(DateTime? earnedAt) => _$this._earnedAt = earnedAt;

  num? _deliveryFee;
  num? get deliveryFee => _$this._deliveryFee;
  set deliveryFee(num? deliveryFee) => _$this._deliveryFee = deliveryFee;

  num? _dmTips;
  num? get dmTips => _$this._dmTips;
  set dmTips(num? dmTips) => _$this._dmTips = dmTips;

  num? _totalEarning;
  num? get totalEarning => _$this._totalEarning;
  set totalEarning(num? totalEarning) => _$this._totalEarning = totalEarning;

  num? _orderAmount;
  num? get orderAmount => _$this._orderAmount;
  set orderAmount(num? orderAmount) => _$this._orderAmount = orderAmount;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  String? _restaurantId;
  String? get restaurantId => _$this._restaurantId;
  set restaurantId(String? restaurantId) => _$this._restaurantId = restaurantId;

  String? _restaurantName;
  String? get restaurantName => _$this._restaurantName;
  set restaurantName(String? restaurantName) =>
      _$this._restaurantName = restaurantName;

  String? _restaurantLogo;
  String? get restaurantLogo => _$this._restaurantLogo;
  set restaurantLogo(String? restaurantLogo) =>
      _$this._restaurantLogo = restaurantLogo;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  int? _itemCount;
  int? get itemCount => _$this._itemCount;
  set itemCount(int? itemCount) => _$this._itemCount = itemCount;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DeliveryManEarningOrderSnapshotBuilder? _order;
  DeliveryManEarningOrderSnapshotBuilder get order =>
      _$this._order ??= DeliveryManEarningOrderSnapshotBuilder();
  set order(DeliveryManEarningOrderSnapshotBuilder? order) =>
      _$this._order = order;

  DeliveryManEarningHistoryItemBuilder() {
    DeliveryManEarningHistoryItem._defaults(this);
  }

  DeliveryManEarningHistoryItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _source_ = $v.source_;
      _orderId = $v.orderId;
      _transactionId = $v.transactionId;
      _earnedAt = $v.earnedAt;
      _deliveryFee = $v.deliveryFee;
      _dmTips = $v.dmTips;
      _totalEarning = $v.totalEarning;
      _orderAmount = $v.orderAmount;
      _paymentMethod = $v.paymentMethod;
      _paymentStatus = $v.paymentStatus;
      _orderStatus = $v.orderStatus;
      _restaurantId = $v.restaurantId;
      _restaurantName = $v.restaurantName;
      _restaurantLogo = $v.restaurantLogo;
      _itemName = $v.itemName;
      _itemCount = $v.itemCount;
      _image = $v.image;
      _order = $v.order?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManEarningHistoryItem other) {
    _$v = other as _$DeliveryManEarningHistoryItem;
  }

  @override
  void update(void Function(DeliveryManEarningHistoryItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManEarningHistoryItem build() => _build();

  _$DeliveryManEarningHistoryItem _build() {
    _$DeliveryManEarningHistoryItem _$result;
    try {
      _$result = _$v ??
          _$DeliveryManEarningHistoryItem._(
            id: id,
            source_: source_,
            orderId: orderId,
            transactionId: transactionId,
            earnedAt: earnedAt,
            deliveryFee: deliveryFee,
            dmTips: dmTips,
            totalEarning: totalEarning,
            orderAmount: orderAmount,
            paymentMethod: paymentMethod,
            paymentStatus: paymentStatus,
            orderStatus: orderStatus,
            restaurantId: restaurantId,
            restaurantName: restaurantName,
            restaurantLogo: restaurantLogo,
            itemName: itemName,
            itemCount: itemCount,
            image: image,
            order: _order?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'order';
        _order?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryManEarningHistoryItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

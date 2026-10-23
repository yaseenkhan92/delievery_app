// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_request_driver_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VendorRequestDriverResponseDataPaymentStatusEnum
    _$vendorRequestDriverResponseDataPaymentStatusEnum_paid =
    const VendorRequestDriverResponseDataPaymentStatusEnum._('paid');
const VendorRequestDriverResponseDataPaymentStatusEnum
    _$vendorRequestDriverResponseDataPaymentStatusEnum_unpaid =
    const VendorRequestDriverResponseDataPaymentStatusEnum._('unpaid');

VendorRequestDriverResponseDataPaymentStatusEnum
    _$vendorRequestDriverResponseDataPaymentStatusEnumValueOf(String name) {
  switch (name) {
    case 'paid':
      return _$vendorRequestDriverResponseDataPaymentStatusEnum_paid;
    case 'unpaid':
      return _$vendorRequestDriverResponseDataPaymentStatusEnum_unpaid;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VendorRequestDriverResponseDataPaymentStatusEnum>
    _$vendorRequestDriverResponseDataPaymentStatusEnumValues = BuiltSet<
        VendorRequestDriverResponseDataPaymentStatusEnum>(const <VendorRequestDriverResponseDataPaymentStatusEnum>[
  _$vendorRequestDriverResponseDataPaymentStatusEnum_paid,
  _$vendorRequestDriverResponseDataPaymentStatusEnum_unpaid,
]);

Serializer<VendorRequestDriverResponseDataPaymentStatusEnum>
    _$vendorRequestDriverResponseDataPaymentStatusEnumSerializer =
    _$VendorRequestDriverResponseDataPaymentStatusEnumSerializer();

class _$VendorRequestDriverResponseDataPaymentStatusEnumSerializer
    implements
        PrimitiveSerializer<VendorRequestDriverResponseDataPaymentStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'paid': 'paid',
    'unpaid': 'unpaid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'paid': 'paid',
    'unpaid': 'unpaid',
  };

  @override
  final Iterable<Type> types = const <Type>[
    VendorRequestDriverResponseDataPaymentStatusEnum
  ];
  @override
  final String wireName = 'VendorRequestDriverResponseDataPaymentStatusEnum';

  @override
  Object serialize(Serializers serializers,
          VendorRequestDriverResponseDataPaymentStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VendorRequestDriverResponseDataPaymentStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VendorRequestDriverResponseDataPaymentStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VendorRequestDriverResponseData
    extends VendorRequestDriverResponseData {
  @override
  final String? orderId;
  @override
  final num? commissionRate;
  @override
  final num? commission;
  @override
  final num? deliveryFee;
  @override
  final num? gizraCharge;
  @override
  final num? restaurantNet;
  @override
  final VendorRequestDriverResponseDataPaymentStatusEnum? paymentStatus;
  @override
  final String? message;

  factory _$VendorRequestDriverResponseData(
          [void Function(VendorRequestDriverResponseDataBuilder)? updates]) =>
      (VendorRequestDriverResponseDataBuilder()..update(updates))._build();

  _$VendorRequestDriverResponseData._(
      {this.orderId,
      this.commissionRate,
      this.commission,
      this.deliveryFee,
      this.gizraCharge,
      this.restaurantNet,
      this.paymentStatus,
      this.message})
      : super._();
  @override
  VendorRequestDriverResponseData rebuild(
          void Function(VendorRequestDriverResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRequestDriverResponseDataBuilder toBuilder() =>
      VendorRequestDriverResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRequestDriverResponseData &&
        orderId == other.orderId &&
        commissionRate == other.commissionRate &&
        commission == other.commission &&
        deliveryFee == other.deliveryFee &&
        gizraCharge == other.gizraCharge &&
        restaurantNet == other.restaurantNet &&
        paymentStatus == other.paymentStatus &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, commissionRate.hashCode);
    _$hash = $jc(_$hash, commission.hashCode);
    _$hash = $jc(_$hash, deliveryFee.hashCode);
    _$hash = $jc(_$hash, gizraCharge.hashCode);
    _$hash = $jc(_$hash, restaurantNet.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRequestDriverResponseData')
          ..add('orderId', orderId)
          ..add('commissionRate', commissionRate)
          ..add('commission', commission)
          ..add('deliveryFee', deliveryFee)
          ..add('gizraCharge', gizraCharge)
          ..add('restaurantNet', restaurantNet)
          ..add('paymentStatus', paymentStatus)
          ..add('message', message))
        .toString();
  }
}

class VendorRequestDriverResponseDataBuilder
    implements
        Builder<VendorRequestDriverResponseData,
            VendorRequestDriverResponseDataBuilder> {
  _$VendorRequestDriverResponseData? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  num? _commissionRate;
  num? get commissionRate => _$this._commissionRate;
  set commissionRate(num? commissionRate) =>
      _$this._commissionRate = commissionRate;

  num? _commission;
  num? get commission => _$this._commission;
  set commission(num? commission) => _$this._commission = commission;

  num? _deliveryFee;
  num? get deliveryFee => _$this._deliveryFee;
  set deliveryFee(num? deliveryFee) => _$this._deliveryFee = deliveryFee;

  num? _gizraCharge;
  num? get gizraCharge => _$this._gizraCharge;
  set gizraCharge(num? gizraCharge) => _$this._gizraCharge = gizraCharge;

  num? _restaurantNet;
  num? get restaurantNet => _$this._restaurantNet;
  set restaurantNet(num? restaurantNet) =>
      _$this._restaurantNet = restaurantNet;

  VendorRequestDriverResponseDataPaymentStatusEnum? _paymentStatus;
  VendorRequestDriverResponseDataPaymentStatusEnum? get paymentStatus =>
      _$this._paymentStatus;
  set paymentStatus(
          VendorRequestDriverResponseDataPaymentStatusEnum? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  VendorRequestDriverResponseDataBuilder() {
    VendorRequestDriverResponseData._defaults(this);
  }

  VendorRequestDriverResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _commissionRate = $v.commissionRate;
      _commission = $v.commission;
      _deliveryFee = $v.deliveryFee;
      _gizraCharge = $v.gizraCharge;
      _restaurantNet = $v.restaurantNet;
      _paymentStatus = $v.paymentStatus;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRequestDriverResponseData other) {
    _$v = other as _$VendorRequestDriverResponseData;
  }

  @override
  void update(void Function(VendorRequestDriverResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRequestDriverResponseData build() => _build();

  _$VendorRequestDriverResponseData _build() {
    final _$result = _$v ??
        _$VendorRequestDriverResponseData._(
          orderId: orderId,
          commissionRate: commissionRate,
          commission: commission,
          deliveryFee: deliveryFee,
          gizraCharge: gizraCharge,
          restaurantNet: restaurantNet,
          paymentStatus: paymentStatus,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_request_driver_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VendorRequestDriverBodyPaymentMethodEnum
    _$vendorRequestDriverBodyPaymentMethodEnum_prepaid =
    const VendorRequestDriverBodyPaymentMethodEnum._('prepaid');
const VendorRequestDriverBodyPaymentMethodEnum
    _$vendorRequestDriverBodyPaymentMethodEnum_cashOnDelivery =
    const VendorRequestDriverBodyPaymentMethodEnum._('cashOnDelivery');

VendorRequestDriverBodyPaymentMethodEnum
    _$vendorRequestDriverBodyPaymentMethodEnumValueOf(String name) {
  switch (name) {
    case 'prepaid':
      return _$vendorRequestDriverBodyPaymentMethodEnum_prepaid;
    case 'cashOnDelivery':
      return _$vendorRequestDriverBodyPaymentMethodEnum_cashOnDelivery;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VendorRequestDriverBodyPaymentMethodEnum>
    _$vendorRequestDriverBodyPaymentMethodEnumValues = BuiltSet<
        VendorRequestDriverBodyPaymentMethodEnum>(const <VendorRequestDriverBodyPaymentMethodEnum>[
  _$vendorRequestDriverBodyPaymentMethodEnum_prepaid,
  _$vendorRequestDriverBodyPaymentMethodEnum_cashOnDelivery,
]);

Serializer<VendorRequestDriverBodyPaymentMethodEnum>
    _$vendorRequestDriverBodyPaymentMethodEnumSerializer =
    _$VendorRequestDriverBodyPaymentMethodEnumSerializer();

class _$VendorRequestDriverBodyPaymentMethodEnumSerializer
    implements PrimitiveSerializer<VendorRequestDriverBodyPaymentMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'prepaid': 'prepaid',
    'cashOnDelivery': 'cash_on_delivery',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'prepaid': 'prepaid',
    'cash_on_delivery': 'cashOnDelivery',
  };

  @override
  final Iterable<Type> types = const <Type>[
    VendorRequestDriverBodyPaymentMethodEnum
  ];
  @override
  final String wireName = 'VendorRequestDriverBodyPaymentMethodEnum';

  @override
  Object serialize(Serializers serializers,
          VendorRequestDriverBodyPaymentMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VendorRequestDriverBodyPaymentMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VendorRequestDriverBodyPaymentMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VendorRequestDriverBody extends VendorRequestDriverBody {
  @override
  final String customerName;
  @override
  final String customerPhone;
  @override
  final String address;
  @override
  final num orderAmount;
  @override
  final num deliveryFee;
  @override
  final VendorRequestDriverBodyPaymentMethodEnum paymentMethod;
  @override
  final String idempotencyKey;
  @override
  final int? zoneId;
  @override
  final num? latitude;
  @override
  final num? longitude;
  @override
  final num? tax;

  factory _$VendorRequestDriverBody(
          [void Function(VendorRequestDriverBodyBuilder)? updates]) =>
      (VendorRequestDriverBodyBuilder()..update(updates))._build();

  _$VendorRequestDriverBody._(
      {required this.customerName,
      required this.customerPhone,
      required this.address,
      required this.orderAmount,
      required this.deliveryFee,
      required this.paymentMethod,
      required this.idempotencyKey,
      this.zoneId,
      this.latitude,
      this.longitude,
      this.tax})
      : super._();
  @override
  VendorRequestDriverBody rebuild(
          void Function(VendorRequestDriverBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRequestDriverBodyBuilder toBuilder() =>
      VendorRequestDriverBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRequestDriverBody &&
        customerName == other.customerName &&
        customerPhone == other.customerPhone &&
        address == other.address &&
        orderAmount == other.orderAmount &&
        deliveryFee == other.deliveryFee &&
        paymentMethod == other.paymentMethod &&
        idempotencyKey == other.idempotencyKey &&
        zoneId == other.zoneId &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        tax == other.tax;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerPhone.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, orderAmount.hashCode);
    _$hash = $jc(_$hash, deliveryFee.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, idempotencyKey.hashCode);
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, tax.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRequestDriverBody')
          ..add('customerName', customerName)
          ..add('customerPhone', customerPhone)
          ..add('address', address)
          ..add('orderAmount', orderAmount)
          ..add('deliveryFee', deliveryFee)
          ..add('paymentMethod', paymentMethod)
          ..add('idempotencyKey', idempotencyKey)
          ..add('zoneId', zoneId)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('tax', tax))
        .toString();
  }
}

class VendorRequestDriverBodyBuilder
    implements
        Builder<VendorRequestDriverBody, VendorRequestDriverBodyBuilder> {
  _$VendorRequestDriverBody? _$v;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _customerPhone;
  String? get customerPhone => _$this._customerPhone;
  set customerPhone(String? customerPhone) =>
      _$this._customerPhone = customerPhone;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  num? _orderAmount;
  num? get orderAmount => _$this._orderAmount;
  set orderAmount(num? orderAmount) => _$this._orderAmount = orderAmount;

  num? _deliveryFee;
  num? get deliveryFee => _$this._deliveryFee;
  set deliveryFee(num? deliveryFee) => _$this._deliveryFee = deliveryFee;

  VendorRequestDriverBodyPaymentMethodEnum? _paymentMethod;
  VendorRequestDriverBodyPaymentMethodEnum? get paymentMethod =>
      _$this._paymentMethod;
  set paymentMethod(VendorRequestDriverBodyPaymentMethodEnum? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _idempotencyKey;
  String? get idempotencyKey => _$this._idempotencyKey;
  set idempotencyKey(String? idempotencyKey) =>
      _$this._idempotencyKey = idempotencyKey;

  int? _zoneId;
  int? get zoneId => _$this._zoneId;
  set zoneId(int? zoneId) => _$this._zoneId = zoneId;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  num? _tax;
  num? get tax => _$this._tax;
  set tax(num? tax) => _$this._tax = tax;

  VendorRequestDriverBodyBuilder() {
    VendorRequestDriverBody._defaults(this);
  }

  VendorRequestDriverBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerName = $v.customerName;
      _customerPhone = $v.customerPhone;
      _address = $v.address;
      _orderAmount = $v.orderAmount;
      _deliveryFee = $v.deliveryFee;
      _paymentMethod = $v.paymentMethod;
      _idempotencyKey = $v.idempotencyKey;
      _zoneId = $v.zoneId;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _tax = $v.tax;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRequestDriverBody other) {
    _$v = other as _$VendorRequestDriverBody;
  }

  @override
  void update(void Function(VendorRequestDriverBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRequestDriverBody build() => _build();

  _$VendorRequestDriverBody _build() {
    final _$result = _$v ??
        _$VendorRequestDriverBody._(
          customerName: BuiltValueNullFieldError.checkNotNull(
              customerName, r'VendorRequestDriverBody', 'customerName'),
          customerPhone: BuiltValueNullFieldError.checkNotNull(
              customerPhone, r'VendorRequestDriverBody', 'customerPhone'),
          address: BuiltValueNullFieldError.checkNotNull(
              address, r'VendorRequestDriverBody', 'address'),
          orderAmount: BuiltValueNullFieldError.checkNotNull(
              orderAmount, r'VendorRequestDriverBody', 'orderAmount'),
          deliveryFee: BuiltValueNullFieldError.checkNotNull(
              deliveryFee, r'VendorRequestDriverBody', 'deliveryFee'),
          paymentMethod: BuiltValueNullFieldError.checkNotNull(
              paymentMethod, r'VendorRequestDriverBody', 'paymentMethod'),
          idempotencyKey: BuiltValueNullFieldError.checkNotNull(
              idempotencyKey, r'VendorRequestDriverBody', 'idempotencyKey'),
          zoneId: zoneId,
          latitude: latitude,
          longitude: longitude,
          tax: tax,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

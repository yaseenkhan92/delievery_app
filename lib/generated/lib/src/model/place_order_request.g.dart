// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlaceOrderRequestOrderTypeEnum _$placeOrderRequestOrderTypeEnum_delivery =
    const PlaceOrderRequestOrderTypeEnum._('delivery');
const PlaceOrderRequestOrderTypeEnum _$placeOrderRequestOrderTypeEnum_takeAway =
    const PlaceOrderRequestOrderTypeEnum._('takeAway');
const PlaceOrderRequestOrderTypeEnum _$placeOrderRequestOrderTypeEnum_dineIn =
    const PlaceOrderRequestOrderTypeEnum._('dineIn');

PlaceOrderRequestOrderTypeEnum _$placeOrderRequestOrderTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'delivery':
      return _$placeOrderRequestOrderTypeEnum_delivery;
    case 'takeAway':
      return _$placeOrderRequestOrderTypeEnum_takeAway;
    case 'dineIn':
      return _$placeOrderRequestOrderTypeEnum_dineIn;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PlaceOrderRequestOrderTypeEnum>
    _$placeOrderRequestOrderTypeEnumValues = BuiltSet<
        PlaceOrderRequestOrderTypeEnum>(const <PlaceOrderRequestOrderTypeEnum>[
  _$placeOrderRequestOrderTypeEnum_delivery,
  _$placeOrderRequestOrderTypeEnum_takeAway,
  _$placeOrderRequestOrderTypeEnum_dineIn,
]);

const PlaceOrderRequestPaymentMethodEnum
    _$placeOrderRequestPaymentMethodEnum_cashOnDelivery =
    const PlaceOrderRequestPaymentMethodEnum._('cashOnDelivery');
const PlaceOrderRequestPaymentMethodEnum
    _$placeOrderRequestPaymentMethodEnum_digitalPayment =
    const PlaceOrderRequestPaymentMethodEnum._('digitalPayment');
const PlaceOrderRequestPaymentMethodEnum
    _$placeOrderRequestPaymentMethodEnum_wallet =
    const PlaceOrderRequestPaymentMethodEnum._('wallet');
const PlaceOrderRequestPaymentMethodEnum
    _$placeOrderRequestPaymentMethodEnum_offlinePayment =
    const PlaceOrderRequestPaymentMethodEnum._('offlinePayment');

PlaceOrderRequestPaymentMethodEnum _$placeOrderRequestPaymentMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'cashOnDelivery':
      return _$placeOrderRequestPaymentMethodEnum_cashOnDelivery;
    case 'digitalPayment':
      return _$placeOrderRequestPaymentMethodEnum_digitalPayment;
    case 'wallet':
      return _$placeOrderRequestPaymentMethodEnum_wallet;
    case 'offlinePayment':
      return _$placeOrderRequestPaymentMethodEnum_offlinePayment;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PlaceOrderRequestPaymentMethodEnum>
    _$placeOrderRequestPaymentMethodEnumValues = BuiltSet<
        PlaceOrderRequestPaymentMethodEnum>(const <PlaceOrderRequestPaymentMethodEnum>[
  _$placeOrderRequestPaymentMethodEnum_cashOnDelivery,
  _$placeOrderRequestPaymentMethodEnum_digitalPayment,
  _$placeOrderRequestPaymentMethodEnum_wallet,
  _$placeOrderRequestPaymentMethodEnum_offlinePayment,
]);

Serializer<PlaceOrderRequestOrderTypeEnum>
    _$placeOrderRequestOrderTypeEnumSerializer =
    _$PlaceOrderRequestOrderTypeEnumSerializer();
Serializer<PlaceOrderRequestPaymentMethodEnum>
    _$placeOrderRequestPaymentMethodEnumSerializer =
    _$PlaceOrderRequestPaymentMethodEnumSerializer();

class _$PlaceOrderRequestOrderTypeEnumSerializer
    implements PrimitiveSerializer<PlaceOrderRequestOrderTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'delivery': 'delivery',
    'takeAway': 'take_away',
    'dineIn': 'dine_in',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'delivery': 'delivery',
    'take_away': 'takeAway',
    'dine_in': 'dineIn',
  };

  @override
  final Iterable<Type> types = const <Type>[PlaceOrderRequestOrderTypeEnum];
  @override
  final String wireName = 'PlaceOrderRequestOrderTypeEnum';

  @override
  Object serialize(
          Serializers serializers, PlaceOrderRequestOrderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlaceOrderRequestOrderTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlaceOrderRequestOrderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PlaceOrderRequestPaymentMethodEnumSerializer
    implements PrimitiveSerializer<PlaceOrderRequestPaymentMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cashOnDelivery': 'cash_on_delivery',
    'digitalPayment': 'digital_payment',
    'wallet': 'wallet',
    'offlinePayment': 'offline_payment',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'cash_on_delivery': 'cashOnDelivery',
    'digital_payment': 'digitalPayment',
    'wallet': 'wallet',
    'offline_payment': 'offlinePayment',
  };

  @override
  final Iterable<Type> types = const <Type>[PlaceOrderRequestPaymentMethodEnum];
  @override
  final String wireName = 'PlaceOrderRequestPaymentMethodEnum';

  @override
  Object serialize(
          Serializers serializers, PlaceOrderRequestPaymentMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlaceOrderRequestPaymentMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlaceOrderRequestPaymentMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PlaceOrderRequest extends PlaceOrderRequest {
  @override
  final num restaurantId;
  @override
  final PlaceOrderRequestOrderTypeEnum? orderType;
  @override
  final PlaceOrderRequestPaymentMethodEnum? paymentMethod;
  @override
  final num? orderAmount;
  @override
  final num? deliveryCharge;
  @override
  final num? totalTaxAmount;
  @override
  final num? distance;
  @override
  final num? deliveryAddressId;
  @override
  final String? address;
  @override
  final PlaceOrderRequestLatitude? latitude;
  @override
  final PlaceOrderRequestLatitude? longitude;
  @override
  final String? addressType;
  @override
  final String? floor;
  @override
  final String? road;
  @override
  final String? house;
  @override
  final String? contactPersonName;
  @override
  final String? contactPersonNumber;
  @override
  final String? contactPersonEmail;
  @override
  final String? orderNote;
  @override
  final String? deliveryInstruction;
  @override
  final String? unavailableItemNote;
  @override
  final String? couponCode;
  @override
  final DateTime? scheduleAt;
  @override
  final num? dmTips;
  @override
  final bool? cutlery;
  @override
  final num? extraPackagingAmount;
  @override
  final bool? partialPayment;
  @override
  final bool? isBuyNow;
  @override
  final num? cartId;
  @override
  final BuiltList<PlaceOrderLineItem>? cart;
  @override
  final BuiltList<PlaceOrderLineItem>? items;
  @override
  final num? guestId;
  @override
  final bool? isGuest;

  factory _$PlaceOrderRequest(
          [void Function(PlaceOrderRequestBuilder)? updates]) =>
      (PlaceOrderRequestBuilder()..update(updates))._build();

  _$PlaceOrderRequest._(
      {required this.restaurantId,
      this.orderType,
      this.paymentMethod,
      this.orderAmount,
      this.deliveryCharge,
      this.totalTaxAmount,
      this.distance,
      this.deliveryAddressId,
      this.address,
      this.latitude,
      this.longitude,
      this.addressType,
      this.floor,
      this.road,
      this.house,
      this.contactPersonName,
      this.contactPersonNumber,
      this.contactPersonEmail,
      this.orderNote,
      this.deliveryInstruction,
      this.unavailableItemNote,
      this.couponCode,
      this.scheduleAt,
      this.dmTips,
      this.cutlery,
      this.extraPackagingAmount,
      this.partialPayment,
      this.isBuyNow,
      this.cartId,
      this.cart,
      this.items,
      this.guestId,
      this.isGuest})
      : super._();
  @override
  PlaceOrderRequest rebuild(void Function(PlaceOrderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceOrderRequestBuilder toBuilder() =>
      PlaceOrderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceOrderRequest &&
        restaurantId == other.restaurantId &&
        orderType == other.orderType &&
        paymentMethod == other.paymentMethod &&
        orderAmount == other.orderAmount &&
        deliveryCharge == other.deliveryCharge &&
        totalTaxAmount == other.totalTaxAmount &&
        distance == other.distance &&
        deliveryAddressId == other.deliveryAddressId &&
        address == other.address &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        addressType == other.addressType &&
        floor == other.floor &&
        road == other.road &&
        house == other.house &&
        contactPersonName == other.contactPersonName &&
        contactPersonNumber == other.contactPersonNumber &&
        contactPersonEmail == other.contactPersonEmail &&
        orderNote == other.orderNote &&
        deliveryInstruction == other.deliveryInstruction &&
        unavailableItemNote == other.unavailableItemNote &&
        couponCode == other.couponCode &&
        scheduleAt == other.scheduleAt &&
        dmTips == other.dmTips &&
        cutlery == other.cutlery &&
        extraPackagingAmount == other.extraPackagingAmount &&
        partialPayment == other.partialPayment &&
        isBuyNow == other.isBuyNow &&
        cartId == other.cartId &&
        cart == other.cart &&
        items == other.items &&
        guestId == other.guestId &&
        isGuest == other.isGuest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, orderType.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, orderAmount.hashCode);
    _$hash = $jc(_$hash, deliveryCharge.hashCode);
    _$hash = $jc(_$hash, totalTaxAmount.hashCode);
    _$hash = $jc(_$hash, distance.hashCode);
    _$hash = $jc(_$hash, deliveryAddressId.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, addressType.hashCode);
    _$hash = $jc(_$hash, floor.hashCode);
    _$hash = $jc(_$hash, road.hashCode);
    _$hash = $jc(_$hash, house.hashCode);
    _$hash = $jc(_$hash, contactPersonName.hashCode);
    _$hash = $jc(_$hash, contactPersonNumber.hashCode);
    _$hash = $jc(_$hash, contactPersonEmail.hashCode);
    _$hash = $jc(_$hash, orderNote.hashCode);
    _$hash = $jc(_$hash, deliveryInstruction.hashCode);
    _$hash = $jc(_$hash, unavailableItemNote.hashCode);
    _$hash = $jc(_$hash, couponCode.hashCode);
    _$hash = $jc(_$hash, scheduleAt.hashCode);
    _$hash = $jc(_$hash, dmTips.hashCode);
    _$hash = $jc(_$hash, cutlery.hashCode);
    _$hash = $jc(_$hash, extraPackagingAmount.hashCode);
    _$hash = $jc(_$hash, partialPayment.hashCode);
    _$hash = $jc(_$hash, isBuyNow.hashCode);
    _$hash = $jc(_$hash, cartId.hashCode);
    _$hash = $jc(_$hash, cart.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, guestId.hashCode);
    _$hash = $jc(_$hash, isGuest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceOrderRequest')
          ..add('restaurantId', restaurantId)
          ..add('orderType', orderType)
          ..add('paymentMethod', paymentMethod)
          ..add('orderAmount', orderAmount)
          ..add('deliveryCharge', deliveryCharge)
          ..add('totalTaxAmount', totalTaxAmount)
          ..add('distance', distance)
          ..add('deliveryAddressId', deliveryAddressId)
          ..add('address', address)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('addressType', addressType)
          ..add('floor', floor)
          ..add('road', road)
          ..add('house', house)
          ..add('contactPersonName', contactPersonName)
          ..add('contactPersonNumber', contactPersonNumber)
          ..add('contactPersonEmail', contactPersonEmail)
          ..add('orderNote', orderNote)
          ..add('deliveryInstruction', deliveryInstruction)
          ..add('unavailableItemNote', unavailableItemNote)
          ..add('couponCode', couponCode)
          ..add('scheduleAt', scheduleAt)
          ..add('dmTips', dmTips)
          ..add('cutlery', cutlery)
          ..add('extraPackagingAmount', extraPackagingAmount)
          ..add('partialPayment', partialPayment)
          ..add('isBuyNow', isBuyNow)
          ..add('cartId', cartId)
          ..add('cart', cart)
          ..add('items', items)
          ..add('guestId', guestId)
          ..add('isGuest', isGuest))
        .toString();
  }
}

class PlaceOrderRequestBuilder
    implements Builder<PlaceOrderRequest, PlaceOrderRequestBuilder> {
  _$PlaceOrderRequest? _$v;

  num? _restaurantId;
  num? get restaurantId => _$this._restaurantId;
  set restaurantId(num? restaurantId) => _$this._restaurantId = restaurantId;

  PlaceOrderRequestOrderTypeEnum? _orderType;
  PlaceOrderRequestOrderTypeEnum? get orderType => _$this._orderType;
  set orderType(PlaceOrderRequestOrderTypeEnum? orderType) =>
      _$this._orderType = orderType;

  PlaceOrderRequestPaymentMethodEnum? _paymentMethod;
  PlaceOrderRequestPaymentMethodEnum? get paymentMethod =>
      _$this._paymentMethod;
  set paymentMethod(PlaceOrderRequestPaymentMethodEnum? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

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

  num? _distance;
  num? get distance => _$this._distance;
  set distance(num? distance) => _$this._distance = distance;

  num? _deliveryAddressId;
  num? get deliveryAddressId => _$this._deliveryAddressId;
  set deliveryAddressId(num? deliveryAddressId) =>
      _$this._deliveryAddressId = deliveryAddressId;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  PlaceOrderRequestLatitudeBuilder? _latitude;
  PlaceOrderRequestLatitudeBuilder get latitude =>
      _$this._latitude ??= PlaceOrderRequestLatitudeBuilder();
  set latitude(PlaceOrderRequestLatitudeBuilder? latitude) =>
      _$this._latitude = latitude;

  PlaceOrderRequestLatitudeBuilder? _longitude;
  PlaceOrderRequestLatitudeBuilder get longitude =>
      _$this._longitude ??= PlaceOrderRequestLatitudeBuilder();
  set longitude(PlaceOrderRequestLatitudeBuilder? longitude) =>
      _$this._longitude = longitude;

  String? _addressType;
  String? get addressType => _$this._addressType;
  set addressType(String? addressType) => _$this._addressType = addressType;

  String? _floor;
  String? get floor => _$this._floor;
  set floor(String? floor) => _$this._floor = floor;

  String? _road;
  String? get road => _$this._road;
  set road(String? road) => _$this._road = road;

  String? _house;
  String? get house => _$this._house;
  set house(String? house) => _$this._house = house;

  String? _contactPersonName;
  String? get contactPersonName => _$this._contactPersonName;
  set contactPersonName(String? contactPersonName) =>
      _$this._contactPersonName = contactPersonName;

  String? _contactPersonNumber;
  String? get contactPersonNumber => _$this._contactPersonNumber;
  set contactPersonNumber(String? contactPersonNumber) =>
      _$this._contactPersonNumber = contactPersonNumber;

  String? _contactPersonEmail;
  String? get contactPersonEmail => _$this._contactPersonEmail;
  set contactPersonEmail(String? contactPersonEmail) =>
      _$this._contactPersonEmail = contactPersonEmail;

  String? _orderNote;
  String? get orderNote => _$this._orderNote;
  set orderNote(String? orderNote) => _$this._orderNote = orderNote;

  String? _deliveryInstruction;
  String? get deliveryInstruction => _$this._deliveryInstruction;
  set deliveryInstruction(String? deliveryInstruction) =>
      _$this._deliveryInstruction = deliveryInstruction;

  String? _unavailableItemNote;
  String? get unavailableItemNote => _$this._unavailableItemNote;
  set unavailableItemNote(String? unavailableItemNote) =>
      _$this._unavailableItemNote = unavailableItemNote;

  String? _couponCode;
  String? get couponCode => _$this._couponCode;
  set couponCode(String? couponCode) => _$this._couponCode = couponCode;

  DateTime? _scheduleAt;
  DateTime? get scheduleAt => _$this._scheduleAt;
  set scheduleAt(DateTime? scheduleAt) => _$this._scheduleAt = scheduleAt;

  num? _dmTips;
  num? get dmTips => _$this._dmTips;
  set dmTips(num? dmTips) => _$this._dmTips = dmTips;

  bool? _cutlery;
  bool? get cutlery => _$this._cutlery;
  set cutlery(bool? cutlery) => _$this._cutlery = cutlery;

  num? _extraPackagingAmount;
  num? get extraPackagingAmount => _$this._extraPackagingAmount;
  set extraPackagingAmount(num? extraPackagingAmount) =>
      _$this._extraPackagingAmount = extraPackagingAmount;

  bool? _partialPayment;
  bool? get partialPayment => _$this._partialPayment;
  set partialPayment(bool? partialPayment) =>
      _$this._partialPayment = partialPayment;

  bool? _isBuyNow;
  bool? get isBuyNow => _$this._isBuyNow;
  set isBuyNow(bool? isBuyNow) => _$this._isBuyNow = isBuyNow;

  num? _cartId;
  num? get cartId => _$this._cartId;
  set cartId(num? cartId) => _$this._cartId = cartId;

  ListBuilder<PlaceOrderLineItem>? _cart;
  ListBuilder<PlaceOrderLineItem> get cart =>
      _$this._cart ??= ListBuilder<PlaceOrderLineItem>();
  set cart(ListBuilder<PlaceOrderLineItem>? cart) => _$this._cart = cart;

  ListBuilder<PlaceOrderLineItem>? _items;
  ListBuilder<PlaceOrderLineItem> get items =>
      _$this._items ??= ListBuilder<PlaceOrderLineItem>();
  set items(ListBuilder<PlaceOrderLineItem>? items) => _$this._items = items;

  num? _guestId;
  num? get guestId => _$this._guestId;
  set guestId(num? guestId) => _$this._guestId = guestId;

  bool? _isGuest;
  bool? get isGuest => _$this._isGuest;
  set isGuest(bool? isGuest) => _$this._isGuest = isGuest;

  PlaceOrderRequestBuilder() {
    PlaceOrderRequest._defaults(this);
  }

  PlaceOrderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantId = $v.restaurantId;
      _orderType = $v.orderType;
      _paymentMethod = $v.paymentMethod;
      _orderAmount = $v.orderAmount;
      _deliveryCharge = $v.deliveryCharge;
      _totalTaxAmount = $v.totalTaxAmount;
      _distance = $v.distance;
      _deliveryAddressId = $v.deliveryAddressId;
      _address = $v.address;
      _latitude = $v.latitude?.toBuilder();
      _longitude = $v.longitude?.toBuilder();
      _addressType = $v.addressType;
      _floor = $v.floor;
      _road = $v.road;
      _house = $v.house;
      _contactPersonName = $v.contactPersonName;
      _contactPersonNumber = $v.contactPersonNumber;
      _contactPersonEmail = $v.contactPersonEmail;
      _orderNote = $v.orderNote;
      _deliveryInstruction = $v.deliveryInstruction;
      _unavailableItemNote = $v.unavailableItemNote;
      _couponCode = $v.couponCode;
      _scheduleAt = $v.scheduleAt;
      _dmTips = $v.dmTips;
      _cutlery = $v.cutlery;
      _extraPackagingAmount = $v.extraPackagingAmount;
      _partialPayment = $v.partialPayment;
      _isBuyNow = $v.isBuyNow;
      _cartId = $v.cartId;
      _cart = $v.cart?.toBuilder();
      _items = $v.items?.toBuilder();
      _guestId = $v.guestId;
      _isGuest = $v.isGuest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceOrderRequest other) {
    _$v = other as _$PlaceOrderRequest;
  }

  @override
  void update(void Function(PlaceOrderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceOrderRequest build() => _build();

  _$PlaceOrderRequest _build() {
    _$PlaceOrderRequest _$result;
    try {
      _$result = _$v ??
          _$PlaceOrderRequest._(
            restaurantId: BuiltValueNullFieldError.checkNotNull(
                restaurantId, r'PlaceOrderRequest', 'restaurantId'),
            orderType: orderType,
            paymentMethod: paymentMethod,
            orderAmount: orderAmount,
            deliveryCharge: deliveryCharge,
            totalTaxAmount: totalTaxAmount,
            distance: distance,
            deliveryAddressId: deliveryAddressId,
            address: address,
            latitude: _latitude?.build(),
            longitude: _longitude?.build(),
            addressType: addressType,
            floor: floor,
            road: road,
            house: house,
            contactPersonName: contactPersonName,
            contactPersonNumber: contactPersonNumber,
            contactPersonEmail: contactPersonEmail,
            orderNote: orderNote,
            deliveryInstruction: deliveryInstruction,
            unavailableItemNote: unavailableItemNote,
            couponCode: couponCode,
            scheduleAt: scheduleAt,
            dmTips: dmTips,
            cutlery: cutlery,
            extraPackagingAmount: extraPackagingAmount,
            partialPayment: partialPayment,
            isBuyNow: isBuyNow,
            cartId: cartId,
            cart: _cart?.build(),
            items: _items?.build(),
            guestId: guestId,
            isGuest: isGuest,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'latitude';
        _latitude?.build();
        _$failedField = 'longitude';
        _longitude?.build();

        _$failedField = 'cart';
        _cart?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PlaceOrderRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

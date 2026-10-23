// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_place_order_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsumerPlaceOrderBodyPaymentMethodEnum
    _$consumerPlaceOrderBodyPaymentMethodEnum_cashOnDelivery =
    const ConsumerPlaceOrderBodyPaymentMethodEnum._('cashOnDelivery');
const ConsumerPlaceOrderBodyPaymentMethodEnum
    _$consumerPlaceOrderBodyPaymentMethodEnum_digitalPayment =
    const ConsumerPlaceOrderBodyPaymentMethodEnum._('digitalPayment');
const ConsumerPlaceOrderBodyPaymentMethodEnum
    _$consumerPlaceOrderBodyPaymentMethodEnum_wallet =
    const ConsumerPlaceOrderBodyPaymentMethodEnum._('wallet');
const ConsumerPlaceOrderBodyPaymentMethodEnum
    _$consumerPlaceOrderBodyPaymentMethodEnum_offlinePayment =
    const ConsumerPlaceOrderBodyPaymentMethodEnum._('offlinePayment');

ConsumerPlaceOrderBodyPaymentMethodEnum
    _$consumerPlaceOrderBodyPaymentMethodEnumValueOf(String name) {
  switch (name) {
    case 'cashOnDelivery':
      return _$consumerPlaceOrderBodyPaymentMethodEnum_cashOnDelivery;
    case 'digitalPayment':
      return _$consumerPlaceOrderBodyPaymentMethodEnum_digitalPayment;
    case 'wallet':
      return _$consumerPlaceOrderBodyPaymentMethodEnum_wallet;
    case 'offlinePayment':
      return _$consumerPlaceOrderBodyPaymentMethodEnum_offlinePayment;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerPlaceOrderBodyPaymentMethodEnum>
    _$consumerPlaceOrderBodyPaymentMethodEnumValues = BuiltSet<
        ConsumerPlaceOrderBodyPaymentMethodEnum>(const <ConsumerPlaceOrderBodyPaymentMethodEnum>[
  _$consumerPlaceOrderBodyPaymentMethodEnum_cashOnDelivery,
  _$consumerPlaceOrderBodyPaymentMethodEnum_digitalPayment,
  _$consumerPlaceOrderBodyPaymentMethodEnum_wallet,
  _$consumerPlaceOrderBodyPaymentMethodEnum_offlinePayment,
]);

const ConsumerPlaceOrderBodyOrderTypeEnum
    _$consumerPlaceOrderBodyOrderTypeEnum_delivery =
    const ConsumerPlaceOrderBodyOrderTypeEnum._('delivery');
const ConsumerPlaceOrderBodyOrderTypeEnum
    _$consumerPlaceOrderBodyOrderTypeEnum_takeAway =
    const ConsumerPlaceOrderBodyOrderTypeEnum._('takeAway');
const ConsumerPlaceOrderBodyOrderTypeEnum
    _$consumerPlaceOrderBodyOrderTypeEnum_dineIn =
    const ConsumerPlaceOrderBodyOrderTypeEnum._('dineIn');

ConsumerPlaceOrderBodyOrderTypeEnum
    _$consumerPlaceOrderBodyOrderTypeEnumValueOf(String name) {
  switch (name) {
    case 'delivery':
      return _$consumerPlaceOrderBodyOrderTypeEnum_delivery;
    case 'takeAway':
      return _$consumerPlaceOrderBodyOrderTypeEnum_takeAway;
    case 'dineIn':
      return _$consumerPlaceOrderBodyOrderTypeEnum_dineIn;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerPlaceOrderBodyOrderTypeEnum>
    _$consumerPlaceOrderBodyOrderTypeEnumValues = BuiltSet<
        ConsumerPlaceOrderBodyOrderTypeEnum>(const <ConsumerPlaceOrderBodyOrderTypeEnum>[
  _$consumerPlaceOrderBodyOrderTypeEnum_delivery,
  _$consumerPlaceOrderBodyOrderTypeEnum_takeAway,
  _$consumerPlaceOrderBodyOrderTypeEnum_dineIn,
]);

Serializer<ConsumerPlaceOrderBodyPaymentMethodEnum>
    _$consumerPlaceOrderBodyPaymentMethodEnumSerializer =
    _$ConsumerPlaceOrderBodyPaymentMethodEnumSerializer();
Serializer<ConsumerPlaceOrderBodyOrderTypeEnum>
    _$consumerPlaceOrderBodyOrderTypeEnumSerializer =
    _$ConsumerPlaceOrderBodyOrderTypeEnumSerializer();

class _$ConsumerPlaceOrderBodyPaymentMethodEnumSerializer
    implements PrimitiveSerializer<ConsumerPlaceOrderBodyPaymentMethodEnum> {
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
  final Iterable<Type> types = const <Type>[
    ConsumerPlaceOrderBodyPaymentMethodEnum
  ];
  @override
  final String wireName = 'ConsumerPlaceOrderBodyPaymentMethodEnum';

  @override
  Object serialize(Serializers serializers,
          ConsumerPlaceOrderBodyPaymentMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerPlaceOrderBodyPaymentMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerPlaceOrderBodyPaymentMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerPlaceOrderBodyOrderTypeEnumSerializer
    implements PrimitiveSerializer<ConsumerPlaceOrderBodyOrderTypeEnum> {
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
  final Iterable<Type> types = const <Type>[
    ConsumerPlaceOrderBodyOrderTypeEnum
  ];
  @override
  final String wireName = 'ConsumerPlaceOrderBodyOrderTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ConsumerPlaceOrderBodyOrderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerPlaceOrderBodyOrderTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerPlaceOrderBodyOrderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerPlaceOrderBody extends ConsumerPlaceOrderBody {
  @override
  final num restaurantId;
  @override
  final num? orderAmount;
  @override
  final ConsumerPlaceOrderBodyPaymentMethodEnum? paymentMethod;
  @override
  final ConsumerPlaceOrderBodyOrderTypeEnum? orderType;
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
  final DateTime? scheduleAt;
  @override
  final num? dmTips;
  @override
  final String? couponCode;
  @override
  final String? orderNote;
  @override
  final String? deliveryInstruction;
  @override
  final String? unavailableItemNote;
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
  final BuiltList<ConsumerPlaceOrderLineItem>? cart;
  @override
  final BuiltList<ConsumerPlaceOrderLineItem>? items;
  @override
  final num? guestId;
  @override
  final bool? isGuest;

  factory _$ConsumerPlaceOrderBody(
          [void Function(ConsumerPlaceOrderBodyBuilder)? updates]) =>
      (ConsumerPlaceOrderBodyBuilder()..update(updates))._build();

  _$ConsumerPlaceOrderBody._(
      {required this.restaurantId,
      this.orderAmount,
      this.paymentMethod,
      this.orderType,
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
      this.scheduleAt,
      this.dmTips,
      this.couponCode,
      this.orderNote,
      this.deliveryInstruction,
      this.unavailableItemNote,
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
  ConsumerPlaceOrderBody rebuild(
          void Function(ConsumerPlaceOrderBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerPlaceOrderBodyBuilder toBuilder() =>
      ConsumerPlaceOrderBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerPlaceOrderBody &&
        restaurantId == other.restaurantId &&
        orderAmount == other.orderAmount &&
        paymentMethod == other.paymentMethod &&
        orderType == other.orderType &&
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
        scheduleAt == other.scheduleAt &&
        dmTips == other.dmTips &&
        couponCode == other.couponCode &&
        orderNote == other.orderNote &&
        deliveryInstruction == other.deliveryInstruction &&
        unavailableItemNote == other.unavailableItemNote &&
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
    _$hash = $jc(_$hash, orderAmount.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, orderType.hashCode);
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
    _$hash = $jc(_$hash, scheduleAt.hashCode);
    _$hash = $jc(_$hash, dmTips.hashCode);
    _$hash = $jc(_$hash, couponCode.hashCode);
    _$hash = $jc(_$hash, orderNote.hashCode);
    _$hash = $jc(_$hash, deliveryInstruction.hashCode);
    _$hash = $jc(_$hash, unavailableItemNote.hashCode);
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
    return (newBuiltValueToStringHelper(r'ConsumerPlaceOrderBody')
          ..add('restaurantId', restaurantId)
          ..add('orderAmount', orderAmount)
          ..add('paymentMethod', paymentMethod)
          ..add('orderType', orderType)
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
          ..add('scheduleAt', scheduleAt)
          ..add('dmTips', dmTips)
          ..add('couponCode', couponCode)
          ..add('orderNote', orderNote)
          ..add('deliveryInstruction', deliveryInstruction)
          ..add('unavailableItemNote', unavailableItemNote)
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

class ConsumerPlaceOrderBodyBuilder
    implements Builder<ConsumerPlaceOrderBody, ConsumerPlaceOrderBodyBuilder> {
  _$ConsumerPlaceOrderBody? _$v;

  num? _restaurantId;
  num? get restaurantId => _$this._restaurantId;
  set restaurantId(num? restaurantId) => _$this._restaurantId = restaurantId;

  num? _orderAmount;
  num? get orderAmount => _$this._orderAmount;
  set orderAmount(num? orderAmount) => _$this._orderAmount = orderAmount;

  ConsumerPlaceOrderBodyPaymentMethodEnum? _paymentMethod;
  ConsumerPlaceOrderBodyPaymentMethodEnum? get paymentMethod =>
      _$this._paymentMethod;
  set paymentMethod(ConsumerPlaceOrderBodyPaymentMethodEnum? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  ConsumerPlaceOrderBodyOrderTypeEnum? _orderType;
  ConsumerPlaceOrderBodyOrderTypeEnum? get orderType => _$this._orderType;
  set orderType(ConsumerPlaceOrderBodyOrderTypeEnum? orderType) =>
      _$this._orderType = orderType;

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

  DateTime? _scheduleAt;
  DateTime? get scheduleAt => _$this._scheduleAt;
  set scheduleAt(DateTime? scheduleAt) => _$this._scheduleAt = scheduleAt;

  num? _dmTips;
  num? get dmTips => _$this._dmTips;
  set dmTips(num? dmTips) => _$this._dmTips = dmTips;

  String? _couponCode;
  String? get couponCode => _$this._couponCode;
  set couponCode(String? couponCode) => _$this._couponCode = couponCode;

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

  ListBuilder<ConsumerPlaceOrderLineItem>? _cart;
  ListBuilder<ConsumerPlaceOrderLineItem> get cart =>
      _$this._cart ??= ListBuilder<ConsumerPlaceOrderLineItem>();
  set cart(ListBuilder<ConsumerPlaceOrderLineItem>? cart) =>
      _$this._cart = cart;

  ListBuilder<ConsumerPlaceOrderLineItem>? _items;
  ListBuilder<ConsumerPlaceOrderLineItem> get items =>
      _$this._items ??= ListBuilder<ConsumerPlaceOrderLineItem>();
  set items(ListBuilder<ConsumerPlaceOrderLineItem>? items) =>
      _$this._items = items;

  num? _guestId;
  num? get guestId => _$this._guestId;
  set guestId(num? guestId) => _$this._guestId = guestId;

  bool? _isGuest;
  bool? get isGuest => _$this._isGuest;
  set isGuest(bool? isGuest) => _$this._isGuest = isGuest;

  ConsumerPlaceOrderBodyBuilder() {
    ConsumerPlaceOrderBody._defaults(this);
  }

  ConsumerPlaceOrderBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantId = $v.restaurantId;
      _orderAmount = $v.orderAmount;
      _paymentMethod = $v.paymentMethod;
      _orderType = $v.orderType;
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
      _scheduleAt = $v.scheduleAt;
      _dmTips = $v.dmTips;
      _couponCode = $v.couponCode;
      _orderNote = $v.orderNote;
      _deliveryInstruction = $v.deliveryInstruction;
      _unavailableItemNote = $v.unavailableItemNote;
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
  void replace(ConsumerPlaceOrderBody other) {
    _$v = other as _$ConsumerPlaceOrderBody;
  }

  @override
  void update(void Function(ConsumerPlaceOrderBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerPlaceOrderBody build() => _build();

  _$ConsumerPlaceOrderBody _build() {
    _$ConsumerPlaceOrderBody _$result;
    try {
      _$result = _$v ??
          _$ConsumerPlaceOrderBody._(
            restaurantId: BuiltValueNullFieldError.checkNotNull(
                restaurantId, r'ConsumerPlaceOrderBody', 'restaurantId'),
            orderAmount: orderAmount,
            paymentMethod: paymentMethod,
            orderType: orderType,
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
            scheduleAt: scheduleAt,
            dmTips: dmTips,
            couponCode: couponCode,
            orderNote: orderNote,
            deliveryInstruction: deliveryInstruction,
            unavailableItemNote: unavailableItemNote,
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
            r'ConsumerPlaceOrderBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

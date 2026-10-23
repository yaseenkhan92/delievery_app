// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_setup_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VendorRestaurantSetupPayload extends VendorRestaurantSetupPayload {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? active;
  @override
  final bool? scheduleOrder;
  @override
  final bool? delivery;
  @override
  final bool? takeAway;
  @override
  final bool? freeDelivery;
  @override
  final bool? veg;
  @override
  final bool? nonVeg;
  @override
  final bool? orderSubscriptionActive;
  @override
  final bool? cutlery;
  @override
  final bool? manualDispatch;
  @override
  final bool? instantOrder;
  @override
  final bool? customerDateOrderSratus;
  @override
  final int? customerOrderDate;
  @override
  final bool? halalTagStatus;
  @override
  final bool? isExtraPackagingActive;
  @override
  final bool? extraPackagingStatus;
  @override
  final JsonObject? extraPackagingAmount;
  @override
  final bool? dineIn;
  @override
  final int? scheduleAdvanceDineInBookingDuration;
  @override
  final String? scheduleAdvanceDineInBookingDurationTimeFormat;
  @override
  final num? minimumOrder;
  @override
  final bool? gstStatus;
  @override
  final String? gstCode;
  @override
  final num? minimumDeliveryCharge;
  @override
  final num? perKmDeliveryCharge;
  @override
  final num? maximumShippingCharge;
  @override
  final bool? freeDeliveryDistanceStatus;
  @override
  final String? freeDeliveryDistance;
  @override
  final BuiltList<int>? cuisineIds;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? characteristics;
  @override
  final String? metaTitle;
  @override
  final String? metaDescription;
  @override
  final String? metaImage;
  @override
  final String? metaImageUrl;
  @override
  final BuiltMap<String, VendorRestaurantSetupPayloadTranslationsValue>?
      translations;
  @override
  final BuiltList<VendorRestaurantSetupScheduleItem>? schedules;
  @override
  final VendorRestaurantSetupOptions? options;
  @override
  final VendorRestaurantSetupFlags? flags;

  factory _$VendorRestaurantSetupPayload(
          [void Function(VendorRestaurantSetupPayloadBuilder)? updates]) =>
      (VendorRestaurantSetupPayloadBuilder()..update(updates))._build();

  _$VendorRestaurantSetupPayload._(
      {this.id,
      this.name,
      this.active,
      this.scheduleOrder,
      this.delivery,
      this.takeAway,
      this.freeDelivery,
      this.veg,
      this.nonVeg,
      this.orderSubscriptionActive,
      this.cutlery,
      this.manualDispatch,
      this.instantOrder,
      this.customerDateOrderSratus,
      this.customerOrderDate,
      this.halalTagStatus,
      this.isExtraPackagingActive,
      this.extraPackagingStatus,
      this.extraPackagingAmount,
      this.dineIn,
      this.scheduleAdvanceDineInBookingDuration,
      this.scheduleAdvanceDineInBookingDurationTimeFormat,
      this.minimumOrder,
      this.gstStatus,
      this.gstCode,
      this.minimumDeliveryCharge,
      this.perKmDeliveryCharge,
      this.maximumShippingCharge,
      this.freeDeliveryDistanceStatus,
      this.freeDeliveryDistance,
      this.cuisineIds,
      this.tags,
      this.characteristics,
      this.metaTitle,
      this.metaDescription,
      this.metaImage,
      this.metaImageUrl,
      this.translations,
      this.schedules,
      this.options,
      this.flags})
      : super._();
  @override
  VendorRestaurantSetupPayload rebuild(
          void Function(VendorRestaurantSetupPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantSetupPayloadBuilder toBuilder() =>
      VendorRestaurantSetupPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantSetupPayload &&
        id == other.id &&
        name == other.name &&
        active == other.active &&
        scheduleOrder == other.scheduleOrder &&
        delivery == other.delivery &&
        takeAway == other.takeAway &&
        freeDelivery == other.freeDelivery &&
        veg == other.veg &&
        nonVeg == other.nonVeg &&
        orderSubscriptionActive == other.orderSubscriptionActive &&
        cutlery == other.cutlery &&
        manualDispatch == other.manualDispatch &&
        instantOrder == other.instantOrder &&
        customerDateOrderSratus == other.customerDateOrderSratus &&
        customerOrderDate == other.customerOrderDate &&
        halalTagStatus == other.halalTagStatus &&
        isExtraPackagingActive == other.isExtraPackagingActive &&
        extraPackagingStatus == other.extraPackagingStatus &&
        extraPackagingAmount == other.extraPackagingAmount &&
        dineIn == other.dineIn &&
        scheduleAdvanceDineInBookingDuration ==
            other.scheduleAdvanceDineInBookingDuration &&
        scheduleAdvanceDineInBookingDurationTimeFormat ==
            other.scheduleAdvanceDineInBookingDurationTimeFormat &&
        minimumOrder == other.minimumOrder &&
        gstStatus == other.gstStatus &&
        gstCode == other.gstCode &&
        minimumDeliveryCharge == other.minimumDeliveryCharge &&
        perKmDeliveryCharge == other.perKmDeliveryCharge &&
        maximumShippingCharge == other.maximumShippingCharge &&
        freeDeliveryDistanceStatus == other.freeDeliveryDistanceStatus &&
        freeDeliveryDistance == other.freeDeliveryDistance &&
        cuisineIds == other.cuisineIds &&
        tags == other.tags &&
        characteristics == other.characteristics &&
        metaTitle == other.metaTitle &&
        metaDescription == other.metaDescription &&
        metaImage == other.metaImage &&
        metaImageUrl == other.metaImageUrl &&
        translations == other.translations &&
        schedules == other.schedules &&
        options == other.options &&
        flags == other.flags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, scheduleOrder.hashCode);
    _$hash = $jc(_$hash, delivery.hashCode);
    _$hash = $jc(_$hash, takeAway.hashCode);
    _$hash = $jc(_$hash, freeDelivery.hashCode);
    _$hash = $jc(_$hash, veg.hashCode);
    _$hash = $jc(_$hash, nonVeg.hashCode);
    _$hash = $jc(_$hash, orderSubscriptionActive.hashCode);
    _$hash = $jc(_$hash, cutlery.hashCode);
    _$hash = $jc(_$hash, manualDispatch.hashCode);
    _$hash = $jc(_$hash, instantOrder.hashCode);
    _$hash = $jc(_$hash, customerDateOrderSratus.hashCode);
    _$hash = $jc(_$hash, customerOrderDate.hashCode);
    _$hash = $jc(_$hash, halalTagStatus.hashCode);
    _$hash = $jc(_$hash, isExtraPackagingActive.hashCode);
    _$hash = $jc(_$hash, extraPackagingStatus.hashCode);
    _$hash = $jc(_$hash, extraPackagingAmount.hashCode);
    _$hash = $jc(_$hash, dineIn.hashCode);
    _$hash = $jc(_$hash, scheduleAdvanceDineInBookingDuration.hashCode);
    _$hash =
        $jc(_$hash, scheduleAdvanceDineInBookingDurationTimeFormat.hashCode);
    _$hash = $jc(_$hash, minimumOrder.hashCode);
    _$hash = $jc(_$hash, gstStatus.hashCode);
    _$hash = $jc(_$hash, gstCode.hashCode);
    _$hash = $jc(_$hash, minimumDeliveryCharge.hashCode);
    _$hash = $jc(_$hash, perKmDeliveryCharge.hashCode);
    _$hash = $jc(_$hash, maximumShippingCharge.hashCode);
    _$hash = $jc(_$hash, freeDeliveryDistanceStatus.hashCode);
    _$hash = $jc(_$hash, freeDeliveryDistance.hashCode);
    _$hash = $jc(_$hash, cuisineIds.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, characteristics.hashCode);
    _$hash = $jc(_$hash, metaTitle.hashCode);
    _$hash = $jc(_$hash, metaDescription.hashCode);
    _$hash = $jc(_$hash, metaImage.hashCode);
    _$hash = $jc(_$hash, metaImageUrl.hashCode);
    _$hash = $jc(_$hash, translations.hashCode);
    _$hash = $jc(_$hash, schedules.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, flags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRestaurantSetupPayload')
          ..add('id', id)
          ..add('name', name)
          ..add('active', active)
          ..add('scheduleOrder', scheduleOrder)
          ..add('delivery', delivery)
          ..add('takeAway', takeAway)
          ..add('freeDelivery', freeDelivery)
          ..add('veg', veg)
          ..add('nonVeg', nonVeg)
          ..add('orderSubscriptionActive', orderSubscriptionActive)
          ..add('cutlery', cutlery)
          ..add('manualDispatch', manualDispatch)
          ..add('instantOrder', instantOrder)
          ..add('customerDateOrderSratus', customerDateOrderSratus)
          ..add('customerOrderDate', customerOrderDate)
          ..add('halalTagStatus', halalTagStatus)
          ..add('isExtraPackagingActive', isExtraPackagingActive)
          ..add('extraPackagingStatus', extraPackagingStatus)
          ..add('extraPackagingAmount', extraPackagingAmount)
          ..add('dineIn', dineIn)
          ..add('scheduleAdvanceDineInBookingDuration',
              scheduleAdvanceDineInBookingDuration)
          ..add('scheduleAdvanceDineInBookingDurationTimeFormat',
              scheduleAdvanceDineInBookingDurationTimeFormat)
          ..add('minimumOrder', minimumOrder)
          ..add('gstStatus', gstStatus)
          ..add('gstCode', gstCode)
          ..add('minimumDeliveryCharge', minimumDeliveryCharge)
          ..add('perKmDeliveryCharge', perKmDeliveryCharge)
          ..add('maximumShippingCharge', maximumShippingCharge)
          ..add('freeDeliveryDistanceStatus', freeDeliveryDistanceStatus)
          ..add('freeDeliveryDistance', freeDeliveryDistance)
          ..add('cuisineIds', cuisineIds)
          ..add('tags', tags)
          ..add('characteristics', characteristics)
          ..add('metaTitle', metaTitle)
          ..add('metaDescription', metaDescription)
          ..add('metaImage', metaImage)
          ..add('metaImageUrl', metaImageUrl)
          ..add('translations', translations)
          ..add('schedules', schedules)
          ..add('options', options)
          ..add('flags', flags))
        .toString();
  }
}

class VendorRestaurantSetupPayloadBuilder
    implements
        Builder<VendorRestaurantSetupPayload,
            VendorRestaurantSetupPayloadBuilder> {
  _$VendorRestaurantSetupPayload? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  bool? _scheduleOrder;
  bool? get scheduleOrder => _$this._scheduleOrder;
  set scheduleOrder(bool? scheduleOrder) =>
      _$this._scheduleOrder = scheduleOrder;

  bool? _delivery;
  bool? get delivery => _$this._delivery;
  set delivery(bool? delivery) => _$this._delivery = delivery;

  bool? _takeAway;
  bool? get takeAway => _$this._takeAway;
  set takeAway(bool? takeAway) => _$this._takeAway = takeAway;

  bool? _freeDelivery;
  bool? get freeDelivery => _$this._freeDelivery;
  set freeDelivery(bool? freeDelivery) => _$this._freeDelivery = freeDelivery;

  bool? _veg;
  bool? get veg => _$this._veg;
  set veg(bool? veg) => _$this._veg = veg;

  bool? _nonVeg;
  bool? get nonVeg => _$this._nonVeg;
  set nonVeg(bool? nonVeg) => _$this._nonVeg = nonVeg;

  bool? _orderSubscriptionActive;
  bool? get orderSubscriptionActive => _$this._orderSubscriptionActive;
  set orderSubscriptionActive(bool? orderSubscriptionActive) =>
      _$this._orderSubscriptionActive = orderSubscriptionActive;

  bool? _cutlery;
  bool? get cutlery => _$this._cutlery;
  set cutlery(bool? cutlery) => _$this._cutlery = cutlery;

  bool? _manualDispatch;
  bool? get manualDispatch => _$this._manualDispatch;
  set manualDispatch(bool? manualDispatch) =>
      _$this._manualDispatch = manualDispatch;

  bool? _instantOrder;
  bool? get instantOrder => _$this._instantOrder;
  set instantOrder(bool? instantOrder) => _$this._instantOrder = instantOrder;

  bool? _customerDateOrderSratus;
  bool? get customerDateOrderSratus => _$this._customerDateOrderSratus;
  set customerDateOrderSratus(bool? customerDateOrderSratus) =>
      _$this._customerDateOrderSratus = customerDateOrderSratus;

  int? _customerOrderDate;
  int? get customerOrderDate => _$this._customerOrderDate;
  set customerOrderDate(int? customerOrderDate) =>
      _$this._customerOrderDate = customerOrderDate;

  bool? _halalTagStatus;
  bool? get halalTagStatus => _$this._halalTagStatus;
  set halalTagStatus(bool? halalTagStatus) =>
      _$this._halalTagStatus = halalTagStatus;

  bool? _isExtraPackagingActive;
  bool? get isExtraPackagingActive => _$this._isExtraPackagingActive;
  set isExtraPackagingActive(bool? isExtraPackagingActive) =>
      _$this._isExtraPackagingActive = isExtraPackagingActive;

  bool? _extraPackagingStatus;
  bool? get extraPackagingStatus => _$this._extraPackagingStatus;
  set extraPackagingStatus(bool? extraPackagingStatus) =>
      _$this._extraPackagingStatus = extraPackagingStatus;

  JsonObject? _extraPackagingAmount;
  JsonObject? get extraPackagingAmount => _$this._extraPackagingAmount;
  set extraPackagingAmount(JsonObject? extraPackagingAmount) =>
      _$this._extraPackagingAmount = extraPackagingAmount;

  bool? _dineIn;
  bool? get dineIn => _$this._dineIn;
  set dineIn(bool? dineIn) => _$this._dineIn = dineIn;

  int? _scheduleAdvanceDineInBookingDuration;
  int? get scheduleAdvanceDineInBookingDuration =>
      _$this._scheduleAdvanceDineInBookingDuration;
  set scheduleAdvanceDineInBookingDuration(
          int? scheduleAdvanceDineInBookingDuration) =>
      _$this._scheduleAdvanceDineInBookingDuration =
          scheduleAdvanceDineInBookingDuration;

  String? _scheduleAdvanceDineInBookingDurationTimeFormat;
  String? get scheduleAdvanceDineInBookingDurationTimeFormat =>
      _$this._scheduleAdvanceDineInBookingDurationTimeFormat;
  set scheduleAdvanceDineInBookingDurationTimeFormat(
          String? scheduleAdvanceDineInBookingDurationTimeFormat) =>
      _$this._scheduleAdvanceDineInBookingDurationTimeFormat =
          scheduleAdvanceDineInBookingDurationTimeFormat;

  num? _minimumOrder;
  num? get minimumOrder => _$this._minimumOrder;
  set minimumOrder(num? minimumOrder) => _$this._minimumOrder = minimumOrder;

  bool? _gstStatus;
  bool? get gstStatus => _$this._gstStatus;
  set gstStatus(bool? gstStatus) => _$this._gstStatus = gstStatus;

  String? _gstCode;
  String? get gstCode => _$this._gstCode;
  set gstCode(String? gstCode) => _$this._gstCode = gstCode;

  num? _minimumDeliveryCharge;
  num? get minimumDeliveryCharge => _$this._minimumDeliveryCharge;
  set minimumDeliveryCharge(num? minimumDeliveryCharge) =>
      _$this._minimumDeliveryCharge = minimumDeliveryCharge;

  num? _perKmDeliveryCharge;
  num? get perKmDeliveryCharge => _$this._perKmDeliveryCharge;
  set perKmDeliveryCharge(num? perKmDeliveryCharge) =>
      _$this._perKmDeliveryCharge = perKmDeliveryCharge;

  num? _maximumShippingCharge;
  num? get maximumShippingCharge => _$this._maximumShippingCharge;
  set maximumShippingCharge(num? maximumShippingCharge) =>
      _$this._maximumShippingCharge = maximumShippingCharge;

  bool? _freeDeliveryDistanceStatus;
  bool? get freeDeliveryDistanceStatus => _$this._freeDeliveryDistanceStatus;
  set freeDeliveryDistanceStatus(bool? freeDeliveryDistanceStatus) =>
      _$this._freeDeliveryDistanceStatus = freeDeliveryDistanceStatus;

  String? _freeDeliveryDistance;
  String? get freeDeliveryDistance => _$this._freeDeliveryDistance;
  set freeDeliveryDistance(String? freeDeliveryDistance) =>
      _$this._freeDeliveryDistance = freeDeliveryDistance;

  ListBuilder<int>? _cuisineIds;
  ListBuilder<int> get cuisineIds => _$this._cuisineIds ??= ListBuilder<int>();
  set cuisineIds(ListBuilder<int>? cuisineIds) =>
      _$this._cuisineIds = cuisineIds;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _characteristics;
  ListBuilder<String> get characteristics =>
      _$this._characteristics ??= ListBuilder<String>();
  set characteristics(ListBuilder<String>? characteristics) =>
      _$this._characteristics = characteristics;

  String? _metaTitle;
  String? get metaTitle => _$this._metaTitle;
  set metaTitle(String? metaTitle) => _$this._metaTitle = metaTitle;

  String? _metaDescription;
  String? get metaDescription => _$this._metaDescription;
  set metaDescription(String? metaDescription) =>
      _$this._metaDescription = metaDescription;

  String? _metaImage;
  String? get metaImage => _$this._metaImage;
  set metaImage(String? metaImage) => _$this._metaImage = metaImage;

  String? _metaImageUrl;
  String? get metaImageUrl => _$this._metaImageUrl;
  set metaImageUrl(String? metaImageUrl) => _$this._metaImageUrl = metaImageUrl;

  MapBuilder<String, VendorRestaurantSetupPayloadTranslationsValue>?
      _translations;
  MapBuilder<String, VendorRestaurantSetupPayloadTranslationsValue>
      get translations => _$this._translations ??=
          MapBuilder<String, VendorRestaurantSetupPayloadTranslationsValue>();
  set translations(
          MapBuilder<String, VendorRestaurantSetupPayloadTranslationsValue>?
              translations) =>
      _$this._translations = translations;

  ListBuilder<VendorRestaurantSetupScheduleItem>? _schedules;
  ListBuilder<VendorRestaurantSetupScheduleItem> get schedules =>
      _$this._schedules ??= ListBuilder<VendorRestaurantSetupScheduleItem>();
  set schedules(ListBuilder<VendorRestaurantSetupScheduleItem>? schedules) =>
      _$this._schedules = schedules;

  VendorRestaurantSetupOptionsBuilder? _options;
  VendorRestaurantSetupOptionsBuilder get options =>
      _$this._options ??= VendorRestaurantSetupOptionsBuilder();
  set options(VendorRestaurantSetupOptionsBuilder? options) =>
      _$this._options = options;

  VendorRestaurantSetupFlagsBuilder? _flags;
  VendorRestaurantSetupFlagsBuilder get flags =>
      _$this._flags ??= VendorRestaurantSetupFlagsBuilder();
  set flags(VendorRestaurantSetupFlagsBuilder? flags) => _$this._flags = flags;

  VendorRestaurantSetupPayloadBuilder() {
    VendorRestaurantSetupPayload._defaults(this);
  }

  VendorRestaurantSetupPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _active = $v.active;
      _scheduleOrder = $v.scheduleOrder;
      _delivery = $v.delivery;
      _takeAway = $v.takeAway;
      _freeDelivery = $v.freeDelivery;
      _veg = $v.veg;
      _nonVeg = $v.nonVeg;
      _orderSubscriptionActive = $v.orderSubscriptionActive;
      _cutlery = $v.cutlery;
      _manualDispatch = $v.manualDispatch;
      _instantOrder = $v.instantOrder;
      _customerDateOrderSratus = $v.customerDateOrderSratus;
      _customerOrderDate = $v.customerOrderDate;
      _halalTagStatus = $v.halalTagStatus;
      _isExtraPackagingActive = $v.isExtraPackagingActive;
      _extraPackagingStatus = $v.extraPackagingStatus;
      _extraPackagingAmount = $v.extraPackagingAmount;
      _dineIn = $v.dineIn;
      _scheduleAdvanceDineInBookingDuration =
          $v.scheduleAdvanceDineInBookingDuration;
      _scheduleAdvanceDineInBookingDurationTimeFormat =
          $v.scheduleAdvanceDineInBookingDurationTimeFormat;
      _minimumOrder = $v.minimumOrder;
      _gstStatus = $v.gstStatus;
      _gstCode = $v.gstCode;
      _minimumDeliveryCharge = $v.minimumDeliveryCharge;
      _perKmDeliveryCharge = $v.perKmDeliveryCharge;
      _maximumShippingCharge = $v.maximumShippingCharge;
      _freeDeliveryDistanceStatus = $v.freeDeliveryDistanceStatus;
      _freeDeliveryDistance = $v.freeDeliveryDistance;
      _cuisineIds = $v.cuisineIds?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _characteristics = $v.characteristics?.toBuilder();
      _metaTitle = $v.metaTitle;
      _metaDescription = $v.metaDescription;
      _metaImage = $v.metaImage;
      _metaImageUrl = $v.metaImageUrl;
      _translations = $v.translations?.toBuilder();
      _schedules = $v.schedules?.toBuilder();
      _options = $v.options?.toBuilder();
      _flags = $v.flags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantSetupPayload other) {
    _$v = other as _$VendorRestaurantSetupPayload;
  }

  @override
  void update(void Function(VendorRestaurantSetupPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantSetupPayload build() => _build();

  _$VendorRestaurantSetupPayload _build() {
    _$VendorRestaurantSetupPayload _$result;
    try {
      _$result = _$v ??
          _$VendorRestaurantSetupPayload._(
            id: id,
            name: name,
            active: active,
            scheduleOrder: scheduleOrder,
            delivery: delivery,
            takeAway: takeAway,
            freeDelivery: freeDelivery,
            veg: veg,
            nonVeg: nonVeg,
            orderSubscriptionActive: orderSubscriptionActive,
            cutlery: cutlery,
            manualDispatch: manualDispatch,
            instantOrder: instantOrder,
            customerDateOrderSratus: customerDateOrderSratus,
            customerOrderDate: customerOrderDate,
            halalTagStatus: halalTagStatus,
            isExtraPackagingActive: isExtraPackagingActive,
            extraPackagingStatus: extraPackagingStatus,
            extraPackagingAmount: extraPackagingAmount,
            dineIn: dineIn,
            scheduleAdvanceDineInBookingDuration:
                scheduleAdvanceDineInBookingDuration,
            scheduleAdvanceDineInBookingDurationTimeFormat:
                scheduleAdvanceDineInBookingDurationTimeFormat,
            minimumOrder: minimumOrder,
            gstStatus: gstStatus,
            gstCode: gstCode,
            minimumDeliveryCharge: minimumDeliveryCharge,
            perKmDeliveryCharge: perKmDeliveryCharge,
            maximumShippingCharge: maximumShippingCharge,
            freeDeliveryDistanceStatus: freeDeliveryDistanceStatus,
            freeDeliveryDistance: freeDeliveryDistance,
            cuisineIds: _cuisineIds?.build(),
            tags: _tags?.build(),
            characteristics: _characteristics?.build(),
            metaTitle: metaTitle,
            metaDescription: metaDescription,
            metaImage: metaImage,
            metaImageUrl: metaImageUrl,
            translations: _translations?.build(),
            schedules: _schedules?.build(),
            options: _options?.build(),
            flags: _flags?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cuisineIds';
        _cuisineIds?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'characteristics';
        _characteristics?.build();

        _$failedField = 'translations';
        _translations?.build();
        _$failedField = 'schedules';
        _schedules?.build();
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'flags';
        _flags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VendorRestaurantSetupPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_restaurant_business_setup_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
    _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_min =
    const VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
        ._('min');
const VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
    _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_hour =
    const VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
        ._('hour');
const VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
    _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_day =
    const VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
        ._('day');

VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
    _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnumValueOf(
        String name) {
  switch (name) {
    case 'min':
      return _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_min;
    case 'hour':
      return _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_hour;
    case 'day':
      return _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_day;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<
        VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum>
    _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnumValues =
    BuiltSet<
        VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum>(const <VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum>[
  _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_min,
  _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_hour,
  _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum_day,
]);

Serializer<
        VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum>
    _$vendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnumSerializer =
    _$VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnumSerializer();

class _$VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnumSerializer
    implements
        PrimitiveSerializer<
            VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'min': 'min',
    'hour': 'hour',
    'day': 'day',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'min': 'min',
    'hour': 'hour',
    'day': 'day',
  };

  @override
  final Iterable<Type> types = const <Type>[
    VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
  ];
  @override
  final String wireName =
      'VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum';

  @override
  Object serialize(
          Serializers serializers,
          VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
      deserialize(Serializers serializers, Object serialized,
              {FullType specifiedType = FullType.unspecified}) =>
          VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum
              .valueOf(_fromWire[serialized] ??
                  (serialized is String ? serialized : ''));
}

class _$VendorRestaurantBusinessSetupBody
    extends VendorRestaurantBusinessSetupBody {
  @override
  final num minimumOrder;
  @override
  final bool gstStatus;
  @override
  final String gstCode;
  @override
  final BuiltList<int>? cuisineIds;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? characteristics;
  @override
  final int? customerOrderDate;
  @override
  final bool? extraPackagingStatus;
  @override
  final num? extraPackagingAmount;
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
  final int? scheduleAdvanceDineInBookingDuration;
  @override
  final VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum?
      scheduleAdvanceDineInBookingDurationTimeFormat;

  factory _$VendorRestaurantBusinessSetupBody(
          [void Function(VendorRestaurantBusinessSetupBodyBuilder)? updates]) =>
      (VendorRestaurantBusinessSetupBodyBuilder()..update(updates))._build();

  _$VendorRestaurantBusinessSetupBody._(
      {required this.minimumOrder,
      required this.gstStatus,
      required this.gstCode,
      this.cuisineIds,
      this.tags,
      this.characteristics,
      this.customerOrderDate,
      this.extraPackagingStatus,
      this.extraPackagingAmount,
      this.minimumDeliveryCharge,
      this.perKmDeliveryCharge,
      this.maximumShippingCharge,
      this.freeDeliveryDistanceStatus,
      this.freeDeliveryDistance,
      this.scheduleAdvanceDineInBookingDuration,
      this.scheduleAdvanceDineInBookingDurationTimeFormat})
      : super._();
  @override
  VendorRestaurantBusinessSetupBody rebuild(
          void Function(VendorRestaurantBusinessSetupBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRestaurantBusinessSetupBodyBuilder toBuilder() =>
      VendorRestaurantBusinessSetupBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRestaurantBusinessSetupBody &&
        minimumOrder == other.minimumOrder &&
        gstStatus == other.gstStatus &&
        gstCode == other.gstCode &&
        cuisineIds == other.cuisineIds &&
        tags == other.tags &&
        characteristics == other.characteristics &&
        customerOrderDate == other.customerOrderDate &&
        extraPackagingStatus == other.extraPackagingStatus &&
        extraPackagingAmount == other.extraPackagingAmount &&
        minimumDeliveryCharge == other.minimumDeliveryCharge &&
        perKmDeliveryCharge == other.perKmDeliveryCharge &&
        maximumShippingCharge == other.maximumShippingCharge &&
        freeDeliveryDistanceStatus == other.freeDeliveryDistanceStatus &&
        freeDeliveryDistance == other.freeDeliveryDistance &&
        scheduleAdvanceDineInBookingDuration ==
            other.scheduleAdvanceDineInBookingDuration &&
        scheduleAdvanceDineInBookingDurationTimeFormat ==
            other.scheduleAdvanceDineInBookingDurationTimeFormat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minimumOrder.hashCode);
    _$hash = $jc(_$hash, gstStatus.hashCode);
    _$hash = $jc(_$hash, gstCode.hashCode);
    _$hash = $jc(_$hash, cuisineIds.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, characteristics.hashCode);
    _$hash = $jc(_$hash, customerOrderDate.hashCode);
    _$hash = $jc(_$hash, extraPackagingStatus.hashCode);
    _$hash = $jc(_$hash, extraPackagingAmount.hashCode);
    _$hash = $jc(_$hash, minimumDeliveryCharge.hashCode);
    _$hash = $jc(_$hash, perKmDeliveryCharge.hashCode);
    _$hash = $jc(_$hash, maximumShippingCharge.hashCode);
    _$hash = $jc(_$hash, freeDeliveryDistanceStatus.hashCode);
    _$hash = $jc(_$hash, freeDeliveryDistance.hashCode);
    _$hash = $jc(_$hash, scheduleAdvanceDineInBookingDuration.hashCode);
    _$hash =
        $jc(_$hash, scheduleAdvanceDineInBookingDurationTimeFormat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRestaurantBusinessSetupBody')
          ..add('minimumOrder', minimumOrder)
          ..add('gstStatus', gstStatus)
          ..add('gstCode', gstCode)
          ..add('cuisineIds', cuisineIds)
          ..add('tags', tags)
          ..add('characteristics', characteristics)
          ..add('customerOrderDate', customerOrderDate)
          ..add('extraPackagingStatus', extraPackagingStatus)
          ..add('extraPackagingAmount', extraPackagingAmount)
          ..add('minimumDeliveryCharge', minimumDeliveryCharge)
          ..add('perKmDeliveryCharge', perKmDeliveryCharge)
          ..add('maximumShippingCharge', maximumShippingCharge)
          ..add('freeDeliveryDistanceStatus', freeDeliveryDistanceStatus)
          ..add('freeDeliveryDistance', freeDeliveryDistance)
          ..add('scheduleAdvanceDineInBookingDuration',
              scheduleAdvanceDineInBookingDuration)
          ..add('scheduleAdvanceDineInBookingDurationTimeFormat',
              scheduleAdvanceDineInBookingDurationTimeFormat))
        .toString();
  }
}

class VendorRestaurantBusinessSetupBodyBuilder
    implements
        Builder<VendorRestaurantBusinessSetupBody,
            VendorRestaurantBusinessSetupBodyBuilder> {
  _$VendorRestaurantBusinessSetupBody? _$v;

  num? _minimumOrder;
  num? get minimumOrder => _$this._minimumOrder;
  set minimumOrder(num? minimumOrder) => _$this._minimumOrder = minimumOrder;

  bool? _gstStatus;
  bool? get gstStatus => _$this._gstStatus;
  set gstStatus(bool? gstStatus) => _$this._gstStatus = gstStatus;

  String? _gstCode;
  String? get gstCode => _$this._gstCode;
  set gstCode(String? gstCode) => _$this._gstCode = gstCode;

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

  int? _customerOrderDate;
  int? get customerOrderDate => _$this._customerOrderDate;
  set customerOrderDate(int? customerOrderDate) =>
      _$this._customerOrderDate = customerOrderDate;

  bool? _extraPackagingStatus;
  bool? get extraPackagingStatus => _$this._extraPackagingStatus;
  set extraPackagingStatus(bool? extraPackagingStatus) =>
      _$this._extraPackagingStatus = extraPackagingStatus;

  num? _extraPackagingAmount;
  num? get extraPackagingAmount => _$this._extraPackagingAmount;
  set extraPackagingAmount(num? extraPackagingAmount) =>
      _$this._extraPackagingAmount = extraPackagingAmount;

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

  int? _scheduleAdvanceDineInBookingDuration;
  int? get scheduleAdvanceDineInBookingDuration =>
      _$this._scheduleAdvanceDineInBookingDuration;
  set scheduleAdvanceDineInBookingDuration(
          int? scheduleAdvanceDineInBookingDuration) =>
      _$this._scheduleAdvanceDineInBookingDuration =
          scheduleAdvanceDineInBookingDuration;

  VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum?
      _scheduleAdvanceDineInBookingDurationTimeFormat;
  VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum?
      get scheduleAdvanceDineInBookingDurationTimeFormat =>
          _$this._scheduleAdvanceDineInBookingDurationTimeFormat;
  set scheduleAdvanceDineInBookingDurationTimeFormat(
          VendorRestaurantBusinessSetupBodyScheduleAdvanceDineInBookingDurationTimeFormatEnum?
              scheduleAdvanceDineInBookingDurationTimeFormat) =>
      _$this._scheduleAdvanceDineInBookingDurationTimeFormat =
          scheduleAdvanceDineInBookingDurationTimeFormat;

  VendorRestaurantBusinessSetupBodyBuilder() {
    VendorRestaurantBusinessSetupBody._defaults(this);
  }

  VendorRestaurantBusinessSetupBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minimumOrder = $v.minimumOrder;
      _gstStatus = $v.gstStatus;
      _gstCode = $v.gstCode;
      _cuisineIds = $v.cuisineIds?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _characteristics = $v.characteristics?.toBuilder();
      _customerOrderDate = $v.customerOrderDate;
      _extraPackagingStatus = $v.extraPackagingStatus;
      _extraPackagingAmount = $v.extraPackagingAmount;
      _minimumDeliveryCharge = $v.minimumDeliveryCharge;
      _perKmDeliveryCharge = $v.perKmDeliveryCharge;
      _maximumShippingCharge = $v.maximumShippingCharge;
      _freeDeliveryDistanceStatus = $v.freeDeliveryDistanceStatus;
      _freeDeliveryDistance = $v.freeDeliveryDistance;
      _scheduleAdvanceDineInBookingDuration =
          $v.scheduleAdvanceDineInBookingDuration;
      _scheduleAdvanceDineInBookingDurationTimeFormat =
          $v.scheduleAdvanceDineInBookingDurationTimeFormat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRestaurantBusinessSetupBody other) {
    _$v = other as _$VendorRestaurantBusinessSetupBody;
  }

  @override
  void update(
      void Function(VendorRestaurantBusinessSetupBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRestaurantBusinessSetupBody build() => _build();

  _$VendorRestaurantBusinessSetupBody _build() {
    _$VendorRestaurantBusinessSetupBody _$result;
    try {
      _$result = _$v ??
          _$VendorRestaurantBusinessSetupBody._(
            minimumOrder: BuiltValueNullFieldError.checkNotNull(minimumOrder,
                r'VendorRestaurantBusinessSetupBody', 'minimumOrder'),
            gstStatus: BuiltValueNullFieldError.checkNotNull(
                gstStatus, r'VendorRestaurantBusinessSetupBody', 'gstStatus'),
            gstCode: BuiltValueNullFieldError.checkNotNull(
                gstCode, r'VendorRestaurantBusinessSetupBody', 'gstCode'),
            cuisineIds: _cuisineIds?.build(),
            tags: _tags?.build(),
            characteristics: _characteristics?.build(),
            customerOrderDate: customerOrderDate,
            extraPackagingStatus: extraPackagingStatus,
            extraPackagingAmount: extraPackagingAmount,
            minimumDeliveryCharge: minimumDeliveryCharge,
            perKmDeliveryCharge: perKmDeliveryCharge,
            maximumShippingCharge: maximumShippingCharge,
            freeDeliveryDistanceStatus: freeDeliveryDistanceStatus,
            freeDeliveryDistance: freeDeliveryDistance,
            scheduleAdvanceDineInBookingDuration:
                scheduleAdvanceDineInBookingDuration,
            scheduleAdvanceDineInBookingDurationTimeFormat:
                scheduleAdvanceDineInBookingDurationTimeFormat,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VendorRestaurantBusinessSetupBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

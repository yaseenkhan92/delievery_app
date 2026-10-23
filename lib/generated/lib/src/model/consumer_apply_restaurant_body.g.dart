// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_apply_restaurant_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsumerApplyRestaurantBodyLanguageEnum
    _$consumerApplyRestaurantBodyLanguageEnum_en =
    const ConsumerApplyRestaurantBodyLanguageEnum._('en');
const ConsumerApplyRestaurantBodyLanguageEnum
    _$consumerApplyRestaurantBodyLanguageEnum_he =
    const ConsumerApplyRestaurantBodyLanguageEnum._('he');

ConsumerApplyRestaurantBodyLanguageEnum
    _$consumerApplyRestaurantBodyLanguageEnumValueOf(String name) {
  switch (name) {
    case 'en':
      return _$consumerApplyRestaurantBodyLanguageEnum_en;
    case 'he':
      return _$consumerApplyRestaurantBodyLanguageEnum_he;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerApplyRestaurantBodyLanguageEnum>
    _$consumerApplyRestaurantBodyLanguageEnumValues = BuiltSet<
        ConsumerApplyRestaurantBodyLanguageEnum>(const <ConsumerApplyRestaurantBodyLanguageEnum>[
  _$consumerApplyRestaurantBodyLanguageEnum_en,
  _$consumerApplyRestaurantBodyLanguageEnum_he,
]);

Serializer<ConsumerApplyRestaurantBodyLanguageEnum>
    _$consumerApplyRestaurantBodyLanguageEnumSerializer =
    _$ConsumerApplyRestaurantBodyLanguageEnumSerializer();

class _$ConsumerApplyRestaurantBodyLanguageEnumSerializer
    implements PrimitiveSerializer<ConsumerApplyRestaurantBodyLanguageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'en': 'en',
    'he': 'he',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'en': 'en',
    'he': 'he',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ConsumerApplyRestaurantBodyLanguageEnum
  ];
  @override
  final String wireName = 'ConsumerApplyRestaurantBodyLanguageEnum';

  @override
  Object serialize(Serializers serializers,
          ConsumerApplyRestaurantBodyLanguageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerApplyRestaurantBodyLanguageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerApplyRestaurantBodyLanguageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerApplyRestaurantBody extends ConsumerApplyRestaurantBody {
  @override
  final String restaurantName;
  @override
  final String restaurantAddress;
  @override
  final PlaceOrderRequestLatitude? lat;
  @override
  final PlaceOrderRequestLatitude? lng;
  @override
  final int zoneId;
  @override
  final num tax;
  @override
  final ConsumerApplyRestaurantBodyLanguageEnum? language;
  @override
  final String? cloudflareId;
  @override
  final String? logo;
  @override
  final String? coverPhoto;
  @override
  final BuiltList<int>? cuisines;

  factory _$ConsumerApplyRestaurantBody(
          [void Function(ConsumerApplyRestaurantBodyBuilder)? updates]) =>
      (ConsumerApplyRestaurantBodyBuilder()..update(updates))._build();

  _$ConsumerApplyRestaurantBody._(
      {required this.restaurantName,
      required this.restaurantAddress,
      this.lat,
      this.lng,
      required this.zoneId,
      required this.tax,
      this.language,
      this.cloudflareId,
      this.logo,
      this.coverPhoto,
      this.cuisines})
      : super._();
  @override
  ConsumerApplyRestaurantBody rebuild(
          void Function(ConsumerApplyRestaurantBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerApplyRestaurantBodyBuilder toBuilder() =>
      ConsumerApplyRestaurantBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerApplyRestaurantBody &&
        restaurantName == other.restaurantName &&
        restaurantAddress == other.restaurantAddress &&
        lat == other.lat &&
        lng == other.lng &&
        zoneId == other.zoneId &&
        tax == other.tax &&
        language == other.language &&
        cloudflareId == other.cloudflareId &&
        logo == other.logo &&
        coverPhoto == other.coverPhoto &&
        cuisines == other.cuisines;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restaurantName.hashCode);
    _$hash = $jc(_$hash, restaurantAddress.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jc(_$hash, tax.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, cloudflareId.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, coverPhoto.hashCode);
    _$hash = $jc(_$hash, cuisines.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerApplyRestaurantBody')
          ..add('restaurantName', restaurantName)
          ..add('restaurantAddress', restaurantAddress)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('zoneId', zoneId)
          ..add('tax', tax)
          ..add('language', language)
          ..add('cloudflareId', cloudflareId)
          ..add('logo', logo)
          ..add('coverPhoto', coverPhoto)
          ..add('cuisines', cuisines))
        .toString();
  }
}

class ConsumerApplyRestaurantBodyBuilder
    implements
        Builder<ConsumerApplyRestaurantBody,
            ConsumerApplyRestaurantBodyBuilder> {
  _$ConsumerApplyRestaurantBody? _$v;

  String? _restaurantName;
  String? get restaurantName => _$this._restaurantName;
  set restaurantName(String? restaurantName) =>
      _$this._restaurantName = restaurantName;

  String? _restaurantAddress;
  String? get restaurantAddress => _$this._restaurantAddress;
  set restaurantAddress(String? restaurantAddress) =>
      _$this._restaurantAddress = restaurantAddress;

  PlaceOrderRequestLatitudeBuilder? _lat;
  PlaceOrderRequestLatitudeBuilder get lat =>
      _$this._lat ??= PlaceOrderRequestLatitudeBuilder();
  set lat(PlaceOrderRequestLatitudeBuilder? lat) => _$this._lat = lat;

  PlaceOrderRequestLatitudeBuilder? _lng;
  PlaceOrderRequestLatitudeBuilder get lng =>
      _$this._lng ??= PlaceOrderRequestLatitudeBuilder();
  set lng(PlaceOrderRequestLatitudeBuilder? lng) => _$this._lng = lng;

  int? _zoneId;
  int? get zoneId => _$this._zoneId;
  set zoneId(int? zoneId) => _$this._zoneId = zoneId;

  num? _tax;
  num? get tax => _$this._tax;
  set tax(num? tax) => _$this._tax = tax;

  ConsumerApplyRestaurantBodyLanguageEnum? _language;
  ConsumerApplyRestaurantBodyLanguageEnum? get language => _$this._language;
  set language(ConsumerApplyRestaurantBodyLanguageEnum? language) =>
      _$this._language = language;

  String? _cloudflareId;
  String? get cloudflareId => _$this._cloudflareId;
  set cloudflareId(String? cloudflareId) => _$this._cloudflareId = cloudflareId;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _coverPhoto;
  String? get coverPhoto => _$this._coverPhoto;
  set coverPhoto(String? coverPhoto) => _$this._coverPhoto = coverPhoto;

  ListBuilder<int>? _cuisines;
  ListBuilder<int> get cuisines => _$this._cuisines ??= ListBuilder<int>();
  set cuisines(ListBuilder<int>? cuisines) => _$this._cuisines = cuisines;

  ConsumerApplyRestaurantBodyBuilder() {
    ConsumerApplyRestaurantBody._defaults(this);
  }

  ConsumerApplyRestaurantBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantName = $v.restaurantName;
      _restaurantAddress = $v.restaurantAddress;
      _lat = $v.lat?.toBuilder();
      _lng = $v.lng?.toBuilder();
      _zoneId = $v.zoneId;
      _tax = $v.tax;
      _language = $v.language;
      _cloudflareId = $v.cloudflareId;
      _logo = $v.logo;
      _coverPhoto = $v.coverPhoto;
      _cuisines = $v.cuisines?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerApplyRestaurantBody other) {
    _$v = other as _$ConsumerApplyRestaurantBody;
  }

  @override
  void update(void Function(ConsumerApplyRestaurantBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerApplyRestaurantBody build() => _build();

  _$ConsumerApplyRestaurantBody _build() {
    _$ConsumerApplyRestaurantBody _$result;
    try {
      _$result = _$v ??
          _$ConsumerApplyRestaurantBody._(
            restaurantName: BuiltValueNullFieldError.checkNotNull(
                restaurantName,
                r'ConsumerApplyRestaurantBody',
                'restaurantName'),
            restaurantAddress: BuiltValueNullFieldError.checkNotNull(
                restaurantAddress,
                r'ConsumerApplyRestaurantBody',
                'restaurantAddress'),
            lat: _lat?.build(),
            lng: _lng?.build(),
            zoneId: BuiltValueNullFieldError.checkNotNull(
                zoneId, r'ConsumerApplyRestaurantBody', 'zoneId'),
            tax: BuiltValueNullFieldError.checkNotNull(
                tax, r'ConsumerApplyRestaurantBody', 'tax'),
            language: language,
            cloudflareId: cloudflareId,
            logo: logo,
            coverPhoto: coverPhoto,
            cuisines: _cuisines?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lat';
        _lat?.build();
        _$failedField = 'lng';
        _lng?.build();

        _$failedField = 'cuisines';
        _cuisines?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerApplyRestaurantBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

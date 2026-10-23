// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_restaurant_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerRestaurantSummary extends ConsumerRestaurantSummary {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? logo;
  @override
  final String? coverPhoto;
  @override
  final String? deliveryTime;
  @override
  final num? minimumOrder;
  @override
  final num? tax;
  @override
  final num? rating;
  @override
  final String? address;

  factory _$ConsumerRestaurantSummary(
          [void Function(ConsumerRestaurantSummaryBuilder)? updates]) =>
      (ConsumerRestaurantSummaryBuilder()..update(updates))._build();

  _$ConsumerRestaurantSummary._(
      {this.id,
      this.name,
      this.logo,
      this.coverPhoto,
      this.deliveryTime,
      this.minimumOrder,
      this.tax,
      this.rating,
      this.address})
      : super._();
  @override
  ConsumerRestaurantSummary rebuild(
          void Function(ConsumerRestaurantSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerRestaurantSummaryBuilder toBuilder() =>
      ConsumerRestaurantSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerRestaurantSummary &&
        id == other.id &&
        name == other.name &&
        logo == other.logo &&
        coverPhoto == other.coverPhoto &&
        deliveryTime == other.deliveryTime &&
        minimumOrder == other.minimumOrder &&
        tax == other.tax &&
        rating == other.rating &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, coverPhoto.hashCode);
    _$hash = $jc(_$hash, deliveryTime.hashCode);
    _$hash = $jc(_$hash, minimumOrder.hashCode);
    _$hash = $jc(_$hash, tax.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerRestaurantSummary')
          ..add('id', id)
          ..add('name', name)
          ..add('logo', logo)
          ..add('coverPhoto', coverPhoto)
          ..add('deliveryTime', deliveryTime)
          ..add('minimumOrder', minimumOrder)
          ..add('tax', tax)
          ..add('rating', rating)
          ..add('address', address))
        .toString();
  }
}

class ConsumerRestaurantSummaryBuilder
    implements
        Builder<ConsumerRestaurantSummary, ConsumerRestaurantSummaryBuilder> {
  _$ConsumerRestaurantSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _coverPhoto;
  String? get coverPhoto => _$this._coverPhoto;
  set coverPhoto(String? coverPhoto) => _$this._coverPhoto = coverPhoto;

  String? _deliveryTime;
  String? get deliveryTime => _$this._deliveryTime;
  set deliveryTime(String? deliveryTime) => _$this._deliveryTime = deliveryTime;

  num? _minimumOrder;
  num? get minimumOrder => _$this._minimumOrder;
  set minimumOrder(num? minimumOrder) => _$this._minimumOrder = minimumOrder;

  num? _tax;
  num? get tax => _$this._tax;
  set tax(num? tax) => _$this._tax = tax;

  num? _rating;
  num? get rating => _$this._rating;
  set rating(num? rating) => _$this._rating = rating;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  ConsumerRestaurantSummaryBuilder() {
    ConsumerRestaurantSummary._defaults(this);
  }

  ConsumerRestaurantSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _logo = $v.logo;
      _coverPhoto = $v.coverPhoto;
      _deliveryTime = $v.deliveryTime;
      _minimumOrder = $v.minimumOrder;
      _tax = $v.tax;
      _rating = $v.rating;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerRestaurantSummary other) {
    _$v = other as _$ConsumerRestaurantSummary;
  }

  @override
  void update(void Function(ConsumerRestaurantSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerRestaurantSummary build() => _build();

  _$ConsumerRestaurantSummary _build() {
    final _$result = _$v ??
        _$ConsumerRestaurantSummary._(
          id: id,
          name: name,
          logo: logo,
          coverPhoto: coverPhoto,
          deliveryTime: deliveryTime,
          minimumOrder: minimumOrder,
          tax: tax,
          rating: rating,
          address: address,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

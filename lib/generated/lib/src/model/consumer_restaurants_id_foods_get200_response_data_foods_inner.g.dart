// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_restaurants_id_foods_get200_response_data_foods_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner
    extends ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? categoryId;
  @override
  final String? restaurantId;
  @override
  final num? price;
  @override
  final num? discount;
  @override
  final bool? veg;
  @override
  final bool? status;
  @override
  final BuiltList<JsonObject?>? variations;
  @override
  final BuiltList<JsonObject?>? addOns;

  factory _$ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner(
          [void Function(
                  ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInnerBuilder)?
              updates]) =>
      (ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInnerBuilder()
            ..update(updates))
          ._build();

  _$ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner._(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.categoryId,
      this.restaurantId,
      this.price,
      this.discount,
      this.veg,
      this.status,
      this.variations,
      this.addOns})
      : super._();
  @override
  ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner rebuild(
          void Function(
                  ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInnerBuilder toBuilder() =>
      ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        categoryId == other.categoryId &&
        restaurantId == other.restaurantId &&
        price == other.price &&
        discount == other.discount &&
        veg == other.veg &&
        status == other.status &&
        variations == other.variations &&
        addOns == other.addOns;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, veg.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, variations.hashCode);
    _$hash = $jc(_$hash, addOns.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('categoryId', categoryId)
          ..add('restaurantId', restaurantId)
          ..add('price', price)
          ..add('discount', discount)
          ..add('veg', veg)
          ..add('status', status)
          ..add('variations', variations)
          ..add('addOns', addOns))
        .toString();
  }
}

class ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInnerBuilder
    implements
        Builder<ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner,
            ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInnerBuilder> {
  _$ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _categoryId;
  String? get categoryId => _$this._categoryId;
  set categoryId(String? categoryId) => _$this._categoryId = categoryId;

  String? _restaurantId;
  String? get restaurantId => _$this._restaurantId;
  set restaurantId(String? restaurantId) => _$this._restaurantId = restaurantId;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  num? _discount;
  num? get discount => _$this._discount;
  set discount(num? discount) => _$this._discount = discount;

  bool? _veg;
  bool? get veg => _$this._veg;
  set veg(bool? veg) => _$this._veg = veg;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<JsonObject?>? _variations;
  ListBuilder<JsonObject?> get variations =>
      _$this._variations ??= ListBuilder<JsonObject?>();
  set variations(ListBuilder<JsonObject?>? variations) =>
      _$this._variations = variations;

  ListBuilder<JsonObject?>? _addOns;
  ListBuilder<JsonObject?> get addOns =>
      _$this._addOns ??= ListBuilder<JsonObject?>();
  set addOns(ListBuilder<JsonObject?>? addOns) => _$this._addOns = addOns;

  ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInnerBuilder() {
    ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner._defaults(this);
  }

  ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _image = $v.image;
      _categoryId = $v.categoryId;
      _restaurantId = $v.restaurantId;
      _price = $v.price;
      _discount = $v.discount;
      _veg = $v.veg;
      _status = $v.status;
      _variations = $v.variations?.toBuilder();
      _addOns = $v.addOns?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner other) {
    _$v = other as _$ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner;
  }

  @override
  void update(
      void Function(
              ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner build() => _build();

  _$ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner _build() {
    _$ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner _$result;
    try {
      _$result = _$v ??
          _$ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner._(
            id: id,
            name: name,
            description: description,
            image: image,
            categoryId: categoryId,
            restaurantId: restaurantId,
            price: price,
            discount: discount,
            veg: veg,
            status: status,
            variations: _variations?.build(),
            addOns: _addOns?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'variations';
        _variations?.build();
        _$failedField = 'addOns';
        _addOns?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerRestaurantsIdFoodsGet200ResponseDataFoodsInner',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

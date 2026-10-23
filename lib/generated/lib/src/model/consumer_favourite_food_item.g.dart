// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_favourite_food_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerFavouriteFoodItem extends ConsumerFavouriteFoodItem {
  @override
  final String? id;
  @override
  final String? wishlistId;
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
  final String? restaurantName;
  @override
  final String? restaurantLogo;
  @override
  final String? restaurantAddress;
  @override
  final num? price;
  @override
  final num? priceAfterDiscount;
  @override
  final num? discount;
  @override
  final String? discountType;
  @override
  final num? avgRating;
  @override
  final int? ratingCount;
  @override
  final bool? veg;
  @override
  final bool? status;
  @override
  final bool? isFavourite;
  @override
  final BuiltList<JsonObject>? variations;
  @override
  final BuiltList<JsonObject>? addOns;

  factory _$ConsumerFavouriteFoodItem(
          [void Function(ConsumerFavouriteFoodItemBuilder)? updates]) =>
      (ConsumerFavouriteFoodItemBuilder()..update(updates))._build();

  _$ConsumerFavouriteFoodItem._(
      {this.id,
      this.wishlistId,
      this.name,
      this.description,
      this.image,
      this.categoryId,
      this.restaurantId,
      this.restaurantName,
      this.restaurantLogo,
      this.restaurantAddress,
      this.price,
      this.priceAfterDiscount,
      this.discount,
      this.discountType,
      this.avgRating,
      this.ratingCount,
      this.veg,
      this.status,
      this.isFavourite,
      this.variations,
      this.addOns})
      : super._();
  @override
  ConsumerFavouriteFoodItem rebuild(
          void Function(ConsumerFavouriteFoodItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerFavouriteFoodItemBuilder toBuilder() =>
      ConsumerFavouriteFoodItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerFavouriteFoodItem &&
        id == other.id &&
        wishlistId == other.wishlistId &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        categoryId == other.categoryId &&
        restaurantId == other.restaurantId &&
        restaurantName == other.restaurantName &&
        restaurantLogo == other.restaurantLogo &&
        restaurantAddress == other.restaurantAddress &&
        price == other.price &&
        priceAfterDiscount == other.priceAfterDiscount &&
        discount == other.discount &&
        discountType == other.discountType &&
        avgRating == other.avgRating &&
        ratingCount == other.ratingCount &&
        veg == other.veg &&
        status == other.status &&
        isFavourite == other.isFavourite &&
        variations == other.variations &&
        addOns == other.addOns;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, wishlistId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, restaurantName.hashCode);
    _$hash = $jc(_$hash, restaurantLogo.hashCode);
    _$hash = $jc(_$hash, restaurantAddress.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, priceAfterDiscount.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, discountType.hashCode);
    _$hash = $jc(_$hash, avgRating.hashCode);
    _$hash = $jc(_$hash, ratingCount.hashCode);
    _$hash = $jc(_$hash, veg.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isFavourite.hashCode);
    _$hash = $jc(_$hash, variations.hashCode);
    _$hash = $jc(_$hash, addOns.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerFavouriteFoodItem')
          ..add('id', id)
          ..add('wishlistId', wishlistId)
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('categoryId', categoryId)
          ..add('restaurantId', restaurantId)
          ..add('restaurantName', restaurantName)
          ..add('restaurantLogo', restaurantLogo)
          ..add('restaurantAddress', restaurantAddress)
          ..add('price', price)
          ..add('priceAfterDiscount', priceAfterDiscount)
          ..add('discount', discount)
          ..add('discountType', discountType)
          ..add('avgRating', avgRating)
          ..add('ratingCount', ratingCount)
          ..add('veg', veg)
          ..add('status', status)
          ..add('isFavourite', isFavourite)
          ..add('variations', variations)
          ..add('addOns', addOns))
        .toString();
  }
}

class ConsumerFavouriteFoodItemBuilder
    implements
        Builder<ConsumerFavouriteFoodItem, ConsumerFavouriteFoodItemBuilder> {
  _$ConsumerFavouriteFoodItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _wishlistId;
  String? get wishlistId => _$this._wishlistId;
  set wishlistId(String? wishlistId) => _$this._wishlistId = wishlistId;

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

  String? _restaurantName;
  String? get restaurantName => _$this._restaurantName;
  set restaurantName(String? restaurantName) =>
      _$this._restaurantName = restaurantName;

  String? _restaurantLogo;
  String? get restaurantLogo => _$this._restaurantLogo;
  set restaurantLogo(String? restaurantLogo) =>
      _$this._restaurantLogo = restaurantLogo;

  String? _restaurantAddress;
  String? get restaurantAddress => _$this._restaurantAddress;
  set restaurantAddress(String? restaurantAddress) =>
      _$this._restaurantAddress = restaurantAddress;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  num? _priceAfterDiscount;
  num? get priceAfterDiscount => _$this._priceAfterDiscount;
  set priceAfterDiscount(num? priceAfterDiscount) =>
      _$this._priceAfterDiscount = priceAfterDiscount;

  num? _discount;
  num? get discount => _$this._discount;
  set discount(num? discount) => _$this._discount = discount;

  String? _discountType;
  String? get discountType => _$this._discountType;
  set discountType(String? discountType) => _$this._discountType = discountType;

  num? _avgRating;
  num? get avgRating => _$this._avgRating;
  set avgRating(num? avgRating) => _$this._avgRating = avgRating;

  int? _ratingCount;
  int? get ratingCount => _$this._ratingCount;
  set ratingCount(int? ratingCount) => _$this._ratingCount = ratingCount;

  bool? _veg;
  bool? get veg => _$this._veg;
  set veg(bool? veg) => _$this._veg = veg;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  bool? _isFavourite;
  bool? get isFavourite => _$this._isFavourite;
  set isFavourite(bool? isFavourite) => _$this._isFavourite = isFavourite;

  ListBuilder<JsonObject>? _variations;
  ListBuilder<JsonObject> get variations =>
      _$this._variations ??= ListBuilder<JsonObject>();
  set variations(ListBuilder<JsonObject>? variations) =>
      _$this._variations = variations;

  ListBuilder<JsonObject>? _addOns;
  ListBuilder<JsonObject> get addOns =>
      _$this._addOns ??= ListBuilder<JsonObject>();
  set addOns(ListBuilder<JsonObject>? addOns) => _$this._addOns = addOns;

  ConsumerFavouriteFoodItemBuilder() {
    ConsumerFavouriteFoodItem._defaults(this);
  }

  ConsumerFavouriteFoodItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _wishlistId = $v.wishlistId;
      _name = $v.name;
      _description = $v.description;
      _image = $v.image;
      _categoryId = $v.categoryId;
      _restaurantId = $v.restaurantId;
      _restaurantName = $v.restaurantName;
      _restaurantLogo = $v.restaurantLogo;
      _restaurantAddress = $v.restaurantAddress;
      _price = $v.price;
      _priceAfterDiscount = $v.priceAfterDiscount;
      _discount = $v.discount;
      _discountType = $v.discountType;
      _avgRating = $v.avgRating;
      _ratingCount = $v.ratingCount;
      _veg = $v.veg;
      _status = $v.status;
      _isFavourite = $v.isFavourite;
      _variations = $v.variations?.toBuilder();
      _addOns = $v.addOns?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerFavouriteFoodItem other) {
    _$v = other as _$ConsumerFavouriteFoodItem;
  }

  @override
  void update(void Function(ConsumerFavouriteFoodItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerFavouriteFoodItem build() => _build();

  _$ConsumerFavouriteFoodItem _build() {
    _$ConsumerFavouriteFoodItem _$result;
    try {
      _$result = _$v ??
          _$ConsumerFavouriteFoodItem._(
            id: id,
            wishlistId: wishlistId,
            name: name,
            description: description,
            image: image,
            categoryId: categoryId,
            restaurantId: restaurantId,
            restaurantName: restaurantName,
            restaurantLogo: restaurantLogo,
            restaurantAddress: restaurantAddress,
            price: price,
            priceAfterDiscount: priceAfterDiscount,
            discount: discount,
            discountType: discountType,
            avgRating: avgRating,
            ratingCount: ratingCount,
            veg: veg,
            status: status,
            isFavourite: isFavourite,
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
            r'ConsumerFavouriteFoodItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

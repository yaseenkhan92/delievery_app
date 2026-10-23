// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_suggested_foods_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerSuggestedFoodsResponseDataInner
    extends ConsumerSuggestedFoodsResponseDataInner {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final num? price;
  @override
  final num? discount;
  @override
  final bool? veg;
  @override
  final String? restaurantId;

  factory _$ConsumerSuggestedFoodsResponseDataInner(
          [void Function(ConsumerSuggestedFoodsResponseDataInnerBuilder)?
              updates]) =>
      (ConsumerSuggestedFoodsResponseDataInnerBuilder()..update(updates))
          ._build();

  _$ConsumerSuggestedFoodsResponseDataInner._(
      {this.id,
      this.name,
      this.image,
      this.price,
      this.discount,
      this.veg,
      this.restaurantId})
      : super._();
  @override
  ConsumerSuggestedFoodsResponseDataInner rebuild(
          void Function(ConsumerSuggestedFoodsResponseDataInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerSuggestedFoodsResponseDataInnerBuilder toBuilder() =>
      ConsumerSuggestedFoodsResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerSuggestedFoodsResponseDataInner &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        price == other.price &&
        discount == other.discount &&
        veg == other.veg &&
        restaurantId == other.restaurantId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, veg.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ConsumerSuggestedFoodsResponseDataInner')
          ..add('id', id)
          ..add('name', name)
          ..add('image', image)
          ..add('price', price)
          ..add('discount', discount)
          ..add('veg', veg)
          ..add('restaurantId', restaurantId))
        .toString();
  }
}

class ConsumerSuggestedFoodsResponseDataInnerBuilder
    implements
        Builder<ConsumerSuggestedFoodsResponseDataInner,
            ConsumerSuggestedFoodsResponseDataInnerBuilder> {
  _$ConsumerSuggestedFoodsResponseDataInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  num? _discount;
  num? get discount => _$this._discount;
  set discount(num? discount) => _$this._discount = discount;

  bool? _veg;
  bool? get veg => _$this._veg;
  set veg(bool? veg) => _$this._veg = veg;

  String? _restaurantId;
  String? get restaurantId => _$this._restaurantId;
  set restaurantId(String? restaurantId) => _$this._restaurantId = restaurantId;

  ConsumerSuggestedFoodsResponseDataInnerBuilder() {
    ConsumerSuggestedFoodsResponseDataInner._defaults(this);
  }

  ConsumerSuggestedFoodsResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _image = $v.image;
      _price = $v.price;
      _discount = $v.discount;
      _veg = $v.veg;
      _restaurantId = $v.restaurantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerSuggestedFoodsResponseDataInner other) {
    _$v = other as _$ConsumerSuggestedFoodsResponseDataInner;
  }

  @override
  void update(
      void Function(ConsumerSuggestedFoodsResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerSuggestedFoodsResponseDataInner build() => _build();

  _$ConsumerSuggestedFoodsResponseDataInner _build() {
    final _$result = _$v ??
        _$ConsumerSuggestedFoodsResponseDataInner._(
          id: id,
          name: name,
          image: image,
          price: price,
          discount: discount,
          veg: veg,
          restaurantId: restaurantId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

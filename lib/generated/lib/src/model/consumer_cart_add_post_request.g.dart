// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_cart_add_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerCartAddPostRequest extends ConsumerCartAddPostRequest {
  @override
  final JsonObject? isGuest;
  @override
  final JsonObject? guestId;
  @override
  final JsonObject? itemId;
  @override
  final JsonObject? variations;
  @override
  final JsonObject? itemType;
  @override
  final JsonObject? price;
  @override
  final JsonObject? quantity;
  @override
  final JsonObject? addOnIds;
  @override
  final JsonObject? addOnQtys;
  @override
  final JsonObject? variationOptions;

  factory _$ConsumerCartAddPostRequest(
          [void Function(ConsumerCartAddPostRequestBuilder)? updates]) =>
      (ConsumerCartAddPostRequestBuilder()..update(updates))._build();

  _$ConsumerCartAddPostRequest._(
      {this.isGuest,
      this.guestId,
      this.itemId,
      this.variations,
      this.itemType,
      this.price,
      this.quantity,
      this.addOnIds,
      this.addOnQtys,
      this.variationOptions})
      : super._();
  @override
  ConsumerCartAddPostRequest rebuild(
          void Function(ConsumerCartAddPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerCartAddPostRequestBuilder toBuilder() =>
      ConsumerCartAddPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerCartAddPostRequest &&
        isGuest == other.isGuest &&
        guestId == other.guestId &&
        itemId == other.itemId &&
        variations == other.variations &&
        itemType == other.itemType &&
        price == other.price &&
        quantity == other.quantity &&
        addOnIds == other.addOnIds &&
        addOnQtys == other.addOnQtys &&
        variationOptions == other.variationOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isGuest.hashCode);
    _$hash = $jc(_$hash, guestId.hashCode);
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, variations.hashCode);
    _$hash = $jc(_$hash, itemType.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, addOnIds.hashCode);
    _$hash = $jc(_$hash, addOnQtys.hashCode);
    _$hash = $jc(_$hash, variationOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerCartAddPostRequest')
          ..add('isGuest', isGuest)
          ..add('guestId', guestId)
          ..add('itemId', itemId)
          ..add('variations', variations)
          ..add('itemType', itemType)
          ..add('price', price)
          ..add('quantity', quantity)
          ..add('addOnIds', addOnIds)
          ..add('addOnQtys', addOnQtys)
          ..add('variationOptions', variationOptions))
        .toString();
  }
}

class ConsumerCartAddPostRequestBuilder
    implements
        Builder<ConsumerCartAddPostRequest, ConsumerCartAddPostRequestBuilder> {
  _$ConsumerCartAddPostRequest? _$v;

  JsonObject? _isGuest;
  JsonObject? get isGuest => _$this._isGuest;
  set isGuest(JsonObject? isGuest) => _$this._isGuest = isGuest;

  JsonObject? _guestId;
  JsonObject? get guestId => _$this._guestId;
  set guestId(JsonObject? guestId) => _$this._guestId = guestId;

  JsonObject? _itemId;
  JsonObject? get itemId => _$this._itemId;
  set itemId(JsonObject? itemId) => _$this._itemId = itemId;

  JsonObject? _variations;
  JsonObject? get variations => _$this._variations;
  set variations(JsonObject? variations) => _$this._variations = variations;

  JsonObject? _itemType;
  JsonObject? get itemType => _$this._itemType;
  set itemType(JsonObject? itemType) => _$this._itemType = itemType;

  JsonObject? _price;
  JsonObject? get price => _$this._price;
  set price(JsonObject? price) => _$this._price = price;

  JsonObject? _quantity;
  JsonObject? get quantity => _$this._quantity;
  set quantity(JsonObject? quantity) => _$this._quantity = quantity;

  JsonObject? _addOnIds;
  JsonObject? get addOnIds => _$this._addOnIds;
  set addOnIds(JsonObject? addOnIds) => _$this._addOnIds = addOnIds;

  JsonObject? _addOnQtys;
  JsonObject? get addOnQtys => _$this._addOnQtys;
  set addOnQtys(JsonObject? addOnQtys) => _$this._addOnQtys = addOnQtys;

  JsonObject? _variationOptions;
  JsonObject? get variationOptions => _$this._variationOptions;
  set variationOptions(JsonObject? variationOptions) =>
      _$this._variationOptions = variationOptions;

  ConsumerCartAddPostRequestBuilder() {
    ConsumerCartAddPostRequest._defaults(this);
  }

  ConsumerCartAddPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isGuest = $v.isGuest;
      _guestId = $v.guestId;
      _itemId = $v.itemId;
      _variations = $v.variations;
      _itemType = $v.itemType;
      _price = $v.price;
      _quantity = $v.quantity;
      _addOnIds = $v.addOnIds;
      _addOnQtys = $v.addOnQtys;
      _variationOptions = $v.variationOptions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerCartAddPostRequest other) {
    _$v = other as _$ConsumerCartAddPostRequest;
  }

  @override
  void update(void Function(ConsumerCartAddPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerCartAddPostRequest build() => _build();

  _$ConsumerCartAddPostRequest _build() {
    final _$result = _$v ??
        _$ConsumerCartAddPostRequest._(
          isGuest: isGuest,
          guestId: guestId,
          itemId: itemId,
          variations: variations,
          itemType: itemType,
          price: price,
          quantity: quantity,
          addOnIds: addOnIds,
          addOnQtys: addOnQtys,
          variationOptions: variationOptions,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

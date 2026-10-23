// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_line_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlaceOrderLineItemItemTypeEnum _$placeOrderLineItemItemTypeEnum_food =
    const PlaceOrderLineItemItemTypeEnum._('food');
const PlaceOrderLineItemItemTypeEnum
    _$placeOrderLineItemItemTypeEnum_itemCampaign =
    const PlaceOrderLineItemItemTypeEnum._('itemCampaign');

PlaceOrderLineItemItemTypeEnum _$placeOrderLineItemItemTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'food':
      return _$placeOrderLineItemItemTypeEnum_food;
    case 'itemCampaign':
      return _$placeOrderLineItemItemTypeEnum_itemCampaign;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PlaceOrderLineItemItemTypeEnum>
    _$placeOrderLineItemItemTypeEnumValues = BuiltSet<
        PlaceOrderLineItemItemTypeEnum>(const <PlaceOrderLineItemItemTypeEnum>[
  _$placeOrderLineItemItemTypeEnum_food,
  _$placeOrderLineItemItemTypeEnum_itemCampaign,
]);

Serializer<PlaceOrderLineItemItemTypeEnum>
    _$placeOrderLineItemItemTypeEnumSerializer =
    _$PlaceOrderLineItemItemTypeEnumSerializer();

class _$PlaceOrderLineItemItemTypeEnumSerializer
    implements PrimitiveSerializer<PlaceOrderLineItemItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'food': 'Food',
    'itemCampaign': 'ItemCampaign',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Food': 'food',
    'ItemCampaign': 'itemCampaign',
  };

  @override
  final Iterable<Type> types = const <Type>[PlaceOrderLineItemItemTypeEnum];
  @override
  final String wireName = 'PlaceOrderLineItemItemTypeEnum';

  @override
  Object serialize(
          Serializers serializers, PlaceOrderLineItemItemTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlaceOrderLineItemItemTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlaceOrderLineItemItemTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PlaceOrderLineItem extends PlaceOrderLineItem {
  @override
  final num itemId;
  @override
  final PlaceOrderLineItemItemTypeEnum? itemType;
  @override
  final num? price;
  @override
  final int quantity;
  @override
  final BuiltList<num>? addOnIds;
  @override
  final BuiltList<num>? addOnQtys;
  @override
  final BuiltList<JsonObject>? variations;
  @override
  final BuiltList<JsonObject>? variationOptions;

  factory _$PlaceOrderLineItem(
          [void Function(PlaceOrderLineItemBuilder)? updates]) =>
      (PlaceOrderLineItemBuilder()..update(updates))._build();

  _$PlaceOrderLineItem._(
      {required this.itemId,
      this.itemType,
      this.price,
      required this.quantity,
      this.addOnIds,
      this.addOnQtys,
      this.variations,
      this.variationOptions})
      : super._();
  @override
  PlaceOrderLineItem rebuild(
          void Function(PlaceOrderLineItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceOrderLineItemBuilder toBuilder() =>
      PlaceOrderLineItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceOrderLineItem &&
        itemId == other.itemId &&
        itemType == other.itemType &&
        price == other.price &&
        quantity == other.quantity &&
        addOnIds == other.addOnIds &&
        addOnQtys == other.addOnQtys &&
        variations == other.variations &&
        variationOptions == other.variationOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, itemType.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, addOnIds.hashCode);
    _$hash = $jc(_$hash, addOnQtys.hashCode);
    _$hash = $jc(_$hash, variations.hashCode);
    _$hash = $jc(_$hash, variationOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceOrderLineItem')
          ..add('itemId', itemId)
          ..add('itemType', itemType)
          ..add('price', price)
          ..add('quantity', quantity)
          ..add('addOnIds', addOnIds)
          ..add('addOnQtys', addOnQtys)
          ..add('variations', variations)
          ..add('variationOptions', variationOptions))
        .toString();
  }
}

class PlaceOrderLineItemBuilder
    implements Builder<PlaceOrderLineItem, PlaceOrderLineItemBuilder> {
  _$PlaceOrderLineItem? _$v;

  num? _itemId;
  num? get itemId => _$this._itemId;
  set itemId(num? itemId) => _$this._itemId = itemId;

  PlaceOrderLineItemItemTypeEnum? _itemType;
  PlaceOrderLineItemItemTypeEnum? get itemType => _$this._itemType;
  set itemType(PlaceOrderLineItemItemTypeEnum? itemType) =>
      _$this._itemType = itemType;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  ListBuilder<num>? _addOnIds;
  ListBuilder<num> get addOnIds => _$this._addOnIds ??= ListBuilder<num>();
  set addOnIds(ListBuilder<num>? addOnIds) => _$this._addOnIds = addOnIds;

  ListBuilder<num>? _addOnQtys;
  ListBuilder<num> get addOnQtys => _$this._addOnQtys ??= ListBuilder<num>();
  set addOnQtys(ListBuilder<num>? addOnQtys) => _$this._addOnQtys = addOnQtys;

  ListBuilder<JsonObject>? _variations;
  ListBuilder<JsonObject> get variations =>
      _$this._variations ??= ListBuilder<JsonObject>();
  set variations(ListBuilder<JsonObject>? variations) =>
      _$this._variations = variations;

  ListBuilder<JsonObject>? _variationOptions;
  ListBuilder<JsonObject> get variationOptions =>
      _$this._variationOptions ??= ListBuilder<JsonObject>();
  set variationOptions(ListBuilder<JsonObject>? variationOptions) =>
      _$this._variationOptions = variationOptions;

  PlaceOrderLineItemBuilder() {
    PlaceOrderLineItem._defaults(this);
  }

  PlaceOrderLineItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemId = $v.itemId;
      _itemType = $v.itemType;
      _price = $v.price;
      _quantity = $v.quantity;
      _addOnIds = $v.addOnIds?.toBuilder();
      _addOnQtys = $v.addOnQtys?.toBuilder();
      _variations = $v.variations?.toBuilder();
      _variationOptions = $v.variationOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceOrderLineItem other) {
    _$v = other as _$PlaceOrderLineItem;
  }

  @override
  void update(void Function(PlaceOrderLineItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceOrderLineItem build() => _build();

  _$PlaceOrderLineItem _build() {
    _$PlaceOrderLineItem _$result;
    try {
      _$result = _$v ??
          _$PlaceOrderLineItem._(
            itemId: BuiltValueNullFieldError.checkNotNull(
                itemId, r'PlaceOrderLineItem', 'itemId'),
            itemType: itemType,
            price: price,
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'PlaceOrderLineItem', 'quantity'),
            addOnIds: _addOnIds?.build(),
            addOnQtys: _addOnQtys?.build(),
            variations: _variations?.build(),
            variationOptions: _variationOptions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addOnIds';
        _addOnIds?.build();
        _$failedField = 'addOnQtys';
        _addOnQtys?.build();
        _$failedField = 'variations';
        _variations?.build();
        _$failedField = 'variationOptions';
        _variationOptions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PlaceOrderLineItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_place_order_line_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsumerPlaceOrderLineItemItemTypeEnum
    _$consumerPlaceOrderLineItemItemTypeEnum_food =
    const ConsumerPlaceOrderLineItemItemTypeEnum._('food');
const ConsumerPlaceOrderLineItemItemTypeEnum
    _$consumerPlaceOrderLineItemItemTypeEnum_itemCampaign =
    const ConsumerPlaceOrderLineItemItemTypeEnum._('itemCampaign');

ConsumerPlaceOrderLineItemItemTypeEnum
    _$consumerPlaceOrderLineItemItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'food':
      return _$consumerPlaceOrderLineItemItemTypeEnum_food;
    case 'itemCampaign':
      return _$consumerPlaceOrderLineItemItemTypeEnum_itemCampaign;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerPlaceOrderLineItemItemTypeEnum>
    _$consumerPlaceOrderLineItemItemTypeEnumValues = BuiltSet<
        ConsumerPlaceOrderLineItemItemTypeEnum>(const <ConsumerPlaceOrderLineItemItemTypeEnum>[
  _$consumerPlaceOrderLineItemItemTypeEnum_food,
  _$consumerPlaceOrderLineItemItemTypeEnum_itemCampaign,
]);

Serializer<ConsumerPlaceOrderLineItemItemTypeEnum>
    _$consumerPlaceOrderLineItemItemTypeEnumSerializer =
    _$ConsumerPlaceOrderLineItemItemTypeEnumSerializer();

class _$ConsumerPlaceOrderLineItemItemTypeEnumSerializer
    implements PrimitiveSerializer<ConsumerPlaceOrderLineItemItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'food': 'Food',
    'itemCampaign': 'ItemCampaign',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Food': 'food',
    'ItemCampaign': 'itemCampaign',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ConsumerPlaceOrderLineItemItemTypeEnum
  ];
  @override
  final String wireName = 'ConsumerPlaceOrderLineItemItemTypeEnum';

  @override
  Object serialize(Serializers serializers,
          ConsumerPlaceOrderLineItemItemTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerPlaceOrderLineItemItemTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerPlaceOrderLineItemItemTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerPlaceOrderLineItem extends ConsumerPlaceOrderLineItem {
  @override
  final num itemId;
  @override
  final ConsumerPlaceOrderLineItemItemTypeEnum? itemType;
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

  factory _$ConsumerPlaceOrderLineItem(
          [void Function(ConsumerPlaceOrderLineItemBuilder)? updates]) =>
      (ConsumerPlaceOrderLineItemBuilder()..update(updates))._build();

  _$ConsumerPlaceOrderLineItem._(
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
  ConsumerPlaceOrderLineItem rebuild(
          void Function(ConsumerPlaceOrderLineItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerPlaceOrderLineItemBuilder toBuilder() =>
      ConsumerPlaceOrderLineItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerPlaceOrderLineItem &&
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
    return (newBuiltValueToStringHelper(r'ConsumerPlaceOrderLineItem')
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

class ConsumerPlaceOrderLineItemBuilder
    implements
        Builder<ConsumerPlaceOrderLineItem, ConsumerPlaceOrderLineItemBuilder> {
  _$ConsumerPlaceOrderLineItem? _$v;

  num? _itemId;
  num? get itemId => _$this._itemId;
  set itemId(num? itemId) => _$this._itemId = itemId;

  ConsumerPlaceOrderLineItemItemTypeEnum? _itemType;
  ConsumerPlaceOrderLineItemItemTypeEnum? get itemType => _$this._itemType;
  set itemType(ConsumerPlaceOrderLineItemItemTypeEnum? itemType) =>
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

  ConsumerPlaceOrderLineItemBuilder() {
    ConsumerPlaceOrderLineItem._defaults(this);
  }

  ConsumerPlaceOrderLineItemBuilder get _$this {
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
  void replace(ConsumerPlaceOrderLineItem other) {
    _$v = other as _$ConsumerPlaceOrderLineItem;
  }

  @override
  void update(void Function(ConsumerPlaceOrderLineItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerPlaceOrderLineItem build() => _build();

  _$ConsumerPlaceOrderLineItem _build() {
    _$ConsumerPlaceOrderLineItem _$result;
    try {
      _$result = _$v ??
          _$ConsumerPlaceOrderLineItem._(
            itemId: BuiltValueNullFieldError.checkNotNull(
                itemId, r'ConsumerPlaceOrderLineItem', 'itemId'),
            itemType: itemType,
            price: price,
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'ConsumerPlaceOrderLineItem', 'quantity'),
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
            r'ConsumerPlaceOrderLineItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

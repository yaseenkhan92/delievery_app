// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_cart_update_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerCartUpdatePutRequest extends ConsumerCartUpdatePutRequest {
  @override
  final JsonObject? cartId;
  @override
  final JsonObject? quantity;

  factory _$ConsumerCartUpdatePutRequest(
          [void Function(ConsumerCartUpdatePutRequestBuilder)? updates]) =>
      (ConsumerCartUpdatePutRequestBuilder()..update(updates))._build();

  _$ConsumerCartUpdatePutRequest._({this.cartId, this.quantity}) : super._();
  @override
  ConsumerCartUpdatePutRequest rebuild(
          void Function(ConsumerCartUpdatePutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerCartUpdatePutRequestBuilder toBuilder() =>
      ConsumerCartUpdatePutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerCartUpdatePutRequest &&
        cartId == other.cartId &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cartId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerCartUpdatePutRequest')
          ..add('cartId', cartId)
          ..add('quantity', quantity))
        .toString();
  }
}

class ConsumerCartUpdatePutRequestBuilder
    implements
        Builder<ConsumerCartUpdatePutRequest,
            ConsumerCartUpdatePutRequestBuilder> {
  _$ConsumerCartUpdatePutRequest? _$v;

  JsonObject? _cartId;
  JsonObject? get cartId => _$this._cartId;
  set cartId(JsonObject? cartId) => _$this._cartId = cartId;

  JsonObject? _quantity;
  JsonObject? get quantity => _$this._quantity;
  set quantity(JsonObject? quantity) => _$this._quantity = quantity;

  ConsumerCartUpdatePutRequestBuilder() {
    ConsumerCartUpdatePutRequest._defaults(this);
  }

  ConsumerCartUpdatePutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cartId = $v.cartId;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerCartUpdatePutRequest other) {
    _$v = other as _$ConsumerCartUpdatePutRequest;
  }

  @override
  void update(void Function(ConsumerCartUpdatePutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerCartUpdatePutRequest build() => _build();

  _$ConsumerCartUpdatePutRequest _build() {
    final _$result = _$v ??
        _$ConsumerCartUpdatePutRequest._(
          cartId: cartId,
          quantity: quantity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

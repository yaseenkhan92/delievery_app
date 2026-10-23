import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for ConsumerPlaceOrderLineItem
void main() {
  final instance = ConsumerPlaceOrderLineItemBuilder();
  // TODO add properties to the builder and call build()

  group(ConsumerPlaceOrderLineItem, () {
    // num itemId
    test('to test the property `itemId`', () async {
      // TODO
    });

    // String itemType (default value: 'Food')
    test('to test the property `itemType`', () async {
      // TODO
    });

    // Optional for buy-now; server uses menu price when loading from cart DB
    // num price
    test('to test the property `price`', () async {
      // TODO
    });

    // int quantity
    test('to test the property `quantity`', () async {
      // TODO
    });

    // BuiltList<num> addOnIds
    test('to test the property `addOnIds`', () async {
      // TODO
    });

    // BuiltList<num> addOnQtys
    test('to test the property `addOnQtys`', () async {
      // TODO
    });

    // BuiltList<JsonObject> variations
    test('to test the property `variations`', () async {
      // TODO
    });

    // BuiltList<JsonObject> variationOptions
    test('to test the property `variationOptions`', () async {
      // TODO
    });

  });
}

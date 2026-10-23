import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for PlaceOrderRequest
void main() {
  final instance = PlaceOrderRequestBuilder();
  // TODO add properties to the builder and call build()

  group(PlaceOrderRequest, () {
    // num restaurantId
    test('to test the property `restaurantId`', () async {
      // TODO
    });

    // String orderType (default value: 'delivery')
    test('to test the property `orderType`', () async {
      // TODO
    });

    // String paymentMethod (default value: 'cash_on_delivery')
    test('to test the property `paymentMethod`', () async {
      // TODO
    });

    // num orderAmount
    test('to test the property `orderAmount`', () async {
      // TODO
    });

    // num deliveryCharge
    test('to test the property `deliveryCharge`', () async {
      // TODO
    });

    // num totalTaxAmount
    test('to test the property `totalTaxAmount`', () async {
      // TODO
    });

    // Required when order_type is delivery
    // num distance
    test('to test the property `distance`', () async {
      // TODO
    });

    // Saved address from GET /consumer/addresses/list
    // num deliveryAddressId
    test('to test the property `deliveryAddressId`', () async {
      // TODO
    });

    // String address
    test('to test the property `address`', () async {
      // TODO
    });

    // PlaceOrderRequestLatitude latitude
    test('to test the property `latitude`', () async {
      // TODO
    });

    // PlaceOrderRequestLatitude longitude
    test('to test the property `longitude`', () async {
      // TODO
    });

    // String addressType
    test('to test the property `addressType`', () async {
      // TODO
    });

    // String floor
    test('to test the property `floor`', () async {
      // TODO
    });

    // String road
    test('to test the property `road`', () async {
      // TODO
    });

    // String house
    test('to test the property `house`', () async {
      // TODO
    });

    // String contactPersonName
    test('to test the property `contactPersonName`', () async {
      // TODO
    });

    // String contactPersonNumber
    test('to test the property `contactPersonNumber`', () async {
      // TODO
    });

    // String contactPersonEmail
    test('to test the property `contactPersonEmail`', () async {
      // TODO
    });

    // String orderNote
    test('to test the property `orderNote`', () async {
      // TODO
    });

    // String deliveryInstruction
    test('to test the property `deliveryInstruction`', () async {
      // TODO
    });

    // String unavailableItemNote
    test('to test the property `unavailableItemNote`', () async {
      // TODO
    });

    // String couponCode
    test('to test the property `couponCode`', () async {
      // TODO
    });

    // DateTime scheduleAt
    test('to test the property `scheduleAt`', () async {
      // TODO
    });

    // num dmTips
    test('to test the property `dmTips`', () async {
      // TODO
    });

    // bool cutlery
    test('to test the property `cutlery`', () async {
      // TODO
    });

    // num extraPackagingAmount
    test('to test the property `extraPackagingAmount`', () async {
      // TODO
    });

    // bool partialPayment
    test('to test the property `partialPayment`', () async {
      // TODO
    });

    // bool isBuyNow (default value: false)
    test('to test the property `isBuyNow`', () async {
      // TODO
    });

    // num cartId
    test('to test the property `cartId`', () async {
      // TODO
    });

    // BuiltList<PlaceOrderLineItem> cart
    test('to test the property `cart`', () async {
      // TODO
    });

    // BuiltList<PlaceOrderLineItem> items
    test('to test the property `items`', () async {
      // TODO
    });

    // Guest id when placing without login
    // num guestId
    test('to test the property `guestId`', () async {
      // TODO
    });

    // bool isGuest
    test('to test the property `isGuest`', () async {
      // TODO
    });

  });
}

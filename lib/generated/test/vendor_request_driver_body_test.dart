import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for VendorRequestDriverBody
void main() {
  final instance = VendorRequestDriverBodyBuilder();
  // TODO add properties to the builder and call build()

  group(VendorRequestDriverBody, () {
    // String customerName
    test('to test the property `customerName`', () async {
      // TODO
    });

    // String customerPhone
    test('to test the property `customerPhone`', () async {
      // TODO
    });

    // String address
    test('to test the property `address`', () async {
      // TODO
    });

    // Item subtotal (before delivery fee and tax)
    // num orderAmount
    test('to test the property `orderAmount`', () async {
      // TODO
    });

    // num deliveryFee
    test('to test the property `deliveryFee`', () async {
      // TODO
    });

    // `prepaid` sets payment_status=paid; order still uses COD method for commission logic
    // String paymentMethod
    test('to test the property `paymentMethod`', () async {
      // TODO
    });

    // Unique per dispatch attempt; stored as orders.manual_dispatch_key
    // String idempotencyKey
    test('to test the property `idempotencyKey`', () async {
      // TODO
    });

    // Optional reporting only; drivers match restaurant zone_id
    // int zoneId
    test('to test the property `zoneId`', () async {
      // TODO
    });

    // num latitude
    test('to test the property `latitude`', () async {
      // TODO
    });

    // num longitude
    test('to test the property `longitude`', () async {
      // TODO
    });

    // Tax percentage on item price (default 10)
    // num tax
    test('to test the property `tax`', () async {
      // TODO
    });

  });
}

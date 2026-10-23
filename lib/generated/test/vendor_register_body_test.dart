import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for VendorRegisterBody
void main() {
  final instance = VendorRegisterBodyBuilder();
  // TODO add properties to the builder and call build()

  group(VendorRegisterBody, () {
    // Owner first name
    // String fName
    test('to test the property `fName`', () async {
      // TODO
    });

    // Owner last name
    // String lName
    test('to test the property `lName`', () async {
      // TODO
    });

    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // String phone
    test('to test the property `phone`', () async {
      // TODO
    });

    // String password
    test('to test the property `password`', () async {
      // TODO
    });

    // String restaurantName
    test('to test the property `restaurantName`', () async {
      // TODO
    });

    // String restaurantAddress
    test('to test the property `restaurantAddress`', () async {
      // TODO
    });

    // VendorRegisterBodyLat lat
    test('to test the property `lat`', () async {
      // TODO
    });

    // VendorRegisterBodyLng lng
    test('to test the property `lng`', () async {
      // TODO
    });

    // From GET /consumer/config/zone-id or admin zones
    // int zoneId
    test('to test the property `zoneId`', () async {
      // TODO
    });

    // Vat / Tax (Figma required)
    // num tax
    test('to test the property `tax`', () async {
      // TODO
    });

    // Restaurant default language (English / Hebrew toggle)
    // String language (default value: 'en')
    test('to test the property `language`', () async {
      // TODO
    });

    // Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
    // String cloudflareId
    test('to test the property `cloudflareId`', () async {
      // TODO
    });

    // R2 path from POST /upload `path` (category restaurant)
    // String logo
    test('to test the property `logo`', () async {
      // TODO
    });

    // R2 path from POST /upload `path` (category restaurant)
    // String coverPhoto
    test('to test the property `coverPhoto`', () async {
      // TODO
    });

    // Cuisine ids from cuisines table
    // BuiltList<int> cuisines
    test('to test the property `cuisines`', () async {
      // TODO
    });

    // String minimumDeliveryTime
    test('to test the property `minimumDeliveryTime`', () async {
      // TODO
    });

    // String maximumDeliveryTime
    test('to test the property `maximumDeliveryTime`', () async {
      // TODO
    });

    // String deliveryTimeType
    test('to test the property `deliveryTimeType`', () async {
      // TODO
    });

  });
}

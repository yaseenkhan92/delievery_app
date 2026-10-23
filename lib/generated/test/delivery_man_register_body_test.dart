import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for DeliveryManRegisterBody
void main() {
  final instance = DeliveryManRegisterBodyBuilder();
  // TODO add properties to the builder and call build()

  group(DeliveryManRegisterBody, () {
    // Step 1 — first name
    // String fName
    test('to test the property `fName`', () async {
      // TODO
    });

    // Step 1 — last name
    // String lName
    test('to test the property `lName`', () async {
      // TODO
    });

    // Step 1 — with country code
    // String phone
    test('to test the property `phone`', () async {
      // TODO
    });

    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // String password
    test('to test the property `password`', () async {
      // TODO
    });

    // String confirmPassword
    test('to test the property `confirmPassword`', () async {
      // TODO
    });

    // Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
    // String cloudflareId
    test('to test the property `cloudflareId`', () async {
      // TODO
    });

    // Step 1 — portrait / identity photo path (POST /upload category=profile)
    // String image
    test('to test the property `image`', () async {
      // TODO
    });

    // DeliveryManRegisterBodyIdentityImage identityImage
    test('to test the property `identityImage`', () async {
      // TODO
    });

    // Step 2 — city / service zone (GET /consumer/zone/list)
    // int zoneId
    test('to test the property `zoneId`', () async {
      // TODO
    });

    // Alias for zone_id
    // int cityId
    test('to test the property `cityId`', () async {
      // TODO
    });

    // Step 2 — ID type
    // String identityType
    test('to test the property `identityType`', () async {
      // TODO
    });

    // Step 2 — ID number
    // String identityNumber
    test('to test the property `identityNumber`', () async {
      // TODO
    });

    // Step 2 — Select Delivery Type (use with or instead of earning)
    // String deliveryType
    test('to test the property `deliveryType`', () async {
      // TODO
    });

    // true = commission/freelance, false = salary
    // bool earning
    test('to test the property `earning`', () async {
      // TODO
    });

    // Optional vehicle type id
    // int vehicleId
    test('to test the property `vehicleId`', () async {
      // TODO
    });

    // String fName
    test('to test the property `fName`', () async {
      // TODO
    });

    // String lName
    test('to test the property `lName`', () async {
      // TODO
    });

  });
}

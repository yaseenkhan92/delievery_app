import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for AdminCreateZoneBody
void main() {
  final instance = AdminCreateZoneBodyBuilder();
  // TODO add properties to the builder and call build()

  group(AdminCreateZoneBody, () {
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // String displayName
    test('to test the property `displayName`', () async {
      // TODO
    });

    // bool status (default value: true)
    test('to test the property `status`', () async {
      // TODO
    });

    // Each pair is [longitude, latitude] — NOT [lat, lng]. After create, formated_coordinates should show lat ~33 and lng ~73 for Islamabad.
    // BuiltList<BuiltList<num>> coordinates
    test('to test the property `coordinates`', () async {
      // TODO
    });

    // num perKmShippingCharge
    test('to test the property `perKmShippingCharge`', () async {
      // TODO
    });

    // num minimumShippingCharge
    test('to test the property `minimumShippingCharge`', () async {
      // TODO
    });

    // num maximumShippingCharge
    test('to test the property `maximumShippingCharge`', () async {
      // TODO
    });

    // num maxCodOrderAmount
    test('to test the property `maxCodOrderAmount`', () async {
      // TODO
    });

  });
}

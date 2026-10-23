import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for ConsumerGuestSessionData
void main() {
  final instance = ConsumerGuestSessionDataBuilder();
  // TODO add properties to the builder and call build()

  group(ConsumerGuestSessionData, () {
    // Guest primary key — save locally; send on login/social sign-in to merge cart
    // String guestId
    test('to test the property `guestId`', () async {
      // TODO
    });

    // Guest session JWT (`role: guest`). Use as Bearer on cart APIs until customer logs in
    // String token
    test('to test the property `token`', () async {
      // TODO
    });

  });
}

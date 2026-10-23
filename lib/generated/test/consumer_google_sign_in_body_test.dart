import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for ConsumerGoogleSignInBody
void main() {
  final instance = ConsumerGoogleSignInBodyBuilder();
  // TODO add properties to the builder and call build()

  group(ConsumerGoogleSignInBody, () {
    // Google id token from mobile/web SDK (default)
    // String token
    test('to test the property `token`', () async {
      // TODO
    });

    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // Stable Google user id (sub)
    // String uniqueId
    test('to test the property `uniqueId`', () async {
      // TODO
    });

    // ConsumerGoogleSignInBodyAccessToken accessToken
    test('to test the property `accessToken`', () async {
      // TODO
    });

    // From POST `/consumer/guest/request` (`guest_id` or `data.guest_id`). Merges guest cart when customer JWT is issued
    // int guestId
    test('to test the property `guestId`', () async {
      // TODO
    });

    // String verified (default value: 'default')
    test('to test the property `verified`', () async {
      // TODO
    });

  });
}

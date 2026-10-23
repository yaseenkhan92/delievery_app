import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for ConsumerLoginBody
void main() {
  final instance = ConsumerLoginBodyBuilder();
  // TODO add properties to the builder and call build()

  group(ConsumerLoginBody, () {
    // String loginType
    test('to test the property `loginType`', () async {
      // TODO
    });

    // Required when login_type=manual
    // String fieldType
    test('to test the property `fieldType`', () async {
      // TODO
    });

    // Required when login_type=manual
    // String emailOrPhone
    test('to test the property `emailOrPhone`', () async {
      // TODO
    });

    // Required when login_type=manual
    // String password
    test('to test the property `password`', () async {
      // TODO
    });

    // Google id token or access token when login_type=social
    // String token
    test('to test the property `token`', () async {
      // TODO
    });

    // Google user id (sub) when login_type=social
    // String uniqueId
    test('to test the property `uniqueId`', () async {
      // TODO
    });

    // Required when login_type=social
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // Required when login_type=social (only google implemented)
    // String medium
    test('to test the property `medium`', () async {
      // TODO
    });

    // ConsumerLoginBodyAccessToken accessToken
    test('to test the property `accessToken`', () async {
      // TODO
    });

    // Social account linking mode (legacy PHP)
    // String verified (default value: 'default')
    test('to test the property `verified`', () async {
      // TODO
    });

    // From POST `/consumer/guest/request` — merges guest cart after successful login
    // int guestId
    test('to test the property `guestId`', () async {
      // TODO
    });

  });
}

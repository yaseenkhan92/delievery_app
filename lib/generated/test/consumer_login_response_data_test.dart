import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for ConsumerLoginResponseData
void main() {
  final instance = ConsumerLoginResponseDataBuilder();
  // TODO add properties to the builder and call build()

  group(ConsumerLoginResponseData, () {
    // JWT when is_personal_info=1; null until profile has name
    // String token
    test('to test the property `token`', () async {
      // TODO
    });

    // int isPhoneVerified
    test('to test the property `isPhoneVerified`', () async {
      // TODO
    });

    // int isEmailVerified
    test('to test the property `isEmailVerified`', () async {
      // TODO
    });

    // String loginType
    test('to test the property `loginType`', () async {
      // TODO
    });

    // 1 if user has f_name (full JWT issued)
    // int isPersonalInfo
    test('to test the property `isPersonalInfo`', () async {
      // TODO
    });

    // ConsumerSocialLoginExistUser isExistUser
    test('to test the property `isExistUser`', () async {
      // TODO
    });

    // String email
    test('to test the property `email`', () async {
      // TODO
    });

  });
}

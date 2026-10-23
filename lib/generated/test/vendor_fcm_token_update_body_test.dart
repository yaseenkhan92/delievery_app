import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for VendorFcmTokenUpdateBody
void main() {
  final instance = VendorFcmTokenUpdateBodyBuilder();
  // TODO add properties to the builder and call build()

  group(VendorFcmTokenUpdateBody, () {
    // Firebase Cloud Messaging device token
    // String fcmToken
    test('to test the property `fcmToken`', () async {
      // TODO
    });

    // mobile → vendors.firebase_token (POS/app); web → vendors.fcm_token_web (browser panel)
    // String platform (default value: 'mobile')
    test('to test the property `platform`', () async {
      // TODO
    });

  });
}

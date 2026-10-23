import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for StorageApi
void main() {
  final instance = Openapi().getStorageApi();

  group(StorageApi, () {
    // Prepare R2 upload prefix before partner signup
    //
    // Public. Call **before** uploading registration images and **before** vendor/driver register or consumer apply. Returns a temporary `cloudflareId` (not a logged-in user). Pass the same id to `POST /upload` and to register/apply as `cloudflare_id`.
    //
    //Future<RegistrationInitResponse> storageRegistrationInitPost(RegistrationInitBody registrationInitBody) async
    test('test storageRegistrationInitPost', () async {
      // TODO
    });

  });
}

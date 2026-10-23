import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UploadApi
void main() {
  final instance = Openapi().getUploadApi();

  group(UploadApi, () {
    // Upload file to Cloudflare R2
    //
    // Multipart upload. **Registration (recommended):** set `role`, `cloudflare_id` (from registration-init), and `category` (`restaurant` | `identity` | `profile` | `assets`). Use response `path` on register/apply. **Legacy:** `subfolder` only (defaults to `assets/`).
    //
    //Future<UploadSuccessResponse> uploadPost({ UploadPostRequest uploadPostRequest }) async
    test('test uploadPost', () async {
      // TODO
    });

    // Upload file to Cloudflare R2
    //
    // Multipart upload. **Registration (recommended):** set `role`, `cloudflare_id` (from registration-init), and `category` (`restaurant` | `identity` | `profile` | `assets`). Use response `path` on register/apply. **Legacy:** `subfolder` only (defaults to `assets/`).
    //
    //Future<UploadSuccessResponse> uploadPost_0({ UploadPostRequest uploadPostRequest }) async
    test('test uploadPost_0', () async {
      // TODO
    });

  });
}

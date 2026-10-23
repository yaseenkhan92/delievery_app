import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsumerProfileApi
void main() {
  final instance = Openapi().getConsumerProfileApi();

  group(ConsumerProfileApi, () {
    // Delete account
    //
    // Removes user data. Blocked while orders are in progress.
    //
    //Future<ApiResponse> consumerDeleteAccountDelete(String authorization) async
    test('test consumerDeleteAccountDelete', () async {
      // TODO
    });

    // Suggested foods in zone
    //
    // Up to 5 items; filters by POST /consumer/update-interest when set. Requires query `zone_id`.
    //
    //Future<ConsumerSuggestedFoodsResponse> consumerSuggestedFoodsGet(String authorization, int zoneId) async
    test('test consumerSuggestedFoodsGet', () async {
      // TODO
    });

    // Update FCM token
    //
    // Save device push token (`cm_firebase_token`).
    //
    //Future<ApiResponse> consumerUpdateFirebaseTokenPut(String authorization, ConsumerUpdateFirebaseTokenPutRequest consumerUpdateFirebaseTokenPutRequest) async
    test('test consumerUpdateFirebaseTokenPut', () async {
      // TODO
    });

    // Save food category interests
    //
    // Onboarding preferences; used by GET /consumer/suggested-foods.
    //
    //Future<ApiResponse> consumerUpdateInterestPost(String authorization, ConsumerUpdateInterestPostRequest consumerUpdateInterestPostRequest) async
    test('test consumerUpdateInterestPost', () async {
      // TODO
    });

    // Update profile
    //
    // Update name, email, phone, image, language, optional `zone_id`. Password: PUT /consumer/password/change or forgot flow.
    //
    //Future<ConsumerProfileUpdateResponse> consumerUpdateProfilePut(String authorization, ConsumerUpdateProfileBody consumerUpdateProfileBody) async
    test('test consumerUpdateProfilePut', () async {
      // TODO
    });

    // Save delivery zone on user
    //
    // After GET /consumer/config/zone-id, persist zone on account so GET /consumer/whoami returns `zone_id`. Body or query `zone_id` (recommended).
    //
    //Future<ApiResponse> consumerUpdateZonePut(String authorization, { int zoneId, ConsumerUpdateZonePutRequest consumerUpdateZonePutRequest }) async
    test('test consumerUpdateZonePut', () async {
      // TODO
    });

    // Get logged-in profile
    //
    // Returns wallet, loyalty, `zone_id`, interests, order stats. Set zone via PUT /consumer/update-zone or `zone_id` on PUT /consumer/update-profile.
    //
    //Future<ConsumerProfileResponse> consumerWhoamiGet(String authorization) async
    test('test consumerWhoamiGet', () async {
      // TODO
    });

  });
}

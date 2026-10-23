import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsumerCartApi
void main() {
  final instance = Openapi().getConsumerCartApi();

  group(ConsumerCartApi, () {
    // Add to cart
    //
    // Same auth as GET `/consumer/cart/`. With **guest Bearer token**, set `is_guest: true` in body or omit — server infers guest from JWT. Legacy: `is_guest: true` and `guest_id` without Bearer.
    //
    //Future<ApiResponse> consumerCartAddPost({ String authorization, ConsumerCartAddPostRequest consumerCartAddPostRequest }) async
    test('test consumerCartAddPost', () async {
      // TODO
    });

    // 
    //
    //Future<ConsumerCartClearUserIdDelete200Response> consumerCartClearUserIdDelete(String userId, { String authorization, String isGuest }) async
    test('test consumerCartClearUserIdDelete', () async {
      // TODO
    });

    // Get cart
    //
    // **Customer:** `Authorization: Bearer <customer JWT>` from login.  **Guest (preferred):** `Authorization: Bearer <guest JWT>` from POST `/consumer/guest/request` — no extra query params.  **Guest (legacy):** `is_guest=true` and `guest_id=<id>` with optional Bearer bypass via middleware.
    //
    //Future<ApiResponse> consumerCartGet({ String authorization, String isGuest, int guestId }) async
    test('test consumerCartGet', () async {
      // TODO
    });

    // Get cart
    //
    // **Customer:** `Authorization: Bearer <customer JWT>` from login.  **Guest (preferred):** `Authorization: Bearer <guest JWT>` from POST `/consumer/guest/request` — no extra query params.  **Guest (legacy):** `is_guest=true` and `guest_id=<id>` with optional Bearer bypass via middleware.
    //
    //Future<ApiResponse> consumerCartGet_0({ String authorization, String isGuest, int guestId }) async
    test('test consumerCartGet_0', () async {
      // TODO
    });

    // 
    //
    //Future<ApiResponse> consumerCartRemoveItemIdDelete(String id, { String authorization }) async
    test('test consumerCartRemoveItemIdDelete', () async {
      // TODO
    });

    // 
    //
    //Future<ApiResponse> consumerCartUpdatePut({ String authorization, ConsumerCartUpdatePutRequest consumerCartUpdatePutRequest }) async
    test('test consumerCartUpdatePut', () async {
      // TODO
    });

  });
}

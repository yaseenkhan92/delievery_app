import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsumerAddressesApi
void main() {
  final instance = Openapi().getConsumerAddressesApi();

  group(ConsumerAddressesApi, () {
    // List saved delivery addresses for the logged-in customer (Home / Work / Other from checkout).
    //
    //Future<ConsumerAddressListResponse> consumerAddressesGet(String authorization, { int limit, int offset }) async
    test('test consumerAddressesGet', () async {
      // TODO
    });

    // List saved delivery addresses for the logged-in customer (Home / Work / Other from checkout).
    //
    //Future<ConsumerAddressListResponse> consumerAddressesGet_0(String authorization, { int limit, int offset }) async
    test('test consumerAddressesGet_0', () async {
      // TODO
    });

    // Delete a saved address owned by the current user.
    //
    //Future<ConsumerAddressesIdDelete200Response> consumerAddressesIdDelete(String authorization, int id) async
    test('test consumerAddressesIdDelete', () async {
      // TODO
    });

    // Update a saved address owned by the current user.
    //
    //Future<ConsumerAddressUpdateResponse> consumerAddressesIdPut(String authorization, int id, ConsumerAddressBody consumerAddressBody) async
    test('test consumerAddressesIdPut', () async {
      // TODO
    });

    // Save a new delivery address (map pin, floor, label). **Phase 1:** send `zone_id` from GET /consumer/config/zone-id plus the same `latitude`/`longitude` as the map pin; server validates the pin is in that zone, else resolves from coordinates.
    //
    //Future<ApiResponse> consumerAddressesPost(String authorization, ConsumerAddressBody consumerAddressBody) async
    test('test consumerAddressesPost', () async {
      // TODO
    });

    // Save a new delivery address (map pin, floor, label). **Phase 1:** send `zone_id` from GET /consumer/config/zone-id plus the same `latitude`/`longitude` as the map pin; server validates the pin is in that zone, else resolves from coordinates.
    //
    //Future<ConsumerAddressCreateResponse> consumerAddressesPost_0(String authorization, ConsumerAddressBody consumerAddressBody) async
    test('test consumerAddressesPost_0', () async {
      // TODO
    });

  });
}

import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsumerDiscoverApi
void main() {
  final instance = Openapi().getConsumerDiscoverApi();

  group(ConsumerDiscoverApi, () {
    // What's on your mind (home categories)
    //
    // **What's on your mind** — top-level marketplace food categories for the customer home screen (legacy PHP `GET /api/v1/categories/`). Uses admin categories with `position=0` (not vendor menu categories). Requires **zone_id** query (same as home slider / discover). Optional **name** filter. Each tile includes zone-scoped **products_count** and **order_count**; parent categories may include **childes**.
    //
    //Future<ApiResponse> consumerCategoriesGet(ConsumerRestaurantsPopularGetZoneIdParameter zoneId, { String name }) async
    test('test consumerCategoriesGet', () async {
      // TODO
    });

    // Home banners (slider)
    //
    // Home banners for the customer zone(s). Same query **zone_id** as discover restaurant lists (e.g. ?zone_id=2).
    //
    //Future<ApiResponse> consumerHomeSliderGet(ConsumerRestaurantsPopularGetZoneIdParameter zoneId) async
    test('test consumerHomeSliderGet', () async {
      // TODO
    });

    // Active restaurants assigned to the customer zone(s). **Flow:** 1) GET /consumer/config/zone-id?lat=&lng= 2) pass returned id(s) as query **zone_id** (e.g. ?zone_id=2). Public; no Bearer token.
    //
    //Future<ConsumerRestaurantListResponse> consumerRestaurantsAllGet(ConsumerRestaurantsPopularGetZoneIdParameter zoneId, { String page, String limit, String name, String veg, String nonVeg, String topRated, String discounted }) async
    test('test consumerRestaurantsAllGet', () async {
      // TODO
    });

    // 
    //
    //Future<ConsumerRestaurantsIdFoodsGet200Response> consumerRestaurantsIdFoodsGet(String id, { String page, String limit }) async
    test('test consumerRestaurantsIdFoodsGet', () async {
      // TODO
    });

    // **All Restaurants near you** / Find Nearby map flow. Requires customer **latitude** and **longitude** (query or headers) plus **zone_id**. Returns active restaurants in the zone with valid coordinates, sorted **open first**, then **nearest** (legacy PHP `get-restaurants` + `nearest_first`).
    //
    //Future<ConsumerRestaurantListResponse> consumerRestaurantsNearbyGet(ConsumerRestaurantsPopularGetZoneIdParameter zoneId, String latitude, String longitude, { String page, String limit, String name, String type, String veg, String nonVeg, String topRated }) async
    test('test consumerRestaurantsNearbyGet', () async {
      // TODO
    });

    // Popular restaurants for the home screen horizontal list. Same zone flow as GET /consumer/restaurants/all. Sorted **open first**, then **order_count** (legacy PHP `restaurants/popular`). Optional **latitude** / **longitude** (query or headers) for distance on cards.
    //
    //Future<ConsumerRestaurantListResponse> consumerRestaurantsPopularGet(ConsumerRestaurantsPopularGetZoneIdParameter zoneId, { String latitude, String longitude, String page, String limit, String type, String veg, String nonVeg, String topRated }) async
    test('test consumerRestaurantsPopularGet', () async {
      // TODO
    });

    // 
    //
    //Future<ConsumerRestaurantsSpecficIdGet200Response> consumerRestaurantsSpecficIdGet(String id) async
    test('test consumerRestaurantsSpecficIdGet', () async {
      // TODO
    });

  });
}

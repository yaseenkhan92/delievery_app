import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsumerFavouritesApi
void main() {
  final instance = Openapi().getConsumerFavouritesApi();

  group(ConsumerFavouritesApi, () {
    // Add a food OR restaurant to favourites (not both).
    //
    //Future<ConsumerFavouriteActionResponse> consumerFavouritesAddPost(String authorization, ConsumerFavouriteBody consumerFavouriteBody) async
    test('test consumerFavouritesAddPost', () async {
      // TODO
    });

    // Favorites screen: Foods tab (`type=food`) and Restaurants tab (`type=restaurant`). Optional `search` matches item/restaurant name. Send latitude/longitude headers for distance badge on restaurant cards.
    //
    //Future<ConsumerFavouriteListResponse> consumerFavouritesListGet(String authorization, ConsumerRestaurantsPopularGetZoneIdParameter zoneId, { String type, String search, String latitude, String longitude }) async
    test('test consumerFavouritesListGet', () async {
      // TODO
    });

    // Remove a food OR restaurant from favourites (query or JSON body).
    //
    //Future<ConsumerFavouriteActionResponse> consumerFavouritesRemoveDelete(String authorization, { int foodId, int restaurantId }) async
    test('test consumerFavouritesRemoveDelete', () async {
      // TODO
    });

  });
}

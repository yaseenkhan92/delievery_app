import 'package:deleivery_app/api/apiget.dart';
import 'package:deleivery_app/api/baseapi.dart'; // ApiException
import 'package:flutter/foundation.dart';

/// GET /consumer/restaurants/all?zone_id=..   (public, no token)
///
/// Flow from the API docs:
///   1) GET /consumer/config/zone-id?lat=&lng=   -> zone id(s)
///   2) pass them as zone_id here. One id (2), a JSON array string ([1,2])
///      or comma-separated (1,2) are all accepted.
class RestaurantApi {
  RestaurantApi._();

  /// Returns every active restaurant assigned to those zones.
  ///   []    -> no restaurants (show "service unavailable")
  ///   null  -> the server answered but no list was found in the reply
  ///            (unknown shape: don't block the user)
  static Future<List<Map<String, dynamic>>?> fetchAll({
    required List<int> zoneIds,
  }) async {
    if (zoneIds.isEmpty) return <Map<String, dynamic>>[];

    try {
      final body = await apiGet(
        '/consumer/restaurants/all',
        query: {'zone_id': zoneIds.join(',')}, // "2" or "1,2"
      );

      final list = _findList(body, 0);

      if (list == null) {
        debugPrint('RestaurantApi: could not find a list in the response');
        return null;
      }

      final restaurants = list
          .whereType<Map>()
          .map((e) => Map<String, dynamic>.from(e))
          .toList();

      if (kDebugMode) {
        debugPrint(
          'RestaurantApi: zone_id=${zoneIds.join(',')} '
          'restaurants=${restaurants.length}',
        );
        if (restaurants.isNotEmpty) {
          debugPrint(
            'RestaurantApi: first item keys = ${restaurants.first.keys}',
          );
        }
      }

      return restaurants;
    } on ApiException catch (e) {
      if (e.statusCode == 404) return <Map<String, dynamic>>[];
      rethrow;
    }
  }

  /// Finds the restaurant list whether it is the body itself,
  /// data: [...], or data: { restaurants: [...] }.
  static List? _findList(dynamic node, int depth) {
    if (node is List) return node;
    if (node is Map && depth < 4) {
      for (final key in const [
        'restaurants',
        'data',
        'list',
        'items',
        'results',
      ]) {
        if (node.containsKey(key)) {
          final found = _findList(node[key], depth + 1);
          if (found != null) return found;
        }
      }
    }
    return null;
  }
}

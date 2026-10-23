import 'package:deleivery_app/api/apiget.dart';
import 'package:deleivery_app/api/baseapi.dart'; // ApiException
import 'package:flutter/foundation.dart';

/// GET /consumer/config/zone-id?lat=..&lng=..   (no auth needed)
/// "Call on app open and when the user changes location."
///
/// The server answers like this:
///   {"zone_id":"[2]","zone_data":[{"id":2,"name":"Shewa Adda", ...}]}
/// Note: zone_id is the TEXT "[2]" (not the number 2), so it must be parsed.
class ZoneApi {
  ZoneApi._();

  /// Returns the active zone ids for this location.
  /// An empty list means "we don't serve this location".
  static Future<List<int>> resolveZoneIds({
    required double lat,
    required double lng,
  }) async {
    try {
      final body = await apiGet(
        '/consumer/config/zone-id',
        query: {'lat': lat, 'lng': lng},
      );

      // Look inside "data" first (if there is one), then at the top level.
      final data = body is Map ? body['data'] : null;
      var ids = _extractZoneIds(data);
      if (ids.isEmpty) ids = _extractZoneIds(body);

      if (kDebugMode) {
        debugPrint('ZoneApi: lat=$lat lng=$lng');
        debugPrint('ZoneApi: parsed zone ids = $ids');
      }

      return ids;
    } on ApiException catch (e) {
      // Some backends answer 404 when no zone covers the location.
      if (e.statusCode == 404) return <int>[];
      rethrow;
    }
  }

  /// Understands: zone_id: 2, zone_id: "[2]", zone_id: "2,3",
  /// zone_id: [2, 3], zone_data: [{id: 2}], zones: [...], data: {...}.
  static List<int> _extractZoneIds(dynamic root) {
    final ids = <int>[];

    void addNumber(int? n) {
      if (n != null && n > 0 && !ids.contains(n)) ids.add(n);
    }

    void add(dynamic x) {
      if (x is int) {
        addNumber(x);
      } else if (x is num) {
        addNumber(x.toInt());
      } else if (x is String) {
        // "2", "2,3" or "[2]" -> pick out every number
        for (final m in RegExp(r'\d+').allMatches(x)) {
          addNumber(int.tryParse(m.group(0)!));
        }
      }
    }

    void walk(dynamic node, int depth) {
      if (node == null || depth > 4) return;

      if (node is List) {
        for (final e in node) {
          if (e is Map) {
            add(e['zone_id'] ?? e['zoneId'] ?? e['id']);
          } else {
            add(e);
          }
        }
      } else if (node is Map) {
        for (final key in const [
          'zone_id',
          'zoneId',
          'zone_ids',
          'zoneIds',
          'zone_data',
          'zones',
          'data',
        ]) {
          if (node.containsKey(key)) walk(node[key], depth + 1);
        }
      } else {
        add(node); // a single number or numeric string
      }
    }

    walk(root, 0);
    return ids;
  }
}

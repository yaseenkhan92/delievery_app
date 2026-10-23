import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsumerZonesApi
void main() {
  final instance = Openapi().getConsumerZonesApi();

  group(ConsumerZonesApi, () {
    // Resolve active zone(s) at lat/lng (legacy PHP GET /config/get-zone-id). Call on app open and when the user changes location. **Query:** WGS84 `lat` (e.g. 31.75 Israel), `lng` (e.g. 34.75). No auth.
    //
    //Future<ConsumerGetZoneIdResponse> consumerConfigZoneIdGet(num lat, num lng) async
    test('test consumerConfigZoneIdGet', () async {
      // TODO
    });

    // True if lat/lng is inside zone_id polygon (legacy zone/check). Use before checkout if location may have changed.
    //
    //Future<bool> consumerZoneCheckGet(num lat, num lng, int zoneId) async
    test('test consumerZoneCheckGet', () async {
      // TODO
    });

    // Active zones with map polygons (legacy zone/list). Optional for drawing service areas; catalog uses zone-id + query zone_id.
    //
    //Future<BuiltList<ConsumerZoneMapItem>> consumerZoneListGet() async
    test('test consumerZoneListGet', () async {
      // TODO
    });

  });
}

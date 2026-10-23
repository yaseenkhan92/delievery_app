import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsumerNotificationsApi
void main() {
  final instance = Openapi().getConsumerNotificationsApi();

  group(ConsumerNotificationsApi, () {
    // Notification inbox (paginated)
    //
    // Admin broadcasts for customer zones + order pushes. **Legacy:** send header `zoneId` as JSON array of zone ids; falls back to query `zone_id` or saved user zone. Default window **15 days** (broadcast filter uses `updated_at`).
    //
    //Future<NotificationInboxListResponse> consumerNotificationsGet(String authorization, { String zoneId, int zoneId2, int limit, int offset, int page, int days }) async
    test('test consumerNotificationsGet', () async {
      // TODO
    });

    // Delete one inbox item
    //
    // 
    //
    //Future<NotificationDeleteResponse> consumerNotificationsIdDelete(String authorization, String id) async
    test('test consumerNotificationsIdDelete', () async {
      // TODO
    });

  });
}

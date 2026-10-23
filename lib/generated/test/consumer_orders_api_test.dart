import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsumerOrdersApi
void main() {
  final instance = Openapi().getConsumerOrdersApi();

  group(ConsumerOrdersApi, () {
    // Cancel order while status is pending, failed, or already canceled. Sets canceled_by=customer and emits realtime order_status_changed. Legacy PHP: PUT customer/order/cancel.
    //
    //Future<ConsumerOrderCancelResponse> consumerOrderCancelPut(ConsumerOrderCancelBody consumerOrderCancelBody, { String authorization }) async
    test('test consumerOrderCancelPut', () async {
      // TODO
    });

    // Figma Orders — History tab. Completed/canceled/refunded orders (PHP order/list). offset is page number (1-based), same as legacy API.
    //
    //Future<ConsumerOrderListResponse> consumerOrderHistoryGet({ String authorization, int limit, int offset, int page, int guestId, String search }) async
    test('test consumerOrderHistoryGet', () async {
      // TODO
    });

    // Place a marketplace order (Figma checkout / legacy PHP parity). Default: line items loaded from server `carts` for the authenticated user or guest (`guest_id`). Buy-now: set `is_buy_now` true and send `cart` or `items`. Delivery requires `distance` plus either `delivery_address_id` (from GET /consumer/addresses) or inline `address`, `latitude`, `longitude`. Totals (tax, delivery, platform fee, tips) are calculated server-side. Triggers vendor FCM for Web Panel & POS.
    //
    //Future<ConsumerPlaceOrderResponse> consumerOrderPlacePost(ConsumerPlaceOrderBody consumerPlaceOrderBody, { String authorization }) async
    test('test consumerOrderPlacePost', () async {
      // TODO
    });

    // Figma Orders — Running tab. Active marketplace orders (not delivered/canceled/refunded). Each row includes food thumbnail, status badge label, and track_order=true.
    //
    //Future<ConsumerOrderListResponse> consumerOrderRunningGet({ String authorization, int limit, int offset, int page, int guestId, String search }) async
    test('test consumerOrderRunningGet', () async {
      // TODO
    });

    // Figma Orders — Subscription tab. Orders linked to subscription_id (recurring).
    //
    //Future<ConsumerOrderListResponse> consumerOrderSubscriptionGet({ String authorization, int limit, int offset, int page, int guestId, String search }) async
    test('test consumerOrderSubscriptionGet', () async {
      // TODO
    });

    // Track order screen — single order with restaurant, driver, status timestamps, and delivery address. Legacy PHP: GET customer/order/track. Guest: query is_guest=true, guest_id, contact_number (must match delivery_address.contact_person_number).
    //
    //Future<ConsumerOrderTrackResponse> consumerOrderTrackGet(String orderId, { String authorization, bool isGuest, int guestId, String contactNumber }) async
    test('test consumerOrderTrackGet', () async {
      // TODO
    });

  });
}

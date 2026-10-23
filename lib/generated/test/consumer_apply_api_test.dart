import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsumerApplyApi
void main() {
  final instance = Openapi().getConsumerApplyApi();

  group(ConsumerApplyApi, () {
    // Apply as delivery driver (from customer app)
    //
    // Figma Delivery Man Registration. Send OTP via POST /consumer/password/forgot with field_type phone first. zone_id in query or body (from GET /consumer/config/zone-id).
    //
    //Future<PartnerApplicationResponse> consumerApplyDeliveryManPost(ConsumerApplyDeliveryManBody consumerApplyDeliveryManBody) async
    test('test consumerApplyDeliveryManPost', () async {
      // TODO
    });

    // Apply as restaurant partner (from customer app)
    //
    // Figma Restaurant Registration step only. Bearer required — owner f_name/l_name/phone/email come from consumer profile. **Media:** registration-init → upload → pass `cloudflare_id` + image paths here. Not the same as POST /vendor/register.
    //
    //Future<PartnerApplicationResponse> consumerApplyRestaurantPost(String authorization, ConsumerApplyRestaurantBody consumerApplyRestaurantBody) async
    test('test consumerApplyRestaurantPost', () async {
      // TODO
    });

  });
}

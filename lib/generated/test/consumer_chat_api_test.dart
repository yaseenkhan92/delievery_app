import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsumerChatApi
void main() {
  final instance = Openapi().getConsumerChatApi();

  group(ConsumerChatApi, () {
    // Upload chat image (consumer)
    //
    // 
    //
    //Future<ChatImageUploadResponse> consumerMessageChatImagePost(MultipartFile image, { String authorization }) async
    test('test consumerMessageChatImagePost', () async {
      // TODO
    });

    // Consumer thread messages
    //
    // Open by `conversation_id`, or `vendor_id` / `delivery_man_id` (entity ids, not user_infos id). Marks messages read.
    //
    //Future<ChatThreadResponse> consumerMessageDetailsGet(String authorization, { int conversationId, int vendorId, int deliveryManId, int adminId, int limit, int offset }) async
    test('test consumerMessageDetailsGet', () async {
      // TODO
    });

    // Consumer conversation inbox
    //
    // PHP GET /api/v1/customer/message/list. Registered customer JWT only. Filter tabs with `type=vendor` or `type=delivery_man`. Realtime: Socket `chat_message` on `user:{userId}`; open thread with `watch_conversation`.
    //
    //Future<ChatConsumerListResponse> consumerMessageListGet(String authorization, { String type, int limit, int offset }) async
    test('test consumerMessageListGet', () async {
      // TODO
    });

    // Search consumer conversations
    //
    // 
    //
    //Future<ChatConsumerSearchResponse> consumerMessageSearchListGet(String authorization, String name, { String type, int limit, int offset }) async
    test('test consumerMessageSearchListGet', () async {
      // TODO
    });

    // Consumer send message
    //
    // New thread: `receiver_type` + `receiver_id` (vendor id or delivery_man id). Existing: `conversation_id`. Triggers FCM + Socket `chat_message`.
    //
    //Future<ChatSendResponse> consumerMessageSendPost(String authorization, ChatConsumerSendRequest chatConsumerSendRequest) async
    test('test consumerMessageSendPost', () async {
      // TODO
    });

  });
}

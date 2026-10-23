import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for ChatConsumerSendRequest
void main() {
  final instance = ChatConsumerSendRequestBuilder();
  // TODO add properties to the builder and call build()

  group(ChatConsumerSendRequest, () {
    // Existing thread id
    // int conversationId
    test('to test the property `conversationId`', () async {
      // TODO
    });

    // String receiverType
    test('to test the property `receiverType`', () async {
      // TODO
    });

    // vendors.id or delivery_men.id (not user_infos id)
    // int receiverId
    test('to test the property `receiverId`', () async {
      // TODO
    });

    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // Optional JSON string for images (from chat-image upload)
    // String file
    test('to test the property `file`', () async {
      // TODO
    });

    // int limit (default value: 10)
    test('to test the property `limit`', () async {
      // TODO
    });

    // int offset (default value: 1)
    test('to test the property `offset`', () async {
      // TODO
    });

  });
}

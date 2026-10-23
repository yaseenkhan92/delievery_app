# openapi.api.ConsumerChatApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerMessageChatImagePost**](ConsumerChatApi.md#consumermessagechatimagepost) | **POST** /consumer/message/chat-image | Upload chat image (consumer)
[**consumerMessageDetailsGet**](ConsumerChatApi.md#consumermessagedetailsget) | **GET** /consumer/message/details | Consumer thread messages
[**consumerMessageListGet**](ConsumerChatApi.md#consumermessagelistget) | **GET** /consumer/message/list | Consumer conversation inbox
[**consumerMessageSearchListGet**](ConsumerChatApi.md#consumermessagesearchlistget) | **GET** /consumer/message/search-list | Search consumer conversations
[**consumerMessageSendPost**](ConsumerChatApi.md#consumermessagesendpost) | **POST** /consumer/message/send | Consumer send message


# **consumerMessageChatImagePost**
> ChatImageUploadResponse consumerMessageChatImagePost(image, authorization)

Upload chat image (consumer)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerChatApi();
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | 
final String authorization = authorization_example; // String | 

try {
    final response = api.consumerMessageChatImagePost(image, authorization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerChatApi->consumerMessageChatImagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **MultipartFile**|  | 
 **authorization** | **String**|  | [optional] 

### Return type

[**ChatImageUploadResponse**](ChatImageUploadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerMessageDetailsGet**
> ChatThreadResponse consumerMessageDetailsGet(authorization, conversationId, vendorId, deliveryManId, adminId, limit, offset)

Consumer thread messages

Open by `conversation_id`, or `vendor_id` / `delivery_man_id` (entity ids, not user_infos id). Marks messages read.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerChatApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final int conversationId = 56; // int | 
final int vendorId = 56; // int | Vendor id (restaurant owner)
final int deliveryManId = 56; // int | 
final int adminId = 56; // int | 
final int limit = 56; // int | 
final int offset = 56; // int | 

try {
    final response = api.consumerMessageDetailsGet(authorization, conversationId, vendorId, deliveryManId, adminId, limit, offset);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerChatApi->consumerMessageDetailsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **conversationId** | **int**|  | [optional] 
 **vendorId** | **int**| Vendor id (restaurant owner) | [optional] 
 **deliveryManId** | **int**|  | [optional] 
 **adminId** | **int**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 10]
 **offset** | **int**|  | [optional] [default to 1]

### Return type

[**ChatThreadResponse**](ChatThreadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerMessageListGet**
> ChatConsumerListResponse consumerMessageListGet(authorization, type, limit, offset)

Consumer conversation inbox

PHP GET /api/v1/customer/message/list. Registered customer JWT only. Filter tabs with `type=vendor` or `type=delivery_man`. Realtime: Socket `chat_message` on `user:{userId}`; open thread with `watch_conversation`.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerChatApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final String type = type_example; // String | 
final int limit = 56; // int | 
final int offset = 56; // int | Page number (PHP-style)

try {
    final response = api.consumerMessageListGet(authorization, type, limit, offset);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerChatApi->consumerMessageListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **type** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 10]
 **offset** | **int**| Page number (PHP-style) | [optional] [default to 1]

### Return type

[**ChatConsumerListResponse**](ChatConsumerListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerMessageSearchListGet**
> ChatConsumerSearchResponse consumerMessageSearchListGet(authorization, name, type, limit, offset)

Search consumer conversations



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerChatApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final String name = name_example; // String | 
final String type = type_example; // String | 
final int limit = 56; // int | 
final int offset = 56; // int | 

try {
    final response = api.consumerMessageSearchListGet(authorization, name, type, limit, offset);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerChatApi->consumerMessageSearchListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **name** | **String**|  | 
 **type** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 10]
 **offset** | **int**|  | [optional] [default to 1]

### Return type

[**ChatConsumerSearchResponse**](ChatConsumerSearchResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerMessageSendPost**
> ChatSendResponse consumerMessageSendPost(authorization, chatConsumerSendRequest)

Consumer send message

New thread: `receiver_type` + `receiver_id` (vendor id or delivery_man id). Existing: `conversation_id`. Triggers FCM + Socket `chat_message`.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerChatApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final ChatConsumerSendRequest chatConsumerSendRequest = {"receiver_type":"vendor","receiver_id":3,"message":"Where is my order?"}; // ChatConsumerSendRequest | 

try {
    final response = api.consumerMessageSendPost(authorization, chatConsumerSendRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerChatApi->consumerMessageSendPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **chatConsumerSendRequest** | [**ChatConsumerSendRequest**](ChatConsumerSendRequest.md)|  | 

### Return type

[**ChatSendResponse**](ChatSendResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


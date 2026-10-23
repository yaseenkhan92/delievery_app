# openapi.model.ChatConsumerSendRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conversationId** | **int** | Existing thread id | [optional] 
**receiverType** | **String** |  | [optional] 
**receiverId** | **int** | vendors.id or delivery_men.id (not user_infos id) | [optional] 
**message** | **String** |  | [optional] 
**file** | **String** | Optional JSON string for images (from chat-image upload) | [optional] 
**limit** | **int** |  | [optional] [default to 10]
**offset** | **int** |  | [optional] [default to 1]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



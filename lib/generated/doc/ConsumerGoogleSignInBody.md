# openapi.model.ConsumerGoogleSignInBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **String** | Google id token from mobile/web SDK (default) | 
**email** | **String** |  | 
**uniqueId** | **String** | Stable Google user id (sub) | 
**accessToken** | [**ConsumerGoogleSignInBodyAccessToken**](ConsumerGoogleSignInBodyAccessToken.md) |  | [optional] 
**guestId** | **int** | From POST `/consumer/guest/request` (`guest_id` or `data.guest_id`). Merges guest cart when customer JWT is issued | [optional] 
**verified** | **String** |  | [optional] [default to 'default']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



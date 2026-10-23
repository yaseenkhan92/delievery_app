# openapi.model.ConsumerLoginBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**loginType** | **String** |  | 
**fieldType** | **String** | Required when login_type=manual | [optional] 
**emailOrPhone** | **String** | Required when login_type=manual | [optional] 
**password** | **String** | Required when login_type=manual | [optional] 
**token** | **String** | Google id token or access token when login_type=social | [optional] 
**uniqueId** | **String** | Google user id (sub) when login_type=social | [optional] 
**email** | **String** | Required when login_type=social | [optional] 
**medium** | **String** | Required when login_type=social (only google implemented) | [optional] 
**accessToken** | [**ConsumerLoginBodyAccessToken**](ConsumerLoginBodyAccessToken.md) |  | [optional] 
**verified** | **String** | Social account linking mode (legacy PHP) | [optional] [default to 'default']
**guestId** | **int** | From POST `/consumer/guest/request` — merges guest cart after successful login | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



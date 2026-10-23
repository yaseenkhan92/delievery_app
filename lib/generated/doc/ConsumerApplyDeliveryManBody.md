# openapi.model.ConsumerApplyDeliveryManBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fName** | **String** |  | 
**lName** | **String** |  | 
**phone** | **String** |  | 
**email** | **String** |  | 
**password** | **String** |  | 
**otp** | **String** | Phone OTP (not confirm_password) | 
**cloudflareId** | **String** | Same value from POST /storage/registration-init; links uploads to the new vendor/driver row | [optional] 
**identityImage** | **String** | R2 path from POST /upload `path` (category identity) | [optional] 
**image** | **String** | Optional profile photo path (category profile) | [optional] 
**zoneId** | **int** | From GET /consumer/config/zone-id (query or body) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



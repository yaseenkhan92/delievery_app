# openapi.model.DeliveryManRegisterBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fName** | **String** | Step 1 — first name | 
**lName** | **String** | Step 1 — last name | 
**phone** | **String** | Step 1 — with country code | 
**email** | **String** |  | 
**password** | **String** |  | 
**confirmPassword** | **String** |  | 
**cloudflareId** | **String** | Same value from POST /storage/registration-init; links uploads to the new vendor/driver row | [optional] 
**image** | **String** | Step 1 — portrait / identity photo path (POST /upload category=profile) | 
**identityImage** | [**DeliveryManRegisterBodyIdentityImage**](DeliveryManRegisterBodyIdentityImage.md) |  | 
**zoneId** | **int** | Step 2 — city / service zone (GET /consumer/zone/list) | 
**cityId** | **int** | Alias for zone_id | [optional] 
**identityType** | **String** | Step 2 — ID type | 
**identityNumber** | **String** | Step 2 — ID number | 
**deliveryType** | **String** | Step 2 — Select Delivery Type (use with or instead of earning) | [optional] 
**earning** | **bool** | true = commission/freelance, false = salary | [optional] 
**vehicleId** | **int** | Optional vehicle type id | [optional] 
**fName** | **String** |  | [optional] 
**lName** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



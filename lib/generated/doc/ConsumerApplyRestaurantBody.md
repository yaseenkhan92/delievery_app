# openapi.model.ConsumerApplyRestaurantBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**restaurantName** | **String** |  | 
**restaurantAddress** | **String** |  | 
**lat** | [**PlaceOrderRequestLatitude**](PlaceOrderRequestLatitude.md) |  | [optional] 
**lng** | [**PlaceOrderRequestLatitude**](PlaceOrderRequestLatitude.md) |  | [optional] 
**zoneId** | **int** |  | 
**tax** | **num** |  | 
**language** | **String** |  | [optional] [default to 'en']
**cloudflareId** | **String** | Same value from POST /storage/registration-init; links uploads to the new vendor/driver row | [optional] 
**logo** | **String** | R2 path from POST /upload `path` (logo) | [optional] 
**coverPhoto** | **String** | R2 path from POST /upload `path` (cover) | [optional] 
**cuisines** | **BuiltList&lt;int&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



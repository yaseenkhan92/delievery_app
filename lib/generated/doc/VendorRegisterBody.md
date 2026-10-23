# openapi.model.VendorRegisterBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fName** | **String** | Owner first name | 
**lName** | **String** | Owner last name | 
**email** | **String** |  | 
**phone** | **String** |  | 
**password** | **String** |  | 
**restaurantName** | **String** |  | 
**restaurantAddress** | **String** |  | 
**lat** | [**VendorRegisterBodyLat**](VendorRegisterBodyLat.md) |  | [optional] 
**lng** | [**VendorRegisterBodyLng**](VendorRegisterBodyLng.md) |  | [optional] 
**zoneId** | **int** | From GET /consumer/config/zone-id or admin zones | 
**tax** | **num** | Vat / Tax (Figma required) | 
**language** | **String** | Restaurant default language (English / Hebrew toggle) | [optional] [default to 'en']
**cloudflareId** | **String** | Same value from POST /storage/registration-init; links uploads to the new vendor/driver row | [optional] 
**logo** | **String** | R2 path from POST /upload `path` (category restaurant) | [optional] 
**coverPhoto** | **String** | R2 path from POST /upload `path` (category restaurant) | [optional] 
**cuisines** | **BuiltList&lt;int&gt;** | Cuisine ids from cuisines table | [optional] 
**minimumDeliveryTime** | **String** |  | [optional] 
**maximumDeliveryTime** | **String** |  | [optional] 
**deliveryTimeType** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



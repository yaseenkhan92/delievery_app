# openapi.model.ConsumerAddressBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contactPersonName** | **String** |  | 
**addressType** | **String** |  | 
**contactPersonNumber** | **String** |  | 
**address** | **String** |  | 
**latitude** | [**PlaceOrderRequestLatitude**](PlaceOrderRequestLatitude.md) |  | 
**longitude** | [**PlaceOrderRequestLatitude**](PlaceOrderRequestLatitude.md) |  | 
**floor** | **String** |  | [optional] 
**road** | **String** |  | [optional] 
**house** | **String** |  | [optional] 
**zoneId** | **num** | Recommended: first id from JSON.parse(zone_id) after GET /consumer/config/zone-id; must match pin lat/lng | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



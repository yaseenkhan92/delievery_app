# openapi.model.AdminCreateZoneBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**displayName** | **String** |  | [optional] 
**status** | **bool** |  | [optional] [default to true]
**coordinates** | [**BuiltList&lt;BuiltList&lt;num&gt;&gt;**](BuiltList.md) | Each pair is [longitude, latitude] — NOT [lat, lng]. After create, formated_coordinates should show lat ~33 and lng ~73 for Islamabad. | 
**perKmShippingCharge** | **num** |  | [optional] 
**minimumShippingCharge** | **num** |  | [optional] 
**maximumShippingCharge** | **num** |  | [optional] 
**maxCodOrderAmount** | **num** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



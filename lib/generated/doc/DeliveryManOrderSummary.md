# openapi.model.DeliveryManOrderSummary

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**orderStatus** | **String** |  | [optional] 
**paymentMethod** | **String** |  | [optional] 
**orderAmount** | **num** |  | [optional] 
**deliveryCharge** | **num** | Driver delivery fee for this order | [optional] 
**scheduleAt** | [**DateTime**](DateTime.md) |  | [optional] 
**restaurantId** | **String** |  | [optional] 
**restaurantName** | **String** |  | [optional] 
**customerName** | **String** |  | [optional] 
**restaurantImageUrl** | **String** | Full URL (CLOUDFLARE_PUBLIC_URL + logo/cover) for pickup avatar | [optional] 
**customerImageUrl** | **String** | Full URL for customer profile image (fallback def.png) | [optional] 
**itemTitle** | **String** | First line item name | [optional] 
**deliveryAddressSnippet** | **String** |  | [optional] 
**latitude** | **String** | Customer delivery lat (string or number) | [optional] 
**longitude** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



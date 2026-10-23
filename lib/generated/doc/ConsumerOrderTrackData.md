# openapi.model.ConsumerOrderTrackData

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**userId** | **String** |  | [optional] 
**restaurantId** | **String** |  | [optional] 
**orderAmount** | **num** |  | [optional] 
**deliveryCharge** | **num** |  | [optional] 
**totalTaxAmount** | **num** |  | [optional] 
**paymentStatus** | **String** |  | [optional] 
**orderStatus** | **String** |  | [optional] 
**statusLabel** | **String** |  | [optional] 
**paymentMethod** | **String** |  | [optional] 
**orderType** | **String** |  | [optional] 
**scheduleAt** | [**DateTime**](DateTime.md) |  | [optional] 
**scheduled** | **bool** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**pending** | [**DateTime**](DateTime.md) |  | [optional] 
**accepted** | [**DateTime**](DateTime.md) |  | [optional] 
**confirmed** | [**DateTime**](DateTime.md) |  | [optional] 
**processing** | [**DateTime**](DateTime.md) |  | [optional] 
**handover** | [**DateTime**](DateTime.md) |  | [optional] 
**pickedUp** | [**DateTime**](DateTime.md) |  | [optional] 
**delivered** | [**DateTime**](DateTime.md) |  | [optional] 
**canceled** | [**DateTime**](DateTime.md) |  | [optional] 
**deliveryAddress** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**restaurant** | [**ConsumerOrderTrackRestaurant**](ConsumerOrderTrackRestaurant.md) |  | [optional] 
**deliveryMan** | [**ConsumerOrderTrackDeliveryMan**](ConsumerOrderTrackDeliveryMan.md) |  | [optional] 
**detailsCount** | **int** |  | [optional] 
**dmTips** | **num** |  | [optional] 
**deliveryManId** | **String** |  | [optional] 
**cancellationReason** | **String** |  | [optional] 
**canceledBy** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



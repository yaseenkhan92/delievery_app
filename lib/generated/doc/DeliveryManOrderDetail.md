# openapi.model.DeliveryManOrderDetail

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**orderStatus** | **String** |  | [optional] 
**statusLabel** | **String** |  | [optional] 
**paymentStatus** | **String** |  | [optional] 
**paymentMethod** | **String** |  | [optional] 
**orderType** | **String** |  | [optional] 
**orderAmount** | **num** |  | [optional] 
**deliveryCharge** | **num** |  | [optional] 
**scheduled** | **bool** |  | [optional] 
**scheduleAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**isManualDispatch** | **bool** |  | [optional] 
**orderNote** | **String** |  | [optional] 
**dispatchSummary** | [**DeliveryManOrderDetailDispatchSummary**](DeliveryManOrderDetailDispatchSummary.md) |  | [optional] 
**restaurant** | [**DeliveryManOrderDetailRestaurant**](DeliveryManOrderDetailRestaurant.md) |  | [optional] 
**customer** | [**DeliveryManOrderDetailParty**](DeliveryManOrderDetailParty.md) |  | [optional] 
**deliveryAddress** | **String** |  | [optional] 
**deliveryAddressParsed** | [**JsonObject**](.md) |  | [optional] 
**items** | [**BuiltList&lt;DeliveryManOrderDetailItem&gt;**](DeliveryManOrderDetailItem.md) |  | [optional] 
**pricing** | [**DeliveryManOrderDetailPricing**](DeliveryManOrderDetailPricing.md) |  | [optional] 
**assignedToMe** | **bool** |  | [optional] 
**canAccept** | **bool** |  | [optional] 
**canUpdateStatus** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



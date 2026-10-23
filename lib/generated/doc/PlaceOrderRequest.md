# openapi.model.PlaceOrderRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**restaurantId** | **num** |  | 
**orderType** | **String** |  | [optional] [default to 'delivery']
**paymentMethod** | **String** |  | [optional] [default to 'cash_on_delivery']
**orderAmount** | **num** |  | [optional] 
**deliveryCharge** | **num** |  | [optional] 
**totalTaxAmount** | **num** |  | [optional] 
**distance** | **num** | Required when order_type is delivery | [optional] 
**deliveryAddressId** | **num** | Saved address from GET /consumer/addresses/list | [optional] 
**address** | **String** |  | [optional] 
**latitude** | [**PlaceOrderRequestLatitude**](PlaceOrderRequestLatitude.md) |  | [optional] 
**longitude** | [**PlaceOrderRequestLatitude**](PlaceOrderRequestLatitude.md) |  | [optional] 
**addressType** | **String** |  | [optional] 
**floor** | **String** |  | [optional] 
**road** | **String** |  | [optional] 
**house** | **String** |  | [optional] 
**contactPersonName** | **String** |  | [optional] 
**contactPersonNumber** | **String** |  | [optional] 
**contactPersonEmail** | **String** |  | [optional] 
**orderNote** | **String** |  | [optional] 
**deliveryInstruction** | **String** |  | [optional] 
**unavailableItemNote** | **String** |  | [optional] 
**couponCode** | **String** |  | [optional] 
**scheduleAt** | [**DateTime**](DateTime.md) |  | [optional] 
**dmTips** | **num** |  | [optional] 
**cutlery** | **bool** |  | [optional] 
**extraPackagingAmount** | **num** |  | [optional] 
**partialPayment** | **bool** |  | [optional] 
**isBuyNow** | **bool** |  | [optional] [default to false]
**cartId** | **num** |  | [optional] 
**cart** | [**BuiltList&lt;PlaceOrderLineItem&gt;**](PlaceOrderLineItem.md) |  | [optional] 
**items** | [**BuiltList&lt;PlaceOrderLineItem&gt;**](PlaceOrderLineItem.md) |  | [optional] 
**guestId** | **num** | Guest id when placing without login | [optional] 
**isGuest** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



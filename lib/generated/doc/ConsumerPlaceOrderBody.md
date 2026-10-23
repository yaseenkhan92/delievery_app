# openapi.model.ConsumerPlaceOrderBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**restaurantId** | **num** |  | 
**orderAmount** | **num** | Optional; server recalculates final amount | [optional] 
**paymentMethod** | **String** |  | [optional] [default to 'cash_on_delivery']
**orderType** | **String** |  | [optional] [default to 'delivery']
**distance** | **num** | Required when order_type is delivery | [optional] 
**deliveryAddressId** | **num** | Saved address id from /consumer/addresses | [optional] 
**address** | **String** | Required for delivery if delivery_address_id omitted | [optional] 
**latitude** | [**PlaceOrderRequestLatitude**](PlaceOrderRequestLatitude.md) |  | [optional] 
**longitude** | [**PlaceOrderRequestLatitude**](PlaceOrderRequestLatitude.md) |  | [optional] 
**addressType** | **String** |  | [optional] 
**floor** | **String** |  | [optional] 
**road** | **String** |  | [optional] 
**house** | **String** |  | [optional] 
**contactPersonName** | **String** |  | [optional] 
**contactPersonNumber** | **String** |  | [optional] 
**contactPersonEmail** | **String** |  | [optional] 
**scheduleAt** | [**DateTime**](DateTime.md) | Preference time / scheduled slot | [optional] 
**dmTips** | **num** |  | [optional] 
**couponCode** | **String** |  | [optional] 
**orderNote** | **String** |  | [optional] 
**deliveryInstruction** | **String** |  | [optional] 
**unavailableItemNote** | **String** |  | [optional] 
**cutlery** | **bool** |  | [optional] 
**extraPackagingAmount** | **num** |  | [optional] 
**partialPayment** | **bool** |  | [optional] 
**isBuyNow** | **bool** |  | [optional] [default to false]
**cartId** | **num** | Order only this cart row when not buy-now | [optional] 
**cart** | [**BuiltList&lt;ConsumerPlaceOrderLineItem&gt;**](ConsumerPlaceOrderLineItem.md) |  | [optional] 
**items** | [**BuiltList&lt;ConsumerPlaceOrderLineItem&gt;**](ConsumerPlaceOrderLineItem.md) |  | [optional] 
**guestId** | **num** | Required for guest checkout when no Bearer token | [optional] 
**isGuest** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



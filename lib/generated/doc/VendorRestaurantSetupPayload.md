# openapi.model.VendorRestaurantSetupPayload

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **String** |  | [optional] 
**active** | **bool** |  | [optional] 
**scheduleOrder** | **bool** |  | [optional] 
**delivery** | **bool** |  | [optional] 
**takeAway** | **bool** |  | [optional] 
**freeDelivery** | **bool** |  | [optional] 
**veg** | **bool** |  | [optional] 
**nonVeg** | **bool** |  | [optional] 
**orderSubscriptionActive** | **bool** |  | [optional] 
**cutlery** | **bool** |  | [optional] 
**manualDispatch** | **bool** |  | [optional] 
**instantOrder** | **bool** |  | [optional] 
**customerDateOrderSratus** | **bool** |  | [optional] 
**customerOrderDate** | **int** |  | [optional] 
**halalTagStatus** | **bool** |  | [optional] 
**isExtraPackagingActive** | **bool** |  | [optional] 
**extraPackagingStatus** | **bool** |  | [optional] 
**extraPackagingAmount** | [**JsonObject**](.md) |  | [optional] 
**dineIn** | **bool** |  | [optional] 
**scheduleAdvanceDineInBookingDuration** | **int** |  | [optional] 
**scheduleAdvanceDineInBookingDurationTimeFormat** | **String** |  | [optional] 
**minimumOrder** | **num** |  | [optional] 
**gstStatus** | **bool** |  | [optional] 
**gstCode** | **String** |  | [optional] 
**minimumDeliveryCharge** | **num** |  | [optional] 
**perKmDeliveryCharge** | **num** |  | [optional] 
**maximumShippingCharge** | **num** |  | [optional] 
**freeDeliveryDistanceStatus** | **bool** |  | [optional] 
**freeDeliveryDistance** | **String** |  | [optional] 
**cuisineIds** | **BuiltList&lt;int&gt;** |  | [optional] 
**tags** | **BuiltList&lt;String&gt;** |  | [optional] 
**characteristics** | **BuiltList&lt;String&gt;** |  | [optional] 
**metaTitle** | **String** |  | [optional] 
**metaDescription** | **String** |  | [optional] 
**metaImage** | **String** |  | [optional] 
**metaImageUrl** | **String** |  | [optional] 
**translations** | [**BuiltMap&lt;String, VendorRestaurantSetupPayloadTranslationsValue&gt;**](VendorRestaurantSetupPayloadTranslationsValue.md) |  | [optional] 
**schedules** | [**BuiltList&lt;VendorRestaurantSetupScheduleItem&gt;**](VendorRestaurantSetupScheduleItem.md) |  | [optional] 
**options** | [**VendorRestaurantSetupOptions**](VendorRestaurantSetupOptions.md) |  | [optional] 
**flags** | [**VendorRestaurantSetupFlags**](VendorRestaurantSetupFlags.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



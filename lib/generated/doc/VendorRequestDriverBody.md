# openapi.model.VendorRequestDriverBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerName** | **String** |  | 
**customerPhone** | **String** |  | 
**address** | **String** |  | 
**orderAmount** | **num** | Item subtotal (before delivery fee and tax) | 
**deliveryFee** | **num** |  | 
**paymentMethod** | **String** | `prepaid` sets payment_status=paid; order still uses COD method for commission logic | 
**idempotencyKey** | **String** | Unique per dispatch attempt; stored as orders.manual_dispatch_key | 
**zoneId** | **int** | Optional reporting only; drivers match restaurant zone_id | [optional] 
**latitude** | **num** |  | [optional] 
**longitude** | **num** |  | [optional] 
**tax** | **num** | Tax percentage on item price (default 10) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



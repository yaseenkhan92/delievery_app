# openapi.model.ConsumerPlaceOrderLineItem

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**itemId** | **num** |  | 
**itemType** | **String** |  | [optional] [default to 'Food']
**price** | **num** | Optional for buy-now; server uses menu price when loading from cart DB | [optional] 
**quantity** | **int** |  | 
**addOnIds** | **BuiltList&lt;num&gt;** |  | [optional] 
**addOnQtys** | **BuiltList&lt;num&gt;** |  | [optional] 
**variations** | [**BuiltList&lt;JsonObject&gt;**](JsonObject.md) |  | [optional] 
**variationOptions** | [**BuiltList&lt;JsonObject&gt;**](JsonObject.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



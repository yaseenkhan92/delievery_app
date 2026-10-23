# openapi.model.AppConfigurationResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**businessName** | **String** |  | [optional] 
**logoFullUrl** | **String** |  | [optional] 
**termsAndConditions** | **String** | HTML or plain text from admin Pages | [optional] 
**privacyPolicy** | **String** |  | [optional] 
**aboutUs** | **String** |  | [optional] 
**refundPolicyData** | **String** |  | [optional] 
**cancellationPolicyData** | **String** |  | [optional] 
**shippingPolicyData** | **String** |  | [optional] 
**refundPolicyStatus** | **int** | 1 = show refund policy in app | [optional] 
**cancellationPolicyStatus** | **int** |  | [optional] 
**shippingPolicyStatus** | **int** |  | [optional] 
**cookiesText** | **String** |  | [optional] 
**footerText** | **String** |  | [optional] 
**cashOnDelivery** | **bool** |  | [optional] 
**digitalPayment** | **bool** |  | [optional] 
**homeDelivery** | **bool** |  | [optional] 
**takeAway** | **bool** |  | [optional] 
**maintenanceMode** | **bool** |  | [optional] 
**orderConfirmationModel** | **String** |  | [optional] 
**appMinimumVersionAndroid** | **num** |  | [optional] 
**appMinimumVersionAndroidRestaurant** | **num** |  | [optional] 
**appMinimumVersionAndroidDeliveryman** | **num** |  | [optional] 
**appUrlAndroid** | **String** |  | [optional] 
**appUrlAndroidRestaurant** | **String** |  | [optional] 
**appUrlAndroidDeliveryman** | **String** |  | [optional] 
**centralizeLogin** | [**AppConfigurationResponseCentralizeLogin**](AppConfigurationResponseCentralizeLogin.md) |  | [optional] 
**deliverymanAdditionalJoinUsPageData** | [**JsonObject**](.md) |  | [optional] 
**restaurantAdditionalJoinUsPageData** | [**JsonObject**](.md) |  | [optional] 
**language** | [**BuiltList&lt;AppConfigurationResponseLanguageInner&gt;**](AppConfigurationResponseLanguageInner.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



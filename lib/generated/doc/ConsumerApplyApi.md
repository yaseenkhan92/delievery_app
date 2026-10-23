# openapi.api.ConsumerApplyApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerApplyDeliveryManPost**](ConsumerApplyApi.md#consumerapplydeliverymanpost) | **POST** /consumer/apply/delivery-man | Apply as delivery driver (from customer app)
[**consumerApplyRestaurantPost**](ConsumerApplyApi.md#consumerapplyrestaurantpost) | **POST** /consumer/apply/restaurant | Apply as restaurant partner (from customer app)


# **consumerApplyDeliveryManPost**
> PartnerApplicationResponse consumerApplyDeliveryManPost(consumerApplyDeliveryManBody)

Apply as delivery driver (from customer app)

Figma Delivery Man Registration. Send OTP via POST /consumer/password/forgot with field_type phone first. zone_id in query or body (from GET /consumer/config/zone-id).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerApplyApi();
final ConsumerApplyDeliveryManBody consumerApplyDeliveryManBody = ; // ConsumerApplyDeliveryManBody | 

try {
    final response = api.consumerApplyDeliveryManPost(consumerApplyDeliveryManBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerApplyApi->consumerApplyDeliveryManPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumerApplyDeliveryManBody** | [**ConsumerApplyDeliveryManBody**](ConsumerApplyDeliveryManBody.md)|  | 

### Return type

[**PartnerApplicationResponse**](PartnerApplicationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerApplyRestaurantPost**
> PartnerApplicationResponse consumerApplyRestaurantPost(authorization, consumerApplyRestaurantBody)

Apply as restaurant partner (from customer app)

Figma Restaurant Registration step only. Bearer required — owner f_name/l_name/phone/email come from consumer profile. **Media:** registration-init → upload → pass `cloudflare_id` + image paths here. Not the same as POST /vendor/register.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerApplyApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final ConsumerApplyRestaurantBody consumerApplyRestaurantBody = ; // ConsumerApplyRestaurantBody | 

try {
    final response = api.consumerApplyRestaurantPost(authorization, consumerApplyRestaurantBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerApplyApi->consumerApplyRestaurantPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **consumerApplyRestaurantBody** | [**ConsumerApplyRestaurantBody**](ConsumerApplyRestaurantBody.md)|  | 

### Return type

[**PartnerApplicationResponse**](PartnerApplicationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


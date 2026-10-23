# openapi.api.ConsumerOrdersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerOrderCancelPut**](ConsumerOrdersApi.md#consumerordercancelput) | **PUT** /consumer/order/cancel | 
[**consumerOrderHistoryGet**](ConsumerOrdersApi.md#consumerorderhistoryget) | **GET** /consumer/order/history | 
[**consumerOrderPlacePost**](ConsumerOrdersApi.md#consumerorderplacepost) | **POST** /consumer/order/place | 
[**consumerOrderRunningGet**](ConsumerOrdersApi.md#consumerorderrunningget) | **GET** /consumer/order/running | 
[**consumerOrderSubscriptionGet**](ConsumerOrdersApi.md#consumerordersubscriptionget) | **GET** /consumer/order/subscription | 
[**consumerOrderTrackGet**](ConsumerOrdersApi.md#consumerordertrackget) | **GET** /consumer/order/track | 


# **consumerOrderCancelPut**
> ConsumerOrderCancelResponse consumerOrderCancelPut(consumerOrderCancelBody, authorization)



Cancel order while status is pending, failed, or already canceled. Sets canceled_by=customer and emits realtime order_status_changed. Legacy PHP: PUT customer/order/cancel.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerOrdersApi();
final ConsumerOrderCancelBody consumerOrderCancelBody = ; // ConsumerOrderCancelBody | 
final String authorization = authorization_example; // String | Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT.

try {
    final response = api.consumerOrderCancelPut(consumerOrderCancelBody, authorization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerOrdersApi->consumerOrderCancelPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumerOrderCancelBody** | [**ConsumerOrderCancelBody**](ConsumerOrderCancelBody.md)|  | 
 **authorization** | **String**| Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT. | [optional] 

### Return type

[**ConsumerOrderCancelResponse**](ConsumerOrderCancelResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerOrderHistoryGet**
> ConsumerOrderListResponse consumerOrderHistoryGet(authorization, limit, offset, page, guestId, search)



Figma Orders — History tab. Completed/canceled/refunded orders (PHP order/list). offset is page number (1-based), same as legacy API.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerOrdersApi();
final String authorization = authorization_example; // String | Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT.
final int limit = 10; // int | Page size (default 10)
final int offset = 1; // int | Page number (1-based), not row skip (default 1)
final int page = 1; // int | Alias for offset (page number)
final int guestId = 56; // int | Required when calling without JWT (with is_guest=true)
final String search = search_example; // String | Figma search — order id or restaurant name

try {
    final response = api.consumerOrderHistoryGet(authorization, limit, offset, page, guestId, search);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerOrdersApi->consumerOrderHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT. | [optional] 
 **limit** | **int**| Page size (default 10) | [optional] [default to 10]
 **offset** | **int**| Page number (1-based), not row skip (default 1) | [optional] [default to 1]
 **page** | **int**| Alias for offset (page number) | [optional] 
 **guestId** | **int**| Required when calling without JWT (with is_guest=true) | [optional] 
 **search** | **String**| Figma search — order id or restaurant name | [optional] 

### Return type

[**ConsumerOrderListResponse**](ConsumerOrderListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerOrderPlacePost**
> ConsumerPlaceOrderResponse consumerOrderPlacePost(consumerPlaceOrderBody, authorization)



Place a marketplace order (Figma checkout / legacy PHP parity). Default: line items loaded from server `carts` for the authenticated user or guest (`guest_id`). Buy-now: set `is_buy_now` true and send `cart` or `items`. Delivery requires `distance` plus either `delivery_address_id` (from GET /consumer/addresses) or inline `address`, `latitude`, `longitude`. Totals (tax, delivery, platform fee, tips) are calculated server-side. Triggers vendor FCM for Web Panel & POS.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerOrdersApi();
final ConsumerPlaceOrderBody consumerPlaceOrderBody = ; // ConsumerPlaceOrderBody | 
final String authorization = authorization_example; // String | 

try {
    final response = api.consumerOrderPlacePost(consumerPlaceOrderBody, authorization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerOrdersApi->consumerOrderPlacePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumerPlaceOrderBody** | [**ConsumerPlaceOrderBody**](ConsumerPlaceOrderBody.md)|  | 
 **authorization** | **String**|  | [optional] 

### Return type

[**ConsumerPlaceOrderResponse**](ConsumerPlaceOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerOrderRunningGet**
> ConsumerOrderListResponse consumerOrderRunningGet(authorization, limit, offset, page, guestId, search)



Figma Orders — Running tab. Active marketplace orders (not delivered/canceled/refunded). Each row includes food thumbnail, status badge label, and track_order=true.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerOrdersApi();
final String authorization = authorization_example; // String | Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT.
final int limit = 10; // int | Page size (default 10)
final int offset = 1; // int | Page number (1-based), not row skip (default 1)
final int page = 1; // int | Alias for offset (page number)
final int guestId = 56; // int | Required when calling without JWT (with is_guest=true)
final String search = search_example; // String | Figma search — order id or restaurant name

try {
    final response = api.consumerOrderRunningGet(authorization, limit, offset, page, guestId, search);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerOrdersApi->consumerOrderRunningGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT. | [optional] 
 **limit** | **int**| Page size (default 10) | [optional] [default to 10]
 **offset** | **int**| Page number (1-based), not row skip (default 1) | [optional] [default to 1]
 **page** | **int**| Alias for offset (page number) | [optional] 
 **guestId** | **int**| Required when calling without JWT (with is_guest=true) | [optional] 
 **search** | **String**| Figma search — order id or restaurant name | [optional] 

### Return type

[**ConsumerOrderListResponse**](ConsumerOrderListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerOrderSubscriptionGet**
> ConsumerOrderListResponse consumerOrderSubscriptionGet(authorization, limit, offset, page, guestId, search)



Figma Orders — Subscription tab. Orders linked to subscription_id (recurring).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerOrdersApi();
final String authorization = authorization_example; // String | Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT.
final int limit = 10; // int | Page size (default 10)
final int offset = 1; // int | Page number (1-based), not row skip (default 1)
final int page = 1; // int | Alias for offset (page number)
final int guestId = 56; // int | Required when calling without JWT (with is_guest=true)
final String search = search_example; // String | Figma search — order id or restaurant name

try {
    final response = api.consumerOrderSubscriptionGet(authorization, limit, offset, page, guestId, search);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerOrdersApi->consumerOrderSubscriptionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT. | [optional] 
 **limit** | **int**| Page size (default 10) | [optional] [default to 10]
 **offset** | **int**| Page number (1-based), not row skip (default 1) | [optional] [default to 1]
 **page** | **int**| Alias for offset (page number) | [optional] 
 **guestId** | **int**| Required when calling without JWT (with is_guest=true) | [optional] 
 **search** | **String**| Figma search — order id or restaurant name | [optional] 

### Return type

[**ConsumerOrderListResponse**](ConsumerOrderListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerOrderTrackGet**
> ConsumerOrderTrackResponse consumerOrderTrackGet(orderId, authorization, isGuest, guestId, contactNumber)



Track order screen — single order with restaurant, driver, status timestamps, and delivery address. Legacy PHP: GET customer/order/track. Guest: query is_guest=true, guest_id, contact_number (must match delivery_address.contact_person_number).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerOrdersApi();
final String orderId = 100072; // String | 
final String authorization = authorization_example; // String | Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT.
final bool isGuest = true; // bool | Pass true with guest_id when not using Bearer JWT
final int guestId = 56; // int | Required when calling without JWT (with is_guest=true)
final String contactNumber = 03001234567; // String | Required for guest track — must match order delivery_address.contact_person_number

try {
    final response = api.consumerOrderTrackGet(orderId, authorization, isGuest, guestId, contactNumber);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerOrdersApi->consumerOrderTrackGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 
 **authorization** | **String**| Bearer **customer** JWT from login/social. For guest orders use query `is_guest=true` and `guest_id` instead of customer JWT. | [optional] 
 **isGuest** | **bool**| Pass true with guest_id when not using Bearer JWT | [optional] 
 **guestId** | **int**| Required when calling without JWT (with is_guest=true) | [optional] 
 **contactNumber** | **String**| Required for guest track — must match order delivery_address.contact_person_number | [optional] 

### Return type

[**ConsumerOrderTrackResponse**](ConsumerOrderTrackResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


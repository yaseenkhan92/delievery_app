# openapi.api.ConsumerCartApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerCartAddPost**](ConsumerCartApi.md#consumercartaddpost) | **POST** /consumer/cart/add | Add to cart
[**consumerCartClearUserIdDelete**](ConsumerCartApi.md#consumercartclearuseriddelete) | **DELETE** /consumer/cart/clear/{user_id} | 
[**consumerCartGet**](ConsumerCartApi.md#consumercartget) | **GET** /consumer/cart/ | Get cart
[**consumerCartGet_0**](ConsumerCartApi.md#consumercartget_0) | **GET** /consumer/cart | Get cart
[**consumerCartRemoveItemIdDelete**](ConsumerCartApi.md#consumercartremoveitemiddelete) | **DELETE** /consumer/cart/remove-item/{id} | 
[**consumerCartUpdatePut**](ConsumerCartApi.md#consumercartupdateput) | **PUT** /consumer/cart/update | 


# **consumerCartAddPost**
> ApiResponse consumerCartAddPost(authorization, consumerCartAddPostRequest)

Add to cart

Same auth as GET `/consumer/cart/`. With **guest Bearer token**, set `is_guest: true` in body or omit — server infers guest from JWT. Legacy: `is_guest: true` and `guest_id` without Bearer.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerCartApi();
final String authorization = authorization_example; // String | `Bearer <token>` — customer JWT or guest JWT from POST `/consumer/guest/request`
final ConsumerCartAddPostRequest consumerCartAddPostRequest = ; // ConsumerCartAddPostRequest | 

try {
    final response = api.consumerCartAddPost(authorization, consumerCartAddPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerCartApi->consumerCartAddPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| `Bearer <token>` — customer JWT or guest JWT from POST `/consumer/guest/request` | [optional] 
 **consumerCartAddPostRequest** | [**ConsumerCartAddPostRequest**](ConsumerCartAddPostRequest.md)|  | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerCartClearUserIdDelete**
> ConsumerCartClearUserIdDelete200Response consumerCartClearUserIdDelete(userId, authorization, isGuest)





### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerCartApi();
final String userId = userId_example; // String | 
final String authorization = authorization_example; // String | 
final String isGuest = isGuest_example; // String | 

try {
    final response = api.consumerCartClearUserIdDelete(userId, authorization, isGuest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerCartApi->consumerCartClearUserIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **authorization** | **String**|  | [optional] 
 **isGuest** | **String**|  | [optional] 

### Return type

[**ConsumerCartClearUserIdDelete200Response**](ConsumerCartClearUserIdDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerCartGet**
> ApiResponse consumerCartGet(authorization, isGuest, guestId)

Get cart

**Customer:** `Authorization: Bearer <customer JWT>` from login.  **Guest (preferred):** `Authorization: Bearer <guest JWT>` from POST `/consumer/guest/request` — no extra query params.  **Guest (legacy):** `is_guest=true` and `guest_id=<id>` with optional Bearer bypass via middleware.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerCartApi();
final String authorization = authorization_example; // String | `Bearer <token>` — customer JWT or guest JWT from POST `/consumer/guest/request`
final String isGuest = isGuest_example; // String | Legacy guest mode when not using guest Bearer JWT
final int guestId = 56; // int | Guest id from POST `/consumer/guest/request` — required with `is_guest=true` when no guest JWT

try {
    final response = api.consumerCartGet(authorization, isGuest, guestId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerCartApi->consumerCartGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| `Bearer <token>` — customer JWT or guest JWT from POST `/consumer/guest/request` | [optional] 
 **isGuest** | **String**| Legacy guest mode when not using guest Bearer JWT | [optional] 
 **guestId** | **int**| Guest id from POST `/consumer/guest/request` — required with `is_guest=true` when no guest JWT | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerCartGet_0**
> ApiResponse consumerCartGet_0(authorization, isGuest, guestId)

Get cart

**Customer:** `Authorization: Bearer <customer JWT>` from login.  **Guest (preferred):** `Authorization: Bearer <guest JWT>` from POST `/consumer/guest/request` — no extra query params.  **Guest (legacy):** `is_guest=true` and `guest_id=<id>` with optional Bearer bypass via middleware.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerCartApi();
final String authorization = authorization_example; // String | `Bearer <token>` — customer JWT or guest JWT from POST `/consumer/guest/request`
final String isGuest = isGuest_example; // String | Legacy guest mode when not using guest Bearer JWT
final int guestId = 56; // int | Guest id from POST `/consumer/guest/request` — required with `is_guest=true` when no guest JWT

try {
    final response = api.consumerCartGet_0(authorization, isGuest, guestId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerCartApi->consumerCartGet_0: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| `Bearer <token>` — customer JWT or guest JWT from POST `/consumer/guest/request` | [optional] 
 **isGuest** | **String**| Legacy guest mode when not using guest Bearer JWT | [optional] 
 **guestId** | **int**| Guest id from POST `/consumer/guest/request` — required with `is_guest=true` when no guest JWT | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerCartRemoveItemIdDelete**
> ApiResponse consumerCartRemoveItemIdDelete(id, authorization)





### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerCartApi();
final String id = id_example; // String | 
final String authorization = authorization_example; // String | 

try {
    final response = api.consumerCartRemoveItemIdDelete(id, authorization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerCartApi->consumerCartRemoveItemIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**|  | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerCartUpdatePut**
> ApiResponse consumerCartUpdatePut(authorization, consumerCartUpdatePutRequest)





### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerCartApi();
final String authorization = authorization_example; // String | 
final ConsumerCartUpdatePutRequest consumerCartUpdatePutRequest = ; // ConsumerCartUpdatePutRequest | 

try {
    final response = api.consumerCartUpdatePut(authorization, consumerCartUpdatePutRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerCartApi->consumerCartUpdatePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 
 **consumerCartUpdatePutRequest** | [**ConsumerCartUpdatePutRequest**](ConsumerCartUpdatePutRequest.md)|  | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# openapi.api.ConsumerAddressesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerAddressesGet**](ConsumerAddressesApi.md#consumeraddressesget) | **GET** /consumer/addresses/ | 
[**consumerAddressesGet_0**](ConsumerAddressesApi.md#consumeraddressesget_0) | **GET** /consumer/addresses | 
[**consumerAddressesIdDelete**](ConsumerAddressesApi.md#consumeraddressesiddelete) | **DELETE** /consumer/addresses/{id} | 
[**consumerAddressesIdPut**](ConsumerAddressesApi.md#consumeraddressesidput) | **PUT** /consumer/addresses/{id} | 
[**consumerAddressesPost**](ConsumerAddressesApi.md#consumeraddressespost) | **POST** /consumer/addresses/ | 
[**consumerAddressesPost_0**](ConsumerAddressesApi.md#consumeraddressespost_0) | **POST** /consumer/addresses | 


# **consumerAddressesGet**
> ConsumerAddressListResponse consumerAddressesGet(authorization, limit, offset)



List saved delivery addresses for the logged-in customer (Home / Work / Other from checkout).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAddressesApi();
final String authorization = authorization_example; // String | Bearer token from POST /consumer/login
final int limit = 56; // int | 
final int offset = 56; // int | Page number (1-based)

try {
    final response = api.consumerAddressesGet(authorization, limit, offset);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAddressesApi->consumerAddressesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token from POST /consumer/login | 
 **limit** | **int**|  | [optional] [default to 10]
 **offset** | **int**| Page number (1-based) | [optional] [default to 1]

### Return type

[**ConsumerAddressListResponse**](ConsumerAddressListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerAddressesGet_0**
> ConsumerAddressListResponse consumerAddressesGet_0(authorization, limit, offset)



List saved delivery addresses for the logged-in customer (Home / Work / Other from checkout).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAddressesApi();
final String authorization = authorization_example; // String | Bearer token from POST /consumer/login
final int limit = 56; // int | 
final int offset = 56; // int | Page number (1-based)

try {
    final response = api.consumerAddressesGet_0(authorization, limit, offset);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAddressesApi->consumerAddressesGet_0: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token from POST /consumer/login | 
 **limit** | **int**|  | [optional] [default to 10]
 **offset** | **int**| Page number (1-based) | [optional] [default to 1]

### Return type

[**ConsumerAddressListResponse**](ConsumerAddressListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerAddressesIdDelete**
> ConsumerAddressesIdDelete200Response consumerAddressesIdDelete(authorization, id)



Delete a saved address owned by the current user.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAddressesApi();
final String authorization = authorization_example; // String | 
final int id = 56; // int | 

try {
    final response = api.consumerAddressesIdDelete(authorization, id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAddressesApi->consumerAddressesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **id** | **int**|  | 

### Return type

[**ConsumerAddressesIdDelete200Response**](ConsumerAddressesIdDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerAddressesIdPut**
> ConsumerAddressUpdateResponse consumerAddressesIdPut(authorization, id, consumerAddressBody)



Update a saved address owned by the current user.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAddressesApi();
final String authorization = authorization_example; // String | 
final int id = 56; // int | 
final ConsumerAddressBody consumerAddressBody = ; // ConsumerAddressBody | 

try {
    final response = api.consumerAddressesIdPut(authorization, id, consumerAddressBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAddressesApi->consumerAddressesIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **id** | **int**|  | 
 **consumerAddressBody** | [**ConsumerAddressBody**](ConsumerAddressBody.md)|  | 

### Return type

[**ConsumerAddressUpdateResponse**](ConsumerAddressUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerAddressesPost**
> ApiResponse consumerAddressesPost(authorization, consumerAddressBody)



Save a new delivery address (map pin, floor, label). **Phase 1:** send `zone_id` from GET /consumer/config/zone-id plus the same `latitude`/`longitude` as the map pin; server validates the pin is in that zone, else resolves from coordinates.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAddressesApi();
final String authorization = authorization_example; // String | 
final ConsumerAddressBody consumerAddressBody = ; // ConsumerAddressBody | 

try {
    final response = api.consumerAddressesPost(authorization, consumerAddressBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAddressesApi->consumerAddressesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **consumerAddressBody** | [**ConsumerAddressBody**](ConsumerAddressBody.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerAddressesPost_0**
> ConsumerAddressCreateResponse consumerAddressesPost_0(authorization, consumerAddressBody)



Save a new delivery address (map pin, floor, label). **Phase 1:** send `zone_id` from GET /consumer/config/zone-id plus the same `latitude`/`longitude` as the map pin; server validates the pin is in that zone, else resolves from coordinates.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAddressesApi();
final String authorization = authorization_example; // String | 
final ConsumerAddressBody consumerAddressBody = ; // ConsumerAddressBody | 

try {
    final response = api.consumerAddressesPost_0(authorization, consumerAddressBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAddressesApi->consumerAddressesPost_0: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **consumerAddressBody** | [**ConsumerAddressBody**](ConsumerAddressBody.md)|  | 

### Return type

[**ConsumerAddressCreateResponse**](ConsumerAddressCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


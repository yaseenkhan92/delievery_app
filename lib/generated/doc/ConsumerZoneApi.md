# openapi.api.ConsumerZoneApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerZoneZoneIdGet**](ConsumerZoneApi.md#consumerzonezoneidget) | **GET** /consumer/zone/zone-id | 


# **consumerZoneZoneIdGet**
> ApiResponse consumerZoneZoneIdGet()





### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerZoneApi();

try {
    final response = api.consumerZoneZoneIdGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerZoneApi->consumerZoneZoneIdGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


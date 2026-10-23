# openapi.api.ConsumerNotificationsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerNotificationsGet**](ConsumerNotificationsApi.md#consumernotificationsget) | **GET** /consumer/notifications | Notification inbox (paginated)
[**consumerNotificationsIdDelete**](ConsumerNotificationsApi.md#consumernotificationsiddelete) | **DELETE** /consumer/notifications/{id} | Delete one inbox item


# **consumerNotificationsGet**
> NotificationInboxListResponse consumerNotificationsGet(authorization, zoneId, zoneId2, limit, offset, page, days)

Notification inbox (paginated)

Admin broadcasts for customer zones + order pushes. **Legacy:** send header `zoneId` as JSON array of zone ids; falls back to query `zone_id` or saved user zone. Default window **15 days** (broadcast filter uses `updated_at`).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerNotificationsApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final String zoneId = [2]; // String | JSON array of zone ids, e.g. `[2]` or `[1,2]`
final int zoneId2 = 56; // int | Single zone id when zoneId header omitted
final int limit = 56; // int | 
final int offset = 56; // int | 1-based page (legacy PHP name; same as `page`)
final int page = 56; // int | 
final int days = 56; // int | 

try {
    final response = api.consumerNotificationsGet(authorization, zoneId, zoneId2, limit, offset, page, days);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerNotificationsApi->consumerNotificationsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **zoneId** | **String**| JSON array of zone ids, e.g. `[2]` or `[1,2]` | [optional] 
 **zoneId2** | **int**| Single zone id when zoneId header omitted | [optional] 
 **limit** | **int**|  | [optional] [default to 10]
 **offset** | **int**| 1-based page (legacy PHP name; same as `page`) | [optional] [default to 1]
 **page** | **int**|  | [optional] 
 **days** | **int**|  | [optional] [default to 15]

### Return type

[**NotificationInboxListResponse**](NotificationInboxListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerNotificationsIdDelete**
> NotificationDeleteResponse consumerNotificationsIdDelete(authorization, id)

Delete one inbox item



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerNotificationsApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final String id = id_example; // String | 

try {
    final response = api.consumerNotificationsIdDelete(authorization, id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerNotificationsApi->consumerNotificationsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **id** | **String**|  | 

### Return type

[**NotificationDeleteResponse**](NotificationDeleteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


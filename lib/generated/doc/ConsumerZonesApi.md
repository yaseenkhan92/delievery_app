# openapi.api.ConsumerZonesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerConfigZoneIdGet**](ConsumerZonesApi.md#consumerconfigzoneidget) | **GET** /consumer/config/zone-id | 
[**consumerZoneCheckGet**](ConsumerZonesApi.md#consumerzonecheckget) | **GET** /consumer/zone/check | 
[**consumerZoneListGet**](ConsumerZonesApi.md#consumerzonelistget) | **GET** /consumer/zone/list | 


# **consumerConfigZoneIdGet**
> ConsumerGetZoneIdResponse consumerConfigZoneIdGet(lat, lng)



Resolve active zone(s) at lat/lng (legacy PHP GET /config/get-zone-id). Call on app open and when the user changes location. **Query:** WGS84 `lat` (e.g. 31.75 Israel), `lng` (e.g. 34.75). No auth.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerZonesApi();
final num lat = 31.75; // num | Latitude (-90 to 90)
final num lng = 34.75; // num | Longitude (-180 to 180)

try {
    final response = api.consumerConfigZoneIdGet(lat, lng);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerZonesApi->consumerConfigZoneIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **num**| Latitude (-90 to 90) | 
 **lng** | **num**| Longitude (-180 to 180) | 

### Return type

[**ConsumerGetZoneIdResponse**](ConsumerGetZoneIdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerZoneCheckGet**
> bool consumerZoneCheckGet(lat, lng, zoneId)



True if lat/lng is inside zone_id polygon (legacy zone/check). Use before checkout if location may have changed.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerZonesApi();
final num lat = 31.75; // num | 
final num lng = 34.75; // num | 
final int zoneId = 2; // int | 

try {
    final response = api.consumerZoneCheckGet(lat, lng, zoneId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerZonesApi->consumerZoneCheckGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **num**|  | 
 **lng** | **num**|  | 
 **zoneId** | **int**|  | 

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerZoneListGet**
> BuiltList<ConsumerZoneMapItem> consumerZoneListGet()



Active zones with map polygons (legacy zone/list). Optional for drawing service areas; catalog uses zone-id + query zone_id.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerZonesApi();

try {
    final response = api.consumerZoneListGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerZonesApi->consumerZoneListGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ConsumerZoneMapItem&gt;**](ConsumerZoneMapItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


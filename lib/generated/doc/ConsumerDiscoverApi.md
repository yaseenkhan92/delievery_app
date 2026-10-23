# openapi.api.ConsumerDiscoverApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerCategoriesGet**](ConsumerDiscoverApi.md#consumercategoriesget) | **GET** /consumer/categories | What&#39;s on your mind (home categories)
[**consumerHomeSliderGet**](ConsumerDiscoverApi.md#consumerhomesliderget) | **GET** /consumer/home-slider | Home banners (slider)
[**consumerRestaurantsAllGet**](ConsumerDiscoverApi.md#consumerrestaurantsallget) | **GET** /consumer/restaurants/all | 
[**consumerRestaurantsIdFoodsGet**](ConsumerDiscoverApi.md#consumerrestaurantsidfoodsget) | **GET** /consumer/restaurants/{id}/foods | 
[**consumerRestaurantsNearbyGet**](ConsumerDiscoverApi.md#consumerrestaurantsnearbyget) | **GET** /consumer/restaurants/nearby | 
[**consumerRestaurantsPopularGet**](ConsumerDiscoverApi.md#consumerrestaurantspopularget) | **GET** /consumer/restaurants/popular | 
[**consumerRestaurantsSpecficIdGet**](ConsumerDiscoverApi.md#consumerrestaurantsspecficidget) | **GET** /consumer/restaurants/specfic/{id} | 


# **consumerCategoriesGet**
> ApiResponse consumerCategoriesGet(zoneId, name)

What's on your mind (home categories)

**What's on your mind** — top-level marketplace food categories for the customer home screen (legacy PHP `GET /api/v1/categories/`). Uses admin categories with `position=0` (not vendor menu categories). Requires **zone_id** query (same as home slider / discover). Optional **name** filter. Each tile includes zone-scoped **products_count** and **order_count**; parent categories may include **childes**.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerDiscoverApi();
final ConsumerRestaurantsPopularGetZoneIdParameter zoneId = ; // ConsumerRestaurantsPopularGetZoneIdParameter | Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.
final String name = name_example; // String | Filter by category name

try {
    final response = api.consumerCategoriesGet(zoneId, name);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerDiscoverApi->consumerCategoriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zoneId** | [**ConsumerRestaurantsPopularGetZoneIdParameter**](.md)| Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted. | 
 **name** | **String**| Filter by category name | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerHomeSliderGet**
> ApiResponse consumerHomeSliderGet(zoneId)

Home banners (slider)

Home banners for the customer zone(s). Same query **zone_id** as discover restaurant lists (e.g. ?zone_id=2).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerDiscoverApi();
final ConsumerRestaurantsPopularGetZoneIdParameter zoneId = ; // ConsumerRestaurantsPopularGetZoneIdParameter | Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.

try {
    final response = api.consumerHomeSliderGet(zoneId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerDiscoverApi->consumerHomeSliderGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zoneId** | [**ConsumerRestaurantsPopularGetZoneIdParameter**](.md)| Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted. | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerRestaurantsAllGet**
> ConsumerRestaurantListResponse consumerRestaurantsAllGet(zoneId, page, limit, name, veg, nonVeg, topRated, discounted)



Active restaurants assigned to the customer zone(s). **Flow:** 1) GET /consumer/config/zone-id?lat=&lng= 2) pass returned id(s) as query **zone_id** (e.g. ?zone_id=2). Public; no Bearer token.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerDiscoverApi();
final ConsumerRestaurantsPopularGetZoneIdParameter zoneId = ; // ConsumerRestaurantsPopularGetZoneIdParameter | Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.
final String page = page_example; // String | 
final String limit = limit_example; // String | 
final String name = name_example; // String | 
final String veg = veg_example; // String | 
final String nonVeg = nonVeg_example; // String | 
final String topRated = topRated_example; // String | 
final String discounted = discounted_example; // String | 

try {
    final response = api.consumerRestaurantsAllGet(zoneId, page, limit, name, veg, nonVeg, topRated, discounted);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerDiscoverApi->consumerRestaurantsAllGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zoneId** | [**ConsumerRestaurantsPopularGetZoneIdParameter**](.md)| Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted. | 
 **page** | **String**|  | [optional] 
 **limit** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **veg** | **String**|  | [optional] 
 **nonVeg** | **String**|  | [optional] 
 **topRated** | **String**|  | [optional] 
 **discounted** | **String**|  | [optional] 

### Return type

[**ConsumerRestaurantListResponse**](ConsumerRestaurantListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerRestaurantsIdFoodsGet**
> ConsumerRestaurantsIdFoodsGet200Response consumerRestaurantsIdFoodsGet(id, page, limit)





### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerDiscoverApi();
final String id = id_example; // String | 
final String page = page_example; // String | 
final String limit = limit_example; // String | 

try {
    final response = api.consumerRestaurantsIdFoodsGet(id, page, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerDiscoverApi->consumerRestaurantsIdFoodsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **page** | **String**|  | [optional] 
 **limit** | **String**|  | [optional] 

### Return type

[**ConsumerRestaurantsIdFoodsGet200Response**](ConsumerRestaurantsIdFoodsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerRestaurantsNearbyGet**
> ConsumerRestaurantListResponse consumerRestaurantsNearbyGet(zoneId, latitude, longitude, page, limit, name, type, veg, nonVeg, topRated)



**All Restaurants near you** / Find Nearby map flow. Requires customer **latitude** and **longitude** (query or headers) plus **zone_id**. Returns active restaurants in the zone with valid coordinates, sorted **open first**, then **nearest** (legacy PHP `get-restaurants` + `nearest_first`).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerDiscoverApi();
final ConsumerRestaurantsPopularGetZoneIdParameter zoneId = ; // ConsumerRestaurantsPopularGetZoneIdParameter | Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.
final String latitude = latitude_example; // String | Customer latitude (or header latitude)
final String longitude = longitude_example; // String | Customer longitude (or header longitude)
final String page = page_example; // String | 
final String limit = limit_example; // String | Max 50
final String name = name_example; // String | Filter by restaurant name
final String type = type_example; // String | 
final String veg = veg_example; // String | 
final String nonVeg = nonVeg_example; // String | 
final String topRated = topRated_example; // String | When set, sort by rating then distance

try {
    final response = api.consumerRestaurantsNearbyGet(zoneId, latitude, longitude, page, limit, name, type, veg, nonVeg, topRated);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerDiscoverApi->consumerRestaurantsNearbyGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zoneId** | [**ConsumerRestaurantsPopularGetZoneIdParameter**](.md)| Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted. | 
 **latitude** | **String**| Customer latitude (or header latitude) | 
 **longitude** | **String**| Customer longitude (or header longitude) | 
 **page** | **String**|  | [optional] 
 **limit** | **String**| Max 50 | [optional] 
 **name** | **String**| Filter by restaurant name | [optional] 
 **type** | **String**|  | [optional] 
 **veg** | **String**|  | [optional] 
 **nonVeg** | **String**|  | [optional] 
 **topRated** | **String**| When set, sort by rating then distance | [optional] 

### Return type

[**ConsumerRestaurantListResponse**](ConsumerRestaurantListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerRestaurantsPopularGet**
> ConsumerRestaurantListResponse consumerRestaurantsPopularGet(zoneId, latitude, longitude, page, limit, type, veg, nonVeg, topRated)



Popular restaurants for the home screen horizontal list. Same zone flow as GET /consumer/restaurants/all. Sorted **open first**, then **order_count** (legacy PHP `restaurants/popular`). Optional **latitude** / **longitude** (query or headers) for distance on cards.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerDiscoverApi();
final ConsumerRestaurantsPopularGetZoneIdParameter zoneId = ; // ConsumerRestaurantsPopularGetZoneIdParameter | Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.
final String latitude = latitude_example; // String | Customer latitude (or send header latitude)
final String longitude = longitude_example; // String | Customer longitude (or send header longitude)
final String page = page_example; // String | 
final String limit = limit_example; // String | Max 50
final String type = type_example; // String | 
final String veg = veg_example; // String | 
final String nonVeg = nonVeg_example; // String | 
final String topRated = topRated_example; // String | 

try {
    final response = api.consumerRestaurantsPopularGet(zoneId, latitude, longitude, page, limit, type, veg, nonVeg, topRated);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerDiscoverApi->consumerRestaurantsPopularGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zoneId** | [**ConsumerRestaurantsPopularGetZoneIdParameter**](.md)| Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted. | 
 **latitude** | **String**| Customer latitude (or send header latitude) | [optional] 
 **longitude** | **String**| Customer longitude (or send header longitude) | [optional] 
 **page** | **String**|  | [optional] 
 **limit** | **String**| Max 50 | [optional] 
 **type** | **String**|  | [optional] 
 **veg** | **String**|  | [optional] 
 **nonVeg** | **String**|  | [optional] 
 **topRated** | **String**|  | [optional] 

### Return type

[**ConsumerRestaurantListResponse**](ConsumerRestaurantListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerRestaurantsSpecficIdGet**
> ConsumerRestaurantsSpecficIdGet200Response consumerRestaurantsSpecficIdGet(id)





### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerDiscoverApi();
final String id = id_example; // String | 

try {
    final response = api.consumerRestaurantsSpecficIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerDiscoverApi->consumerRestaurantsSpecficIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ConsumerRestaurantsSpecficIdGet200Response**](ConsumerRestaurantsSpecficIdGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


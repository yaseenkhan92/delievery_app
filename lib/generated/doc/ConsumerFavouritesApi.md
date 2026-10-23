# openapi.api.ConsumerFavouritesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerFavouritesAddPost**](ConsumerFavouritesApi.md#consumerfavouritesaddpost) | **POST** /consumer/favourites/add | 
[**consumerFavouritesListGet**](ConsumerFavouritesApi.md#consumerfavouriteslistget) | **GET** /consumer/favourites/list | 
[**consumerFavouritesRemoveDelete**](ConsumerFavouritesApi.md#consumerfavouritesremovedelete) | **DELETE** /consumer/favourites/remove | 


# **consumerFavouritesAddPost**
> ConsumerFavouriteActionResponse consumerFavouritesAddPost(authorization, consumerFavouriteBody)



Add a food OR restaurant to favourites (not both).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerFavouritesApi();
final String authorization = authorization_example; // String | 
final ConsumerFavouriteBody consumerFavouriteBody = ; // ConsumerFavouriteBody | 

try {
    final response = api.consumerFavouritesAddPost(authorization, consumerFavouriteBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerFavouritesApi->consumerFavouritesAddPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **consumerFavouriteBody** | [**ConsumerFavouriteBody**](ConsumerFavouriteBody.md)|  | 

### Return type

[**ConsumerFavouriteActionResponse**](ConsumerFavouriteActionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerFavouritesListGet**
> ConsumerFavouriteListResponse consumerFavouritesListGet(authorization, zoneId, type, search, latitude, longitude)



Favorites screen: Foods tab (`type=food`) and Restaurants tab (`type=restaurant`). Optional `search` matches item/restaurant name. Send latitude/longitude headers for distance badge on restaurant cards.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerFavouritesApi();
final String authorization = authorization_example; // String | 
final ConsumerRestaurantsPopularGetZoneIdParameter zoneId = ; // ConsumerRestaurantsPopularGetZoneIdParameter | Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted.
final String type = type_example; // String | Figma tab: food = Foods, restaurant = Restaurants
final String search = search_example; // String | Filter by name (search bar)
final String latitude = latitude_example; // String | User location for distance on restaurant favourites
final String longitude = longitude_example; // String | 

try {
    final response = api.consumerFavouritesListGet(authorization, zoneId, type, search, latitude, longitude);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerFavouritesApi->consumerFavouritesListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **zoneId** | [**ConsumerRestaurantsPopularGetZoneIdParameter**](.md)| Zone id(s) from GET /consumer/config/zone-id. Single id (2) or JSON array string ([1,2]). Comma-separated also accepted. | 
 **type** | **String**| Figma tab: food = Foods, restaurant = Restaurants | [optional] [default to 'all']
 **search** | **String**| Filter by name (search bar) | [optional] 
 **latitude** | **String**| User location for distance on restaurant favourites | [optional] 
 **longitude** | **String**|  | [optional] 

### Return type

[**ConsumerFavouriteListResponse**](ConsumerFavouriteListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerFavouritesRemoveDelete**
> ConsumerFavouriteActionResponse consumerFavouritesRemoveDelete(authorization, foodId, restaurantId)



Remove a food OR restaurant from favourites (query or JSON body).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerFavouritesApi();
final String authorization = authorization_example; // String | 
final int foodId = 56; // int | 
final int restaurantId = 56; // int | 

try {
    final response = api.consumerFavouritesRemoveDelete(authorization, foodId, restaurantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerFavouritesApi->consumerFavouritesRemoveDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **foodId** | **int**|  | [optional] 
 **restaurantId** | **int**|  | [optional] 

### Return type

[**ConsumerFavouriteActionResponse**](ConsumerFavouriteActionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


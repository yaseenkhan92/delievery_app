# openapi.api.ConsumerProfileApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerDeleteAccountDelete**](ConsumerProfileApi.md#consumerdeleteaccountdelete) | **DELETE** /consumer/delete-account | Delete account
[**consumerSuggestedFoodsGet**](ConsumerProfileApi.md#consumersuggestedfoodsget) | **GET** /consumer/suggested-foods | Suggested foods in zone
[**consumerUpdateFirebaseTokenPut**](ConsumerProfileApi.md#consumerupdatefirebasetokenput) | **PUT** /consumer/update-firebase-token | Update FCM token
[**consumerUpdateInterestPost**](ConsumerProfileApi.md#consumerupdateinterestpost) | **POST** /consumer/update-interest | Save food category interests
[**consumerUpdateProfilePut**](ConsumerProfileApi.md#consumerupdateprofileput) | **PUT** /consumer/update-profile | Update profile
[**consumerUpdateZonePut**](ConsumerProfileApi.md#consumerupdatezoneput) | **PUT** /consumer/update-zone | Save delivery zone on user
[**consumerWhoamiGet**](ConsumerProfileApi.md#consumerwhoamiget) | **GET** /consumer/whoami | Get logged-in profile


# **consumerDeleteAccountDelete**
> ApiResponse consumerDeleteAccountDelete(authorization)

Delete account

Removes user data. Blocked while orders are in progress.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerProfileApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login

try {
    final response = api.consumerDeleteAccountDelete(authorization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerProfileApi->consumerDeleteAccountDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerSuggestedFoodsGet**
> ConsumerSuggestedFoodsResponse consumerSuggestedFoodsGet(authorization, zoneId)

Suggested foods in zone

Up to 5 items; filters by POST /consumer/update-interest when set. Requires query `zone_id`.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerProfileApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final int zoneId = 2; // int | From GET /consumer/config/zone-id

try {
    final response = api.consumerSuggestedFoodsGet(authorization, zoneId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerProfileApi->consumerSuggestedFoodsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **zoneId** | **int**| From GET /consumer/config/zone-id | 

### Return type

[**ConsumerSuggestedFoodsResponse**](ConsumerSuggestedFoodsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerUpdateFirebaseTokenPut**
> ApiResponse consumerUpdateFirebaseTokenPut(authorization, consumerUpdateFirebaseTokenPutRequest)

Update FCM token

Save device push token (`cm_firebase_token`).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerProfileApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final ConsumerUpdateFirebaseTokenPutRequest consumerUpdateFirebaseTokenPutRequest = ; // ConsumerUpdateFirebaseTokenPutRequest | 

try {
    final response = api.consumerUpdateFirebaseTokenPut(authorization, consumerUpdateFirebaseTokenPutRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerProfileApi->consumerUpdateFirebaseTokenPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **consumerUpdateFirebaseTokenPutRequest** | [**ConsumerUpdateFirebaseTokenPutRequest**](ConsumerUpdateFirebaseTokenPutRequest.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerUpdateInterestPost**
> ApiResponse consumerUpdateInterestPost(authorization, consumerUpdateInterestPostRequest)

Save food category interests

Onboarding preferences; used by GET /consumer/suggested-foods.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerProfileApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final ConsumerUpdateInterestPostRequest consumerUpdateInterestPostRequest = ; // ConsumerUpdateInterestPostRequest | 

try {
    final response = api.consumerUpdateInterestPost(authorization, consumerUpdateInterestPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerProfileApi->consumerUpdateInterestPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **consumerUpdateInterestPostRequest** | [**ConsumerUpdateInterestPostRequest**](ConsumerUpdateInterestPostRequest.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerUpdateProfilePut**
> ConsumerProfileUpdateResponse consumerUpdateProfilePut(authorization, consumerUpdateProfileBody)

Update profile

Update name, email, phone, image, language, optional `zone_id`. Password: PUT /consumer/password/change or forgot flow.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerProfileApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final ConsumerUpdateProfileBody consumerUpdateProfileBody = ; // ConsumerUpdateProfileBody | 

try {
    final response = api.consumerUpdateProfilePut(authorization, consumerUpdateProfileBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerProfileApi->consumerUpdateProfilePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **consumerUpdateProfileBody** | [**ConsumerUpdateProfileBody**](ConsumerUpdateProfileBody.md)|  | 

### Return type

[**ConsumerProfileUpdateResponse**](ConsumerProfileUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerUpdateZonePut**
> ApiResponse consumerUpdateZonePut(authorization, zoneId, consumerUpdateZonePutRequest)

Save delivery zone on user

After GET /consumer/config/zone-id, persist zone on account so GET /consumer/whoami returns `zone_id`. Body or query `zone_id` (recommended).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerProfileApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final int zoneId = 2; // int | 
final ConsumerUpdateZonePutRequest consumerUpdateZonePutRequest = {"zone_id":2}; // ConsumerUpdateZonePutRequest | 

try {
    final response = api.consumerUpdateZonePut(authorization, zoneId, consumerUpdateZonePutRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerProfileApi->consumerUpdateZonePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **zoneId** | **int**|  | [optional] 
 **consumerUpdateZonePutRequest** | [**ConsumerUpdateZonePutRequest**](ConsumerUpdateZonePutRequest.md)|  | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerWhoamiGet**
> ConsumerProfileResponse consumerWhoamiGet(authorization)

Get logged-in profile

Returns wallet, loyalty, `zone_id`, interests, order stats. Set zone via PUT /consumer/update-zone or `zone_id` on PUT /consumer/update-profile.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerProfileApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login

try {
    final response = api.consumerWhoamiGet(authorization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerProfileApi->consumerWhoamiGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 

### Return type

[**ConsumerProfileResponse**](ConsumerProfileResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


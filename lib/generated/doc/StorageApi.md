# openapi.api.StorageApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storageRegistrationInitPost**](StorageApi.md#storageregistrationinitpost) | **POST** /storage/registration-init | Prepare R2 upload prefix before partner signup


# **storageRegistrationInitPost**
> RegistrationInitResponse storageRegistrationInitPost(registrationInitBody)

Prepare R2 upload prefix before partner signup

Public. Call **before** uploading registration images and **before** vendor/driver register or consumer apply. Returns a temporary `cloudflareId` (not a logged-in user). Pass the same id to `POST /upload` and to register/apply as `cloudflare_id`.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getStorageApi();
final RegistrationInitBody registrationInitBody = ; // RegistrationInitBody | 

try {
    final response = api.storageRegistrationInitPost(registrationInitBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StorageApi->storageRegistrationInitPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationInitBody** | [**RegistrationInitBody**](RegistrationInitBody.md)|  | 

### Return type

[**RegistrationInitResponse**](RegistrationInitResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


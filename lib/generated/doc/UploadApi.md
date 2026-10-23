# openapi.api.UploadApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploadPost**](UploadApi.md#uploadpost) | **POST** /upload/ | Upload file to Cloudflare R2
[**uploadPost_0**](UploadApi.md#uploadpost_0) | **POST** /upload | Upload file to Cloudflare R2


# **uploadPost**
> UploadSuccessResponse uploadPost(uploadPostRequest)

Upload file to Cloudflare R2

Multipart upload. **Registration (recommended):** set `role`, `cloudflare_id` (from registration-init), and `category` (`restaurant` | `identity` | `profile` | `assets`). Use response `path` on register/apply. **Legacy:** `subfolder` only (defaults to `assets/`).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUploadApi();
final UploadPostRequest uploadPostRequest = ; // UploadPostRequest | 

try {
    final response = api.uploadPost(uploadPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UploadApi->uploadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadPostRequest** | [**UploadPostRequest**](UploadPostRequest.md)|  | [optional] 

### Return type

[**UploadSuccessResponse**](UploadSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadPost_0**
> UploadSuccessResponse uploadPost_0(uploadPostRequest)

Upload file to Cloudflare R2

Multipart upload. **Registration (recommended):** set `role`, `cloudflare_id` (from registration-init), and `category` (`restaurant` | `identity` | `profile` | `assets`). Use response `path` on register/apply. **Legacy:** `subfolder` only (defaults to `assets/`).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUploadApi();
final UploadPostRequest uploadPostRequest = ; // UploadPostRequest | 

try {
    final response = api.uploadPost_0(uploadPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UploadApi->uploadPost_0: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadPostRequest** | [**UploadPostRequest**](UploadPostRequest.md)|  | [optional] 

### Return type

[**UploadSuccessResponse**](UploadSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# openapi.api.LegalPagesAllAppsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pagesLegalGet**](LegalPagesAllAppsApi.md#pageslegalget) | **GET** /pages/legal | All legal pages (terms, privacy, policies)
[**pagesSlugGet**](LegalPagesAllAppsApi.md#pagesslugget) | **GET** /pages/{slug} | Single legal page by slug


# **pagesLegalGet**
> LegalPagesBundleResponse pagesLegalGet(xLocalization)

All legal pages (terms, privacy, policies)

Returns every admin **Pages** document in one call. Keys: `terms_and_conditions`, `privacy_policy`, `about_us`, `refund_policy`, `shipping_policy`, `cancellation_policy`. Each has `title`, `content` (HTML), `active` (policy pages use `*_policy_status` in DB). Header **X-localization** for translations.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getLegalPagesAllAppsApi();
final String xLocalization = en; // String | 

try {
    final response = api.pagesLegalGet(xLocalization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LegalPagesAllAppsApi->pagesLegalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLocalization** | **String**|  | [optional] 

### Return type

[**LegalPagesBundleResponse**](LegalPagesBundleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pagesSlugGet**
> PagesSlugGet200Response pagesSlugGet(slug, format, xLocalization)

Single legal page by slug

Slugs: `terms-and-conditions`, `privacy-policy`, `about-us`, `refund-policy`, `shipping-policy`, `cancellation-policy` (same as PHP web routes). Default JSON: `{ status, data: { key, title, content, active } }`. **PHP parity:** `?format=legacy` → body is JSON string of HTML only.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getLegalPagesAllAppsApi();
final String slug = slug_example; // String | 
final String format = format_example; // String | legacy/php = raw HTML string JSON (PHP HomeController expectsJson)
final String xLocalization = xLocalization_example; // String | 

try {
    final response = api.pagesSlugGet(slug, format, xLocalization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LegalPagesAllAppsApi->pagesSlugGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **format** | **String**| legacy/php = raw HTML string JSON (PHP HomeController expectsJson) | [optional] 
 **xLocalization** | **String**|  | [optional] 

### Return type

[**PagesSlugGet200Response**](PagesSlugGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


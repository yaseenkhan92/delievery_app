# openapi.api.AppConfigAllAppsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configGet**](AppConfigAllAppsApi.md#configget) | **GET** /config/ | App configuration (all apps)
[**configGet_0**](AppConfigAllAppsApi.md#configget_0) | **GET** /config | App configuration (all apps)
[**consumerConfigGet**](AppConfigAllAppsApi.md#consumerconfigget) | **GET** /consumer/config/ | App configuration (consumer path alias)
[**consumerConfigGet_0**](AppConfigAllAppsApi.md#consumerconfigget_0) | **GET** /consumer/config | App configuration (consumer path alias)


# **configGet**
> AppConfigurationResponse configGet(xLocalization)

App configuration (all apps)

Legacy PHP **GET /api/v1/config** — flat JSON (no `status`/`data` wrapper). Customer, vendor, and driver apps call this on launch for **terms_and_conditions**, **privacy_policy**, **about_us**, refund/cancellation/shipping policies (+ `*_status` flags), **cookies_text**, payment/wallet/loyalty toggles, map keys, and **app_minimum_version_*** / store URLs per app.  Optional header **`X-localization`** (e.g. `en`, `he`) returns translated legal HTML from `data_settings` + `translations`.  Same body as **GET /consumer/config**.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppConfigAllAppsApi();
final String xLocalization = en; // String | Locale for terms/privacy/about/policy HTML (legacy PHP localization)

try {
    final response = api.configGet(xLocalization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AppConfigAllAppsApi->configGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLocalization** | **String**| Locale for terms/privacy/about/policy HTML (legacy PHP localization) | [optional] 

### Return type

[**AppConfigurationResponse**](AppConfigurationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configGet_0**
> AppConfigurationResponse configGet_0(xLocalization)

App configuration (all apps)

Legacy PHP **GET /api/v1/config** — flat JSON (no `status`/`data` wrapper). Customer, vendor, and driver apps call this on launch for **terms_and_conditions**, **privacy_policy**, **about_us**, refund/cancellation/shipping policies (+ `*_status` flags), **cookies_text**, payment/wallet/loyalty toggles, map keys, and **app_minimum_version_*** / store URLs per app.  Optional header **`X-localization`** (e.g. `en`, `he`) returns translated legal HTML from `data_settings` + `translations`.  Same body as **GET /consumer/config**.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppConfigAllAppsApi();
final String xLocalization = en; // String | Locale for terms/privacy/about/policy HTML (legacy PHP localization)

try {
    final response = api.configGet_0(xLocalization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AppConfigAllAppsApi->configGet_0: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLocalization** | **String**| Locale for terms/privacy/about/policy HTML (legacy PHP localization) | [optional] 

### Return type

[**AppConfigurationResponse**](AppConfigurationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerConfigGet**
> AppConfigurationResponse consumerConfigGet(xLocalization)

App configuration (consumer path alias)

Identical to **GET /config**. Use **GET /consumer/config/zone-id** for lat/lng zone resolve.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppConfigAllAppsApi();
final String xLocalization = en; // String | 

try {
    final response = api.consumerConfigGet(xLocalization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AppConfigAllAppsApi->consumerConfigGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLocalization** | **String**|  | [optional] 

### Return type

[**AppConfigurationResponse**](AppConfigurationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerConfigGet_0**
> AppConfigurationResponse consumerConfigGet_0(xLocalization)

App configuration (consumer path alias)

Identical to **GET /config**. Use **GET /consumer/config/zone-id** for lat/lng zone resolve.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppConfigAllAppsApi();
final String xLocalization = en; // String | 

try {
    final response = api.consumerConfigGet_0(xLocalization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AppConfigAllAppsApi->consumerConfigGet_0: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLocalization** | **String**|  | [optional] 

### Return type

[**AppConfigurationResponse**](AppConfigurationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


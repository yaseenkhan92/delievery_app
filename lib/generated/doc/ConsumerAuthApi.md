# openapi.api.ConsumerAuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerFoodsSearchGet**](ConsumerAuthApi.md#consumerfoodssearchget) | **GET** /consumer/foods/search | Search foods and restaurants
[**consumerGuestRequestPost**](ConsumerAuthApi.md#consumerguestrequestpost) | **POST** /consumer/guest/request | Create guest session
[**consumerLoginPost**](ConsumerAuthApi.md#consumerloginpost) | **POST** /consumer/login | Login customer
[**consumerLoginSendOtpPost**](ConsumerAuthApi.md#consumerloginsendotppost) | **POST** /consumer/login/send-otp | Send login OTP (customer app)
[**consumerLoginVerifyOtpPost**](ConsumerAuthApi.md#consumerloginverifyotppost) | **POST** /consumer/login/verify-otp | Verify login OTP (customer app)
[**consumerNotificationsTestGet**](ConsumerAuthApi.md#consumernotificationstestget) | **GET** /consumer/notifications/test | 
[**consumerNotificationsTestPost**](ConsumerAuthApi.md#consumernotificationstestpost) | **POST** /consumer/notifications/test | 
[**consumerPasswordChangePut**](ConsumerAuthApi.md#consumerpasswordchangeput) | **PUT** /consumer/password/change | Change password (logged in)
[**consumerPasswordForgotPost**](ConsumerAuthApi.md#consumerpasswordforgotpost) | **POST** /consumer/password/forgot | Forgot password — send OTP
[**consumerPasswordResetPut**](ConsumerAuthApi.md#consumerpasswordresetput) | **PUT** /consumer/password/reset | Reset password with OTP
[**consumerPasswordVerifyOtpPost**](ConsumerAuthApi.md#consumerpasswordverifyotppost) | **POST** /consumer/password/verify-otp | Verify forgot-password OTP
[**consumerRegisterPost**](ConsumerAuthApi.md#consumerregisterpost) | **POST** /consumer/register | Register customer
[**consumerSignInWithGooglePost**](ConsumerAuthApi.md#consumersigninwithgooglepost) | **POST** /consumer/sign-in-with-google | Sign in with Google


# **consumerFoodsSearchGet**
> ApiResponse consumerFoodsSearchGet(name, zoneId, page, limit, latitude, longitude)

Search foods and restaurants

App search bar: returns **foods** whose name matches and **restaurants** that sell those items (or whose name matches). Case-insensitive. Public — no auth. **name** is required. Optional **zone_id** (same as discover), **page** / **limit** (default 1 / 20, shared pagination), **latitude** / **longitude** for distance on restaurant cards.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();
final String name = name_example; // String | Search term (food or restaurant name)
final int zoneId = 56; // int | Optional — limit to customer zone from GET /consumer/config/zone-id
final int page = 56; // int | 
final int limit = 56; // int | 
final num latitude = 8.14; // num | 
final num longitude = 8.14; // num | 

try {
    final response = api.consumerFoodsSearchGet(name, zoneId, page, limit, latitude, longitude);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerFoodsSearchGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Search term (food or restaurant name) | 
 **zoneId** | **int**| Optional — limit to customer zone from GET /consumer/config/zone-id | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **limit** | **int**|  | [optional] [default to 20]
 **latitude** | **num**|  | [optional] 
 **longitude** | **num**|  | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerGuestRequestPost**
> ConsumerGuestSessionResponse consumerGuestRequestPost(xForwardedFor, consumerGuestRequestBody)

Create guest session

Call once on app launch when the user is not logged in.  **Returns:** `guest_id` + **guest JWT** (`data.token`, JWT claim `role: guest`). Persist both locally.  **No auth required** for home/discover: GET `/consumer/categories`, `/consumer/home-slider`, `/consumer/restaurants/_*`, `/consumer/foods/search`, `/consumer/config/_*`.  **Cart:** send `Authorization: Bearer <guest token>` on `/consumer/cart/_*`, **or** legacy query/body `is_guest=true` + `guest_id` (no Bearer).  **After login / Google sign-in:** include `guest_id` in the auth body so the server merges the guest cart into the customer account.  **Guest JWT cannot access:** `/consumer/whoami`, profile, favourites, saved addresses.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();
final String xForwardedFor = xForwardedFor_example; // String | Optional client IP (also taken from connection)
final ConsumerGuestRequestBody consumerGuestRequestBody = {"fcm_token":"optional_firebase_device_token"}; // ConsumerGuestRequestBody | 

try {
    final response = api.consumerGuestRequestPost(xForwardedFor, consumerGuestRequestBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerGuestRequestPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xForwardedFor** | **String**| Optional client IP (also taken from connection) | [optional] 
 **consumerGuestRequestBody** | [**ConsumerGuestRequestBody**](ConsumerGuestRequestBody.md)|  | [optional] 

### Return type

[**ConsumerGuestSessionResponse**](ConsumerGuestSessionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerLoginPost**
> ConsumerLoginResponse consumerLoginPost(consumerLoginBody)

Login customer

Unified login. **manual** — phone or email + password. **social** — Google only (`medium=google`; verifies token server-side; same flow as `/consumer/sign-in-with-google`). **otp** — use POST `/consumer/login/send-otp` then `/consumer/login/verify-otp` (not this endpoint). JWT in `data.token` when `data.is_personal_info === 1`; otherwise complete profile via `PUT /consumer/update-profile`. Optional `guest_id` merges guest cart.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();
final ConsumerLoginBody consumerLoginBody = {"login_type":"manual","field_type":"phone","email_or_phone":"+923001234567","password":"password123","guest_id":42}; // ConsumerLoginBody | 

try {
    final response = api.consumerLoginPost(consumerLoginBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumerLoginBody** | [**ConsumerLoginBody**](ConsumerLoginBody.md)|  | 

### Return type

[**ConsumerLoginResponse**](ConsumerLoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerLoginSendOtpPost**
> ApiResponse consumerLoginSendOtpPost(consumerLoginSendOtpPostRequest)

Send login OTP (customer app)

Phone sign-in step 1. Returns **`data.otp`** in the response until SMS is enabled in production. 60s resend cooldown in `data.resend_after_seconds`. Dev OTP often **`123456`**. Phone must match an existing customer account.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();
final ConsumerLoginSendOtpPostRequest consumerLoginSendOtpPostRequest = ; // ConsumerLoginSendOtpPostRequest | 

try {
    final response = api.consumerLoginSendOtpPost(consumerLoginSendOtpPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerLoginSendOtpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumerLoginSendOtpPostRequest** | [**ConsumerLoginSendOtpPostRequest**](ConsumerLoginSendOtpPostRequest.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerLoginVerifyOtpPost**
> ConsumerLoginResponse consumerLoginVerifyOtpPost(consumerLoginVerifyOtpPostRequest)

Verify login OTP (customer app)

Phone sign-in step 2. Returns the same JWT payload as manual login (`data.token`, `login_type: otp`). Optional `guest_id` merges guest cart.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();
final ConsumerLoginVerifyOtpPostRequest consumerLoginVerifyOtpPostRequest = ; // ConsumerLoginVerifyOtpPostRequest | 

try {
    final response = api.consumerLoginVerifyOtpPost(consumerLoginVerifyOtpPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerLoginVerifyOtpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumerLoginVerifyOtpPostRequest** | [**ConsumerLoginVerifyOtpPostRequest**](ConsumerLoginVerifyOtpPostRequest.md)|  | 

### Return type

[**ConsumerLoginResponse**](ConsumerLoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerNotificationsTestGet**
> ApiResponse consumerNotificationsTestGet()





### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();

try {
    final response = api.consumerNotificationsTestGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerNotificationsTestGet: $e\n');
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

# **consumerNotificationsTestPost**
> ApiResponse consumerNotificationsTestPost()





### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();

try {
    final response = api.consumerNotificationsTestPost();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerNotificationsTestPost: $e\n');
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

# **consumerPasswordChangePut**
> ApiResponse consumerPasswordChangePut(authorization, consumerChangePasswordBody)

Change password (logged in)

Settings → change password. Requires Bearer token and current password.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();
final String authorization = Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...; // String | Bearer JWT from POST /consumer/login
final ConsumerChangePasswordBody consumerChangePasswordBody = {"current_password":"password123","password":"newpassword123","confirm_password":"newpassword123"}; // ConsumerChangePasswordBody | 

try {
    final response = api.consumerPasswordChangePut(authorization, consumerChangePasswordBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerPasswordChangePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer JWT from POST /consumer/login | 
 **consumerChangePasswordBody** | [**ConsumerChangePasswordBody**](ConsumerChangePasswordBody.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerPasswordForgotPost**
> ApiResponse consumerPasswordForgotPost(consumerForgotPasswordBody)

Forgot password — send OTP

Consumer app: email OTP (default). Set `field_type: phone` for SMS. Dev/test OTP is `123456` (server log). User must exist with that email/phone.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();
final ConsumerForgotPasswordBody consumerForgotPasswordBody = {"email":"test.user@example.com"}; // ConsumerForgotPasswordBody | 

try {
    final response = api.consumerPasswordForgotPost(consumerForgotPasswordBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerPasswordForgotPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumerForgotPasswordBody** | [**ConsumerForgotPasswordBody**](ConsumerForgotPasswordBody.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerPasswordResetPut**
> ApiResponse consumerPasswordResetPut(consumerPasswordResetBody)

Reset password with OTP

Final forgot-password step. Same identity + `otp` as forgot flow.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();
final ConsumerPasswordResetBody consumerPasswordResetBody = ; // ConsumerPasswordResetBody | 

try {
    final response = api.consumerPasswordResetPut(consumerPasswordResetBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerPasswordResetPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumerPasswordResetBody** | [**ConsumerPasswordResetBody**](ConsumerPasswordResetBody.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerPasswordVerifyOtpPost**
> ApiResponse consumerPasswordVerifyOtpPost(consumerPasswordOtpBody)

Verify forgot-password OTP

Optional step before reset screen. Same `email`/`phone` as forgot. Body field **`otp`** (6 digits).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();
final ConsumerPasswordOtpBody consumerPasswordOtpBody = ; // ConsumerPasswordOtpBody | 

try {
    final response = api.consumerPasswordVerifyOtpPost(consumerPasswordOtpBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerPasswordVerifyOtpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumerPasswordOtpBody** | [**ConsumerPasswordOtpBody**](ConsumerPasswordOtpBody.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerRegisterPost**
> ApiResponse consumerRegisterPost(consumerRegisterBody)

Register customer

Create a consumer account. Email optional but required for email-based forgot password.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();
final ConsumerRegisterBody consumerRegisterBody = ; // ConsumerRegisterBody | 

try {
    final response = api.consumerRegisterPost(consumerRegisterBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerRegisterPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumerRegisterBody** | [**ConsumerRegisterBody**](ConsumerRegisterBody.md)|  | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerSignInWithGooglePost**
> ConsumerSocialLoginResponse consumerSignInWithGooglePost(consumerGoogleSignInBody)

Sign in with Google

Customer Google sign-in (legacy PHP: `POST /auth/login` with `login_type=social`, `medium=google`). App sends Google **id token** (default) or **access token** when `access_token` is `1`. Backend verifies with Google, creates/links user, returns JWT only if profile has name (`is_personal_info`).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getConsumerAuthApi();
final ConsumerGoogleSignInBody consumerGoogleSignInBody = {"token":"eyJhbGciOiJSUzI1NiIs...","email":"user@gmail.com","unique_id":"104823456789012345678","guest_id":42,"verified":"default"}; // ConsumerGoogleSignInBody | 

try {
    final response = api.consumerSignInWithGooglePost(consumerGoogleSignInBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsumerAuthApi->consumerSignInWithGooglePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumerGoogleSignInBody** | [**ConsumerGoogleSignInBody**](ConsumerGoogleSignInBody.md)|  | 

### Return type

[**ConsumerSocialLoginResponse**](ConsumerSocialLoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


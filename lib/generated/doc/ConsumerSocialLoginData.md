# openapi.model.ConsumerSocialLoginData

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **String** | JWT when is_personal_info=1; null until profile has name | [optional] 
**isPhoneVerified** | **int** |  | [optional] 
**isEmailVerified** | **int** |  | [optional] 
**isPersonalInfo** | **int** | 1 if user has f_name (full JWT issued) | [optional] 
**isExistUser** | [**ConsumerSocialLoginExistUser**](ConsumerSocialLoginExistUser.md) |  | [optional] 
**loginType** | **String** |  | [optional] 
**email** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



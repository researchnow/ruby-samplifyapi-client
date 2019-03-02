# SamplifyAPIClient::AuthApi

All URIs are relative to *https://api.uat.pe.researchnow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_code**](AuthApi.md#auth_code) | **POST** /auth/v1/token/code | code auth
[**auth_logout**](AuthApi.md#auth_logout) | **POST** /auth/v1/logout | logout auth
[**auth_password**](AuthApi.md#auth_password) | **POST** /auth/v1/token/password | password auth
[**auth_refresh**](AuthApi.md#auth_refresh) | **POST** /auth/v1/token/refresh | refresh auth


# **auth_code**
> TokenMedia auth_code(payload)

code auth

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::AuthApi.new

payload = SamplifyAPIClient::CodePayload.new # CodePayload | 


begin
  #code auth
  result = api_instance.auth_code(payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling AuthApi->auth_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**CodePayload**](CodePayload.md)|  | 

### Return type

[**TokenMedia**](TokenMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.auth.error+json, application/vnd.token+json



# **auth_logout**
> auth_logout(payload)

logout auth

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::AuthApi.new

payload = SamplifyAPIClient::LogoutPayload.new # LogoutPayload | 


begin
  #logout auth
  api_instance.auth_logout(payload)
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling AuthApi->auth_logout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**LogoutPayload**](LogoutPayload.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.auth.error+json



# **auth_password**
> TokenMedia auth_password(payload)

password auth

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::AuthApi.new

payload = SamplifyAPIClient::TokenPayload.new # TokenPayload | 


begin
  #password auth
  result = api_instance.auth_password(payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling AuthApi->auth_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**TokenPayload**](TokenPayload.md)|  | 

### Return type

[**TokenMedia**](TokenMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.auth.error+json, application/vnd.token+json



# **auth_refresh**
> TokenMedia auth_refresh(payload)

refresh auth

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::AuthApi.new

payload = SamplifyAPIClient::RefreshTokenPayload.new # RefreshTokenPayload | 


begin
  #refresh auth
  result = api_instance.auth_refresh(payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling AuthApi->auth_refresh: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**RefreshTokenPayload**](RefreshTokenPayload.md)|  | 

### Return type

[**TokenMedia**](TokenMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.auth.error+json, application/vnd.token+json




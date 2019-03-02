# SamplifyAPIClient::UsersApi

All URIs are relative to *https://api.uat.pe.researchnow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**users_get_user_info**](UsersApi.md#users_get_user_info) | **GET** /sample/v1/users/info | getUserInfo users


# **users_get_user_info**
> UserInfo users_get_user_info(opts)

getUserInfo users

### Example
```ruby
# load the gem
require 'samplify_api_client'
# setup authorization
SamplifyAPIClient.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SamplifyAPIClient::UsersApi.new

opts = { 
  app_id: 56, # Integer | Only return apps with the given id
  current: true, # BOOLEAN | Only return current app for the user id
  default: true, # BOOLEAN | Only return default app for the user id
  name: 'name_example' # String | Only return apps with the given name
}

begin
  #getUserInfo users
  result = api_instance.users_get_user_info(opts)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling UsersApi->users_get_user_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **Integer**| Only return apps with the given id | [optional] 
 **current** | **BOOLEAN**| Only return current app for the user id | [optional] 
 **default** | **BOOLEAN**| Only return default app for the user id | [optional] 
 **name** | **String**| Only return apps with the given name | [optional] 

### Return type

[**UserInfo**](UserInfo.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.userinfo+json




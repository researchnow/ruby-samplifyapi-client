# SamplifyAPIClient::RespondentApi

All URIs are relative to *https://api.uat.pe.dynata.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**respondent_dedupe**](RespondentApi.md#respondent_dedupe) | **GET** /respondent/dedupe | dedupe respondent
[**respondent_entry**](RespondentApi.md#respondent_entry) | **GET** /respondent/entry | entry respondent
[**respondent_exit**](RespondentApi.md#respondent_exit) | **GET** /respondent/exit | exit respondent


# **respondent_dedupe**
> respondent_dedupe

dedupe respondent

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::RespondentApi.new

begin
  #dedupe respondent
  api_instance.respondent_dedupe
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling RespondentApi->respondent_dedupe: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: text/html, text/plain



# **respondent_entry**
> respondent_entry

entry respondent

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::RespondentApi.new

begin
  #entry respondent
  api_instance.respondent_entry
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling RespondentApi->respondent_entry: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: text/html, text/plain



# **respondent_exit**
> respondent_exit

exit respondent

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::RespondentApi.new

begin
  #exit respondent
  api_instance.respondent_exit
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling RespondentApi->respondent_exit: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: text/html, text/plain




# SamplifyAPIClient::DefaultApi

All URIs are relative to *https://api.uat.pe.researchnow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**swaggerswagger_json**](DefaultApi.md#swaggerswagger_json) | **GET** /swagger.json | Download public/swagger/swagger.json
[**swaggerswagger_yaml**](DefaultApi.md#swaggerswagger_yaml) | **GET** /swagger.yaml | Download public/swagger/swagger.yaml


# **swaggerswagger_json**
> File swaggerswagger_json

Download public/swagger/swagger.json

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::DefaultApi.new

begin
  #Download public/swagger/swagger.json
  result = api_instance.swaggerswagger_json
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling DefaultApi->swaggerswagger_json: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/json, application/xml, application/gob, application/x-gob



# **swaggerswagger_yaml**
> File swaggerswagger_yaml

Download public/swagger/swagger.yaml

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::DefaultApi.new

begin
  #Download public/swagger/swagger.yaml
  result = api_instance.swaggerswagger_yaml
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling DefaultApi->swaggerswagger_yaml: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/json, application/xml, application/gob, application/x-gob




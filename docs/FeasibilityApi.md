# SamplifyAPIClient::FeasibilityApi

All URIs are relative to *https://api.uat.pe.researchnow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**feasibility_show**](FeasibilityApi.md#feasibility_show) | **GET** /sample/v1/projects/{extProjectId}/feasibility | show feasibility


# **feasibility_show**
> Feasibility feasibility_show(ext_project_id)

show feasibility

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

api_instance = SamplifyAPIClient::FeasibilityApi.new

ext_project_id = 'ext_project_id_example' # String | 


begin
  #show feasibility
  result = api_instance.feasibility_show(ext_project_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling FeasibilityApi->feasibility_show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**|  | 

### Return type

[**Feasibility**](Feasibility.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.feasibility+json




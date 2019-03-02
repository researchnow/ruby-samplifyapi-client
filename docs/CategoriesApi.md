# SamplifyAPIClient::CategoriesApi

All URIs are relative to *https://api.uat.pe.researchnow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**categories_list**](CategoriesApi.md#categories_list) | **GET** /sample/v1/categories/surveyTopics | list categories


# **categories_list**
> Categories categories_list(opts)

list categories

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

api_instance = SamplifyAPIClient::CategoriesApi.new

opts = { 
  description: 'description_example', # String | Only return categories with the given description
  id: 'id_example', # String | Only return categories with the given id
  limit: 10, # Integer | Maximum number of categories to return
  name: 'name_example', # String | Only return categories with the given name
  offset: 0, # Integer | The first zero-based offset category to return
  sort: ['sort_example'] # Array<String> | Sort the categories by the given key(s)
}

begin
  #list categories
  result = api_instance.categories_list(opts)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling CategoriesApi->categories_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **description** | **String**| Only return categories with the given description | [optional] 
 **id** | **String**| Only return categories with the given id | [optional] 
 **limit** | **Integer**| Maximum number of categories to return | [optional] [default to 10]
 **name** | **String**| Only return categories with the given name | [optional] 
 **offset** | **Integer**| The first zero-based offset category to return | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the categories by the given key(s) | [optional] 

### Return type

[**Categories**](Categories.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.categories+json




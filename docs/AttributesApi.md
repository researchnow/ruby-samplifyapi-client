# SamplifyAPIClient::AttributesApi

All URIs are relative to *https://api.uat.pe.researchnow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attributes_list**](AttributesApi.md#attributes_list) | **GET** /sample/v1/attributes/{countryIsoCode}/{languageIsoCode} | list attributes


# **attributes_list**
> Attributes attributes_list(country_iso_code, language_iso_code, opts)

list attributes

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

api_instance = SamplifyAPIClient::AttributesApi.new

country_iso_code = 'country_iso_code_example' # String | Country ISO code

language_iso_code = 'language_iso_code_example' # String | Language ISO code

opts = { 
  id: 'id_example', # String | Only return attributes with the given id
  limit: 10, # Integer | Maximum number of attributes to return
  name: 'name_example', # String | Only return attributes with the given name
  offset: 0, # Integer | The first zero-based offset attribute to return
  sort: ['sort_example'], # Array<String> | Sort the attributes by the given key(s)
  text: 'text_example' # String | Only return attributes with the given text
}

begin
  #list attributes
  result = api_instance.attributes_list(country_iso_code, language_iso_code, opts)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling AttributesApi->attributes_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_iso_code** | **String**| Country ISO code | 
 **language_iso_code** | **String**| Language ISO code | 
 **id** | **String**| Only return attributes with the given id | [optional] 
 **limit** | **Integer**| Maximum number of attributes to return | [optional] [default to 10]
 **name** | **String**| Only return attributes with the given name | [optional] 
 **offset** | **Integer**| The first zero-based offset attribute to return | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the attributes by the given key(s) | [optional] 
 **text** | **String**| Only return attributes with the given text | [optional] 

### Return type

[**Attributes**](Attributes.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.attributes+json




# SamplifyAPIClient::CountriesApi

All URIs are relative to *https://api.dev.pe.dynata.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countries_list**](CountriesApi.md#countries_list) | **GET** /sample/v1/countries | list countries


# **countries_list**
> Countries countries_list(opts)

list countries

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

api_instance = SamplifyAPIClient::CountriesApi.new

opts = { 
  country_name: 'country_name_example', # String | Only return countries with the given name
  id: 'id_example', # String | Only return countries with the given id
  iso_code: 'iso_code_example', # String | Only return countries with the given ISO code
  limit: 10, # Integer | Maximum number of countries to return
  offset: 0, # Integer | The first zero-based offset country to return
  sort: ['sort_example'] # Array<String> | Sort the countries by the given key(s)
}

begin
  #list countries
  result = api_instance.countries_list(opts)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling CountriesApi->countries_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_name** | **String**| Only return countries with the given name | [optional] 
 **id** | **String**| Only return countries with the given id | [optional] 
 **iso_code** | **String**| Only return countries with the given ISO code | [optional] 
 **limit** | **Integer**| Maximum number of countries to return | [optional] [default to 10]
 **offset** | **Integer**| The first zero-based offset country to return | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the countries by the given key(s) | [optional] 

### Return type

[**Countries**](Countries.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.countries+json




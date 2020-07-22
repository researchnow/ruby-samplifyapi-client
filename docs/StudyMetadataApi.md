# SamplifyAPIClient::StudyMetadataApi

All URIs are relative to *https://api.uat.pe.dynata.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**study_metadata_list**](StudyMetadataApi.md#study_metadata_list) | **GET** /sample/v1/studyMetadata | list studyMetadata


# **study_metadata_list**
> StudyMetadata study_metadata_list(opts)

list studyMetadata

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

api_instance = SamplifyAPIClient::StudyMetadataApi.new

opts = { 
  description: 'description_example', # String | Only return categories with the given description
  id: 'id_example', # String | Only return categories with the given id
  limit: 10, # Integer | Maximum number of studyMetadata to return
  name: 'name_example', # String | Only return categories with the given name
  offset: 0, # Integer | The first zero-based offset studyMetadata to return
  sort: ['sort_example'] # Array<String> | Sort the studyMetadata by the given key(s)
}

begin
  #list studyMetadata
  result = api_instance.study_metadata_list(opts)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling StudyMetadataApi->study_metadata_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **description** | **String**| Only return categories with the given description | [optional] 
 **id** | **String**| Only return categories with the given id | [optional] 
 **limit** | **Integer**| Maximum number of studyMetadata to return | [optional] [default to 10]
 **name** | **String**| Only return categories with the given name | [optional] 
 **offset** | **Integer**| The first zero-based offset studyMetadata to return | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the studyMetadata by the given key(s) | [optional] 

### Return type

[**StudyMetadata**](StudyMetadata.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.studymetadata+json




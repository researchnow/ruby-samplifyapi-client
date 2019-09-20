# SamplifyAPIClient::SampleSourcesApi

All URIs are relative to *https://api.dev.pe.dynata.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sample_sources_list**](SampleSourcesApi.md#sample_sources_list) | **GET** /sample/v1/sources | list sampleSources


# **sample_sources_list**
> SampleSources sample_sources_list(opts)

list sampleSources

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

api_instance = SamplifyAPIClient::SampleSourcesApi.new

opts = { 
  id: 56, # Integer | Only return sources with the given id
  limit: 10, # Integer | Maximum number of sources to return
  name: 'name_example', # String | Only return sources with the given name
  offset: 0, # Integer | The first zero-based offset source to return
  sort: ['sort_example'], # Array<String> | Sort the sources by the given key(s)
  source: 'source_example', # String | Only return source with the given source
  survey_topic: 'survey_topic_example' # String | Only return sources with the given surveyTopic
}

begin
  #list sampleSources
  result = api_instance.sample_sources_list(opts)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling SampleSourcesApi->sample_sources_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Only return sources with the given id | [optional] 
 **limit** | **Integer**| Maximum number of sources to return | [optional] [default to 10]
 **name** | **String**| Only return sources with the given name | [optional] 
 **offset** | **Integer**| The first zero-based offset source to return | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the sources by the given key(s) | [optional] 
 **source** | **String**| Only return source with the given source | [optional] 
 **survey_topic** | **String**| Only return sources with the given surveyTopic | [optional] 

### Return type

[**SampleSources**](SampleSources.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.samplesources+json




# SamplifyAPIClient::AudienceTemplatesApi

All URIs are relative to *https://api.uat.pe.dynata.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**audience_templates_create**](AudienceTemplatesApi.md#audience_templates_create) | **POST** /sample/v1/templates/quotaPlan | create audienceTemplates
[**audience_templates_delete**](AudienceTemplatesApi.md#audience_templates_delete) | **DELETE** /sample/v1/templates/quotaPlan/{templateId} | delete audienceTemplates
[**audience_templates_list**](AudienceTemplatesApi.md#audience_templates_list) | **GET** /sample/v1/templates/quotaPlan/{countryIsoCode}/{languageIsoCode} | list audienceTemplates
[**audience_templates_update**](AudienceTemplatesApi.md#audience_templates_update) | **POST** /sample/v1/templates/quotaPlan/{templateId} | update audienceTemplates


# **audience_templates_create**
> Template audience_templates_create(payload)

create audienceTemplates

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

api_instance = SamplifyAPIClient::AudienceTemplatesApi.new

payload = SamplifyAPIClient::CreateTemplate.new # CreateTemplate | 


begin
  #create audienceTemplates
  result = api_instance.audience_templates_create(payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling AudienceTemplatesApi->audience_templates_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**CreateTemplate**](CreateTemplate.md)|  | 

### Return type

[**Template**](Template.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.app.error+json, application/vnd.template+json



# **audience_templates_delete**
> AppError audience_templates_delete(template_id)

delete audienceTemplates

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

api_instance = SamplifyAPIClient::AudienceTemplatesApi.new

template_id = 'template_id_example' # String | 


begin
  #delete audienceTemplates
  result = api_instance.audience_templates_delete(template_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling AudienceTemplatesApi->audience_templates_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**|  | 

### Return type

[**AppError**](AppError.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.app.error+json



# **audience_templates_list**
> Templates audience_templates_list(country_iso_code, language_iso_code, opts)

list audienceTemplates

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

api_instance = SamplifyAPIClient::AudienceTemplatesApi.new

country_iso_code = 'country_iso_code_example' # String | 

language_iso_code = 'language_iso_code_example' # String | 

opts = { 
  created_at: 'created_at_example', # String | return templates with createdAt date range
  editable: true, # BOOLEAN | return templates with the given value for editable flag
  id: 'id_example', # String | Only return template with the given id
  limit: 10, # Integer | Maximum number of templates to return
  name: 'name_example', # String | Only return templates matching the given name
  offset: 0, # Integer | The first zero-based offset template to return
  sort: ['sort_example'], # Array<String> | Sort the templates by the given key(s)
  state: 'state_example', # String | Only return templates with the given state
  tags: 'tags_example', # String | return templates with the given tags
  updated_at: 'updated_at_example' # String | return templates with updatedAt date range
}

begin
  #list audienceTemplates
  result = api_instance.audience_templates_list(country_iso_code, language_iso_code, opts)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling AudienceTemplatesApi->audience_templates_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_iso_code** | **String**|  | 
 **language_iso_code** | **String**|  | 
 **created_at** | **String**| return templates with createdAt date range | [optional] 
 **editable** | **BOOLEAN**| return templates with the given value for editable flag | [optional] 
 **id** | **String**| Only return template with the given id | [optional] 
 **limit** | **Integer**| Maximum number of templates to return | [optional] [default to 10]
 **name** | **String**| Only return templates matching the given name | [optional] 
 **offset** | **Integer**| The first zero-based offset template to return | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the templates by the given key(s) | [optional] 
 **state** | **String**| Only return templates with the given state | [optional] 
 **tags** | **String**| return templates with the given tags | [optional] 
 **updated_at** | **String**| return templates with updatedAt date range | [optional] 

### Return type

[**Templates**](Templates.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.app.error+json, application/vnd.templates+json



# **audience_templates_update**
> Template audience_templates_update(template_id, payload)

update audienceTemplates

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

api_instance = SamplifyAPIClient::AudienceTemplatesApi.new

template_id = 'template_id_example' # String | 

payload = SamplifyAPIClient::UpdateTemplate.new # UpdateTemplate | 


begin
  #update audienceTemplates
  result = api_instance.audience_templates_update(template_id, payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling AudienceTemplatesApi->audience_templates_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**|  | 
 **payload** | [**UpdateTemplate**](UpdateTemplate.md)|  | 

### Return type

[**Template**](Template.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.app.error+json, application/vnd.template+json




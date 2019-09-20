# SamplifyAPIClient::LineItemsApi

All URIs are relative to *https://api.dev.pe.dynata.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**line_items_close**](LineItemsApi.md#line_items_close) | **POST** /sample/v1/projects/{extProjectId}/lineItems/{extLineItemId}/close | close lineItems
[**line_items_create**](LineItemsApi.md#line_items_create) | **POST** /sample/v1/projects/{extProjectId}/lineItems | create lineItems
[**line_items_get**](LineItemsApi.md#line_items_get) | **GET** /sample/v1/projects/{extProjectId}/lineItems/{extLineItemId} | get lineItems
[**line_items_launch**](LineItemsApi.md#line_items_launch) | **POST** /sample/v1/projects/{extProjectId}/lineItems/{extLineItemId}/launch | launch lineItems
[**line_items_list_line_items**](LineItemsApi.md#line_items_list_line_items) | **GET** /sample/v1/projects/{extProjectId}/lineItems | listLineItems lineItems
[**line_items_pause**](LineItemsApi.md#line_items_pause) | **POST** /sample/v1/projects/{extProjectId}/lineItems/{extLineItemId}/pause | pause lineItems
[**line_items_update**](LineItemsApi.md#line_items_update) | **POST** /sample/v1/projects/{extProjectId}/lineItems/{extLineItemId} | update lineItems


# **line_items_close**
> CreateLineItem line_items_close(ext_line_item_id, ext_project_id)

close lineItems

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

api_instance = SamplifyAPIClient::LineItemsApi.new

ext_line_item_id = 'ext_line_item_id_example' # String | 

ext_project_id = 'ext_project_id_example' # String | 


begin
  #close lineItems
  result = api_instance.line_items_close(ext_line_item_id, ext_project_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling LineItemsApi->line_items_close: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_line_item_id** | **String**|  | 
 **ext_project_id** | **String**|  | 

### Return type

[**CreateLineItem**](CreateLineItem.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.createlineitem+json



# **line_items_create**
> CreateLineItem line_items_create(ext_project_id, payload)

create lineItems

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

api_instance = SamplifyAPIClient::LineItemsApi.new

ext_project_id = 'ext_project_id_example' # String | 

payload = SamplifyAPIClient::LineItemData.new # LineItemData | 


begin
  #create lineItems
  result = api_instance.line_items_create(ext_project_id, payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling LineItemsApi->line_items_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**|  | 
 **payload** | [**LineItemData**](LineItemData.md)|  | 

### Return type

[**CreateLineItem**](CreateLineItem.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.createlineitem+json



# **line_items_get**
> CreateLineItem line_items_get(ext_line_item_id, ext_project_id)

get lineItems

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

api_instance = SamplifyAPIClient::LineItemsApi.new

ext_line_item_id = 'ext_line_item_id_example' # String | 

ext_project_id = 'ext_project_id_example' # String | 


begin
  #get lineItems
  result = api_instance.line_items_get(ext_line_item_id, ext_project_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling LineItemsApi->line_items_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_line_item_id** | **String**|  | 
 **ext_project_id** | **String**|  | 

### Return type

[**CreateLineItem**](CreateLineItem.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.app.error+json, application/vnd.createlineitem+json



# **line_items_launch**
> CreateLineItem line_items_launch(ext_line_item_id, ext_project_id)

launch lineItems

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

api_instance = SamplifyAPIClient::LineItemsApi.new

ext_line_item_id = 'ext_line_item_id_example' # String | 

ext_project_id = 'ext_project_id_example' # String | 


begin
  #launch lineItems
  result = api_instance.line_items_launch(ext_line_item_id, ext_project_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling LineItemsApi->line_items_launch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_line_item_id** | **String**|  | 
 **ext_project_id** | **String**|  | 

### Return type

[**CreateLineItem**](CreateLineItem.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.createlineitem+json



# **line_items_list_line_items**
> LineItems line_items_list_line_items(ext_project_id, opts)

listLineItems lineItems

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

api_instance = SamplifyAPIClient::LineItemsApi.new

ext_project_id = 'ext_project_id_example' # String | External Project ID

opts = { 
  country_iso_code: 'country_iso_code_example', # String | Only return line items with the given country ISO Code
  ext_line_item_id: 'ext_line_item_id_example', # String | Only return line items with the given extLineItemId
  language_iso_code: 'language_iso_code_example', # String | Only return line items with the given language ISO Code
  limit: 10, # Integer | Maximum number of line items to return
  offset: 0, # Integer | The first zero-based offset line item to return
  sort: ['sort_example'], # Array<String> | Sort the line items by the given key(s)
  state: 'state_example', # String | Only return lineitems with the given state
  state_reason: 'state_reason_example', # String | Only return line items with the given state reason
  title: 'title_example' # String | Only return line items with the given title
}

begin
  #listLineItems lineItems
  result = api_instance.line_items_list_line_items(ext_project_id, opts)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling LineItemsApi->line_items_list_line_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**| External Project ID | 
 **country_iso_code** | **String**| Only return line items with the given country ISO Code | [optional] 
 **ext_line_item_id** | **String**| Only return line items with the given extLineItemId | [optional] 
 **language_iso_code** | **String**| Only return line items with the given language ISO Code | [optional] 
 **limit** | **Integer**| Maximum number of line items to return | [optional] [default to 10]
 **offset** | **Integer**| The first zero-based offset line item to return | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the line items by the given key(s) | [optional] 
 **state** | **String**| Only return lineitems with the given state | [optional] 
 **state_reason** | **String**| Only return line items with the given state reason | [optional] 
 **title** | **String**| Only return line items with the given title | [optional] 

### Return type

[**LineItems**](LineItems.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.lineitems+json



# **line_items_pause**
> CreateLineItem line_items_pause(ext_line_item_id, ext_project_id)

pause lineItems

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

api_instance = SamplifyAPIClient::LineItemsApi.new

ext_line_item_id = 'ext_line_item_id_example' # String | 

ext_project_id = 'ext_project_id_example' # String | 


begin
  #pause lineItems
  result = api_instance.line_items_pause(ext_line_item_id, ext_project_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling LineItemsApi->line_items_pause: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_line_item_id** | **String**|  | 
 **ext_project_id** | **String**|  | 

### Return type

[**CreateLineItem**](CreateLineItem.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.createlineitem+json



# **line_items_update**
> CreateLineItem line_items_update(ext_line_item_id, ext_project_id, payload)

update lineItems

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

api_instance = SamplifyAPIClient::LineItemsApi.new

ext_line_item_id = 'ext_line_item_id_example' # String | 

ext_project_id = 'ext_project_id_example' # String | 

payload = SamplifyAPIClient::UpdateLineItem.new # UpdateLineItem | 


begin
  #update lineItems
  result = api_instance.line_items_update(ext_line_item_id, ext_project_id, payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling LineItemsApi->line_items_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_line_item_id** | **String**|  | 
 **ext_project_id** | **String**|  | 
 **payload** | [**UpdateLineItem**](UpdateLineItem.md)|  | 

### Return type

[**CreateLineItem**](CreateLineItem.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.createlineitem+json




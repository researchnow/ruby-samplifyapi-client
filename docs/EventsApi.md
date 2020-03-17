# SamplifyAPIClient::EventsApi

All URIs are relative to *https://api.dev.pe.dynata.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**events_accept**](EventsApi.md#events_accept) | **POST** /sample/v1/events/{eventId}/accept | accept events
[**events_createproject**](EventsApi.md#events_createproject) | **POST** /sample/v1/events/lineItems/createproject | createproject events
[**events_get**](EventsApi.md#events_get) | **GET** /sample/v1/events/{eventId} | get events
[**events_invoiceproject**](EventsApi.md#events_invoiceproject) | **POST** /sample/v1/events/projects/invoice | invoiceproject events
[**events_list**](EventsApi.md#events_list) | **GET** /sample/v1/events | list events
[**events_reject**](EventsApi.md#events_reject) | **POST** /sample/v1/events/{eventId}/reject | reject events
[**events_reprice**](EventsApi.md#events_reprice) | **POST** /sample/v1/events/lineItems/reprice | reprice events
[**events_state_change**](EventsApi.md#events_state_change) | **POST** /sample/v1/events/lineItems/stateChange | stateChange events


# **events_accept**
> Event events_accept(event_id)

accept events

Accept event

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

api_instance = SamplifyAPIClient::EventsApi.new

event_id = 56 # Integer | Event ID


begin
  #accept events
  result = api_instance.events_accept(event_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling EventsApi->events_accept: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | **Integer**| Event ID | 

### Return type

[**Event**](Event.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.event+json



# **events_createproject**
> CreateProject events_createproject(payload)

createproject events

createproject event.

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::EventsApi.new

payload = SamplifyAPIClient::CreateProjectPayload.new # CreateProjectPayload | 


begin
  #createproject events
  result = api_instance.events_createproject(payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling EventsApi->events_createproject: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**CreateProjectPayload**](CreateProjectPayload.md)|  | 

### Return type

[**CreateProject**](CreateProject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.createproject+json



# **events_get**
> Event events_get(event_id)

get events

Get event

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

api_instance = SamplifyAPIClient::EventsApi.new

event_id = 56 # Integer | Event ID


begin
  #get events
  result = api_instance.events_get(event_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling EventsApi->events_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | **Integer**| Event ID | 

### Return type

[**Event**](Event.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.event+json



# **events_invoiceproject**
> InvoiceProject events_invoiceproject(payload)

invoiceproject events

invoiceproject event.

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::EventsApi.new

payload = SamplifyAPIClient::InvoiceProjectPayload.new # InvoiceProjectPayload | 


begin
  #invoiceproject events
  result = api_instance.events_invoiceproject(payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling EventsApi->events_invoiceproject: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**InvoiceProjectPayload**](InvoiceProjectPayload.md)|  | 

### Return type

[**InvoiceProject**](InvoiceProject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.invoiceproject+json



# **events_list**
> Events events_list(opts)

list events

List events.

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

api_instance = SamplifyAPIClient::EventsApi.new

opts = { 
  event_type: 'event_type_example', # String | Only return events with the given eventType
  ext_line_item_id: 'ext_line_item_id_example', # String | Only return events with the given external line item id
  ext_project_id: 'ext_project_id_example', # String | Only return events with the given external project id
  limit: 10, # Integer | Maximum number of events to return
  offset: 0, # Integer | The first zero-based offset event to return
  sort: ['sort_example'] # Array<String> | Sort the events by the given key(s)
}

begin
  #list events
  result = api_instance.events_list(opts)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling EventsApi->events_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_type** | **String**| Only return events with the given eventType | [optional] 
 **ext_line_item_id** | **String**| Only return events with the given external line item id | [optional] 
 **ext_project_id** | **String**| Only return events with the given external project id | [optional] 
 **limit** | **Integer**| Maximum number of events to return | [optional] [default to 10]
 **offset** | **Integer**| The first zero-based offset event to return | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the events by the given key(s) | [optional] 

### Return type

[**Events**](Events.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.events+json



# **events_reject**
> Event events_reject(event_id)

reject events

Reject event

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

api_instance = SamplifyAPIClient::EventsApi.new

event_id = 56 # Integer | Event ID


begin
  #reject events
  result = api_instance.events_reject(event_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling EventsApi->events_reject: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | **Integer**| Event ID | 

### Return type

[**Event**](Event.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.event+json



# **events_reprice**
> Reprice events_reprice(payload)

reprice events

Line item repricing event.

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::EventsApi.new

payload = SamplifyAPIClient::RepricePayload.new # RepricePayload | 


begin
  #reprice events
  result = api_instance.events_reprice(payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling EventsApi->events_reprice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**RepricePayload**](RepricePayload.md)|  | 

### Return type

[**Reprice**](Reprice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.reprice+json



# **events_state_change**
> StateChange events_state_change(payload)

stateChange events

Line item state change event.

### Example
```ruby
# load the gem
require 'samplify_api_client'

api_instance = SamplifyAPIClient::EventsApi.new

payload = SamplifyAPIClient::StateChangePayload.new # StateChangePayload | 


begin
  #stateChange events
  result = api_instance.events_state_change(payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling EventsApi->events_state_change: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**StateChangePayload**](StateChangePayload.md)|  | 

### Return type

[**StateChange**](StateChange.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.statechange+json




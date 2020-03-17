# SamplifyAPIClient::OrderDetailsApi

All URIs are relative to *https://api.dev.pe.dynata.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order_details_get_order_number_details**](OrderDetailsApi.md#order_details_get_order_number_details) | **GET** /internal/v1/orderdetails/{orderNumber}/ | getOrderNumberDetails orderDetails


# **order_details_get_order_number_details**
> OrderDetail order_details_get_order_number_details(order_number)

getOrderNumberDetails orderDetails

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

api_instance = SamplifyAPIClient::OrderDetailsApi.new

order_number = 'order_number_example' # String | 


begin
  #getOrderNumberDetails orderDetails
  result = api_instance.order_details_get_order_number_details(order_number)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling OrderDetailsApi->order_details_get_order_number_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_number** | **String**|  | 

### Return type

[**OrderDetail**](OrderDetail.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.orderdetail+json




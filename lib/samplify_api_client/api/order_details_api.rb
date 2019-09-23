=begin
#Samplify API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module SamplifyAPIClient
  class OrderDetailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # getOrderNumberDetails orderDetails
    # @param order_number 
    # @param [Hash] opts the optional parameters
    # @return [OrderDetail]
    def order_details_get_order_number_details(order_number, opts = {})
      data, _status_code, _headers = order_details_get_order_number_details_with_http_info(order_number, opts)
      data
    end

    # getOrderNumberDetails orderDetails
    # @param order_number 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderDetail, Fixnum, Hash)>] OrderDetail data, response status code and response headers
    def order_details_get_order_number_details_with_http_info(order_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderDetailsApi.order_details_get_order_number_details ...'
      end
      # verify the required parameter 'order_number' is set
      if @api_client.config.client_side_validation && order_number.nil?
        fail ArgumentError, "Missing the required parameter 'order_number' when calling OrderDetailsApi.order_details_get_order_number_details"
      end
      # resource path
      local_var_path = '/sample/v1/orderdetails/{orderNumber}/'.sub('{' + 'orderNumber' + '}', order_number.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.orderdetail+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml', 'application/gob', 'application/x-gob'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrderDetail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderDetailsApi#order_details_get_order_number_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
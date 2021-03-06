=begin
#Samplify API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'uri'

module SamplifyAPIClient
  class CategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # list categories
    # @param [Hash] opts the optional parameters
    # @option opts [String] :description Only return categories with the given description
    # @option opts [String] :id Only return categories with the given id
    # @option opts [Integer] :limit Maximum number of categories to return (default to 10)
    # @option opts [String] :name Only return categories with the given name
    # @option opts [Integer] :offset The first zero-based offset category to return (default to 0)
    # @option opts [Array<String>] :sort Sort the categories by the given key(s)
    # @return [Categories]
    def categories_list(opts = {})
      data, _status_code, _headers = categories_list_with_http_info(opts)
      data
    end

    # list categories
    # @param [Hash] opts the optional parameters
    # @option opts [String] :description Only return categories with the given description
    # @option opts [String] :id Only return categories with the given id
    # @option opts [Integer] :limit Maximum number of categories to return
    # @option opts [String] :name Only return categories with the given name
    # @option opts [Integer] :offset The first zero-based offset category to return
    # @option opts [Array<String>] :sort Sort the categories by the given key(s)
    # @return [Array<(Categories, Fixnum, Hash)>] Categories data, response status code and response headers
    def categories_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoriesApi.categories_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CategoriesApi.categories_list, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CategoriesApi.categories_list, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling CategoriesApi.categories_list, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/sample/v1/categories/surveyTopics'

      # query parameters
      query_params = {}
      query_params[:'description'] = opts[:'description'] if !opts[:'description'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :multi) if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.categories+json'])
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
        :return_type => 'Categories')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoriesApi#categories_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

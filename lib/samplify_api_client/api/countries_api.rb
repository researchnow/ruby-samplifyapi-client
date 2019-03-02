=begin
#Samplify API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'uri'

module SamplifyAPIClient
  class CountriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # list countries
    # @param [Hash] opts the optional parameters
    # @option opts [String] :country_name Only return countries with the given name
    # @option opts [String] :id Only return countries with the given id
    # @option opts [String] :iso_code Only return countries with the given ISO code
    # @option opts [Integer] :limit Maximum number of countries to return (default to 10)
    # @option opts [Integer] :offset The first zero-based offset country to return (default to 0)
    # @option opts [Array<String>] :sort Sort the countries by the given key(s)
    # @return [Countries]
    def countries_list(opts = {})
      data, _status_code, _headers = countries_list_with_http_info(opts)
      data
    end

    # list countries
    # @param [Hash] opts the optional parameters
    # @option opts [String] :country_name Only return countries with the given name
    # @option opts [String] :id Only return countries with the given id
    # @option opts [String] :iso_code Only return countries with the given ISO code
    # @option opts [Integer] :limit Maximum number of countries to return
    # @option opts [Integer] :offset The first zero-based offset country to return
    # @option opts [Array<String>] :sort Sort the countries by the given key(s)
    # @return [Array<(Countries, Fixnum, Hash)>] Countries data, response status code and response headers
    def countries_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CountriesApi.countries_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CountriesApi.countries_list, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CountriesApi.countries_list, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling CountriesApi.countries_list, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/sample/v1/countries'

      # query parameters
      query_params = {}
      query_params[:'countryName'] = opts[:'country_name'] if !opts[:'country_name'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'isoCode'] = opts[:'iso_code'] if !opts[:'iso_code'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :multi) if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.countries+json'])
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
        :return_type => 'Countries')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CountriesApi#countries_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

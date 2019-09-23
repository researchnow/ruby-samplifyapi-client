=begin
#Samplify API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'

# Unit tests for SamplifyAPIClient::OrderDetailsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrderDetailsApi' do
  before do
    # run before each test
    @instance = SamplifyAPIClient::OrderDetailsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderDetailsApi' do
    it 'should create an instance of OrderDetailsApi' do
      expect(@instance).to be_instance_of(SamplifyAPIClient::OrderDetailsApi)
    end
  end

  # unit tests for order_details_get_order_number_details
  # getOrderNumberDetails orderDetails
  # @param order_number 
  # @param [Hash] opts the optional parameters
  # @return [OrderDetail]
  describe 'order_details_get_order_number_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
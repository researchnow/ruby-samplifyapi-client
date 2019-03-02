=begin
#Samplify API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SamplifyAPIClient::AuthApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthApi' do
  before do
    # run before each test
    @instance = SamplifyAPIClient::AuthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthApi' do
    it 'should create an instance of AuthApi' do
      expect(@instance).to be_instance_of(SamplifyAPIClient::AuthApi)
    end
  end

  # unit tests for auth_code
  # code auth
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [TokenMedia]
  describe 'auth_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for auth_logout
  # logout auth
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'auth_logout test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for auth_password
  # password auth
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [TokenMedia]
  describe 'auth_password test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for auth_refresh
  # refresh auth
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [TokenMedia]
  describe 'auth_refresh test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

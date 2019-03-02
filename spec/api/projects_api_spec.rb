=begin
#Samplify API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SamplifyAPIClient::ProjectsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProjectsApi' do
  before do
    # run before each test
    @instance = SamplifyAPIClient::ProjectsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProjectsApi' do
    it 'should create an instance of ProjectsApi' do
      expect(@instance).to be_instance_of(SamplifyAPIClient::ProjectsApi)
    end
  end

  # unit tests for projects_buy
  # buy projects
  # @param ext_project_id 
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [BuyProject]
  describe 'projects_buy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_close
  # close projects
  # @param ext_project_id 
  # @param [Hash] opts the optional parameters
  # @return [ProjectAction]
  describe 'projects_close test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_create
  # create projects
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [ProjectResponse]
  describe 'projects_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_get
  # get projects
  # @param ext_project_id 
  # @param [Hash] opts the optional parameters
  # @return [ProjectResponse]
  describe 'projects_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_get_report
  # getReport projects
  # @param ext_project_id 
  # @param [Hash] opts the optional parameters
  # @return [ProjectReport]
  describe 'projects_get_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_get_reports
  # getReports projects
  # @param ext_project_id Only return project with the given external project ID
  # @param [Hash] opts the optional parameters
  # @return [ProjectReports]
  describe 'projects_get_reports test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_get_survey_end_links
  # getSurveyEndLinks projects
  # @param ext_project_id 
  # @param survey_id 
  # @param [Hash] opts the optional parameters
  # @return [ProjectSurveyEndLinks]
  describe 'projects_get_survey_end_links test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_invoices
  # invoices projects
  # @param ext_project_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'projects_invoices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_list
  # list projects
  # @param [Hash] opts the optional parameters
  # @option opts [String] :created_at return projects with createdAt start date
  # @option opts [String] :ext_project_id Only return project with the given external project id
  # @option opts [Integer] :limit Maximum number of projects to return
  # @option opts [Integer] :offset The first zero-based offset project to return
  # @option opts [String] :scope Only return projects within the given scope
  # @option opts [Array<String>] :sort Sort the projects by the given key(s)
  # @option opts [String] :state Only return projects with the given state
  # @option opts [String] :title Only return projects with the given title
  # @return [Projects]
  describe 'projects_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_reconcile
  # reconcile projects
  # @param ext_project_id 
  # @param file File
  # @param message Message
  # @param [Hash] opts the optional parameters
  # @return [Reconcile]
  describe 'projects_reconcile test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_update
  # update projects
  # @param ext_project_id 
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [ProjectResponse]
  describe 'projects_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

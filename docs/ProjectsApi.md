# SamplifyAPIClient::ProjectsApi

All URIs are relative to *https://api.uat.pe.dynata.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projects_buy**](ProjectsApi.md#projects_buy) | **POST** /sample/v1/projects/{extProjectId}/buy | buy projects
[**projects_close**](ProjectsApi.md#projects_close) | **POST** /sample/v1/projects/{extProjectId}/close | close projects
[**projects_create**](ProjectsApi.md#projects_create) | **POST** /sample/v1/projects | create projects
[**projects_get**](ProjectsApi.md#projects_get) | **GET** /sample/v1/projects/{extProjectId} | get projects
[**projects_get_detailed_report**](ProjectsApi.md#projects_get_detailed_report) | **GET** /sample/v1/projects/{extProjectId}/detailedReport | getDetailedReport projects
[**projects_get_invoice_summary**](ProjectsApi.md#projects_get_invoice_summary) | **GET** /sample/v1/projects/invoices/summary | getInvoiceSummary projects
[**projects_get_report**](ProjectsApi.md#projects_get_report) | **GET** /sample/v1/projects/{extProjectId}/report | getReport projects
[**projects_get_reports**](ProjectsApi.md#projects_get_reports) | **GET** /sample/v1/projects/report | getReports projects
[**projects_get_survey_end_links**](ProjectsApi.md#projects_get_survey_end_links) | **GET** /sample/v1/projects/{extProjectId}/surveys/{surveyId}/links | getSurveyEndLinks projects
[**projects_invoices**](ProjectsApi.md#projects_invoices) | **GET** /sample/v1/projects/{extProjectId}/invoices | invoices projects
[**projects_list**](ProjectsApi.md#projects_list) | **GET** /sample/v1/projects | list projects
[**projects_reconcile**](ProjectsApi.md#projects_reconcile) | **POST** /sample/v1/projects/{extProjectId}/reconcile | reconcile projects
[**projects_update**](ProjectsApi.md#projects_update) | **POST** /sample/v1/projects/{extProjectId} | update projects


# **projects_buy**
> BuyProject projects_buy(ext_project_id, payload)

buy projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

ext_project_id = 'ext_project_id_example' # String | 

payload = SamplifyAPIClient::BuyProjectsPayload.new # BuyProjectsPayload | 


begin
  #buy projects
  result = api_instance.projects_buy(ext_project_id, payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_buy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**|  | 
 **payload** | [**BuyProjectsPayload**](BuyProjectsPayload.md)|  | 

### Return type

[**BuyProject**](BuyProject.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.buyproject+json



# **projects_close**
> ProjectAction projects_close(ext_project_id)

close projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

ext_project_id = 'ext_project_id_example' # String | 


begin
  #close projects
  result = api_instance.projects_close(ext_project_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_close: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**|  | 

### Return type

[**ProjectAction**](ProjectAction.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.project.action+json



# **projects_create**
> ProjectResponse projects_create(payload)

create projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

payload = SamplifyAPIClient::Project.new # Project | 


begin
  #create projects
  result = api_instance.projects_create(payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Project**](Project.md)|  | 

### Return type

[**ProjectResponse**](ProjectResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.create+json



# **projects_get**
> ProjectResponse projects_get(ext_project_id)

get projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

ext_project_id = 'ext_project_id_example' # String | 


begin
  #get projects
  result = api_instance.projects_get(ext_project_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**|  | 

### Return type

[**ProjectResponse**](ProjectResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.app.error+json, application/vnd.create+json



# **projects_get_detailed_report**
> DetailedProjectReport projects_get_detailed_report(ext_project_id)

getDetailedReport projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

ext_project_id = 'ext_project_id_example' # String | 


begin
  #getDetailedReport projects
  result = api_instance.projects_get_detailed_report(ext_project_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_get_detailed_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**|  | 

### Return type

[**DetailedProjectReport**](DetailedProjectReport.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.projects.detailedreport+json



# **projects_get_invoice_summary**
> projects_get_invoice_summary(opts)

getInvoiceSummary projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

opts = { 
  end_date: 'end_date_example', # String | Only return invoice summary of projects closed before this date
  ext_project_id: 'ext_project_id_example', # String | Only return invoice summary of projects with the given external project ids. Multiple projectIds can be given as comma separated values
  limit: 10, # Integer | Maximum number of summaries to return
  offset: 0, # Integer | The first zero-based offset summary to return
  sort: ['sort_example'], # Array<String> | Sort the summaries by the given key(s)
  start_date: 'start_date_example' # String | Only return invoice summary of projects closed after this date
}

begin
  #getInvoiceSummary projects
  api_instance.projects_get_invoice_summary(opts)
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_get_invoice_summary: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **end_date** | **String**| Only return invoice summary of projects closed before this date | [optional] 
 **ext_project_id** | **String**| Only return invoice summary of projects with the given external project ids. Multiple projectIds can be given as comma separated values | [optional] 
 **limit** | **Integer**| Maximum number of summaries to return | [optional] [default to 10]
 **offset** | **Integer**| The first zero-based offset summary to return | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the summaries by the given key(s) | [optional] 
 **start_date** | **String**| Only return invoice summary of projects closed after this date | [optional] 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.app.error+json, text/plain



# **projects_get_report**
> ProjectReport projects_get_report(ext_project_id)

getReport projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

ext_project_id = 'ext_project_id_example' # String | 


begin
  #getReport projects
  result = api_instance.projects_get_report(ext_project_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_get_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**|  | 

### Return type

[**ProjectReport**](ProjectReport.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.projects.report+json



# **projects_get_reports**
> ProjectReports projects_get_reports(ext_project_id)

getReports projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

ext_project_id = 'ext_project_id_example' # String | Only return project with the given external project ID


begin
  #getReports projects
  result = api_instance.projects_get_reports(ext_project_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_get_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**| Only return project with the given external project ID | 

### Return type

[**ProjectReports**](ProjectReports.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.projects.reports+json



# **projects_get_survey_end_links**
> ProjectSurveyEndLinks projects_get_survey_end_links(ext_project_id, survey_id)

getSurveyEndLinks projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

ext_project_id = 'ext_project_id_example' # String | 

survey_id = 'survey_id_example' # String | 


begin
  #getSurveyEndLinks projects
  result = api_instance.projects_get_survey_end_links(ext_project_id, survey_id)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_get_survey_end_links: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**|  | 
 **survey_id** | **String**|  | 

### Return type

[**ProjectSurveyEndLinks**](ProjectSurveyEndLinks.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.projects.survey.endlinks+json



# **projects_invoices**
> projects_invoices(ext_project_id)

invoices projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

ext_project_id = 'ext_project_id_example' # String | 


begin
  #invoices projects
  api_instance.projects_invoices(ext_project_id)
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.app.error+json, text/plain



# **projects_list**
> Projects projects_list(opts)

list projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

opts = { 
  billing_date: 'billing_date_example', # String | return projects with billing date matching the given date range
  billing_id: 'billing_id_example', # String | return projects with billing ID matching the given billing ID
  billing_type: 'billing_type_example', # String | return projects with billing type matching the given billing type
  created_at: 'created_at_example', # String | return projects with createdAt start date
  ext_project_id: 'ext_project_id_example', # String | Only return project with the given external project id
  job_number: 'job_number_example', # String | Only return projects with the given job number
  limit: 10, # Integer | Maximum number of projects to return
  offset: 0, # Integer | The first zero-based offset project to return
  scope: 'scope_example', # String | Only return projects within the given scope
  sort: ['sort_example'], # Array<String> | Sort the projects by the given key(s)
  state: 'state_example', # String | Only return projects with the given state
  title: 'title_example' # String | Only return projects with the given title
}

begin
  #list projects
  result = api_instance.projects_list(opts)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_date** | **String**| return projects with billing date matching the given date range | [optional] 
 **billing_id** | **String**| return projects with billing ID matching the given billing ID | [optional] 
 **billing_type** | **String**| return projects with billing type matching the given billing type | [optional] 
 **created_at** | **String**| return projects with createdAt start date | [optional] 
 **ext_project_id** | **String**| Only return project with the given external project id | [optional] 
 **job_number** | **String**| Only return projects with the given job number | [optional] 
 **limit** | **Integer**| Maximum number of projects to return | [optional] [default to 10]
 **offset** | **Integer**| The first zero-based offset project to return | [optional] [default to 0]
 **scope** | **String**| Only return projects within the given scope | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sort the projects by the given key(s) | [optional] 
 **state** | **String**| Only return projects with the given state | [optional] 
 **title** | **String**| Only return projects with the given title | [optional] 

### Return type

[**Projects**](Projects.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.projects+json



# **projects_reconcile**
> Reconcile projects_reconcile(ext_project_id, file, message)

reconcile projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

ext_project_id = 'ext_project_id_example' # String | 

file = File.new('/path/to/file.txt') # File | File

message = 'message_example' # String | Message


begin
  #reconcile projects
  result = api_instance.projects_reconcile(ext_project_id, file, message)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_reconcile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**|  | 
 **file** | **File**| File | 
 **message** | **String**| Message | 

### Return type

[**Reconcile**](Reconcile.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/vnd.app.error+json, application/vnd.projects.reconcile+json



# **projects_update**
> ProjectResponse projects_update(ext_project_id, payload)

update projects

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

api_instance = SamplifyAPIClient::ProjectsApi.new

ext_project_id = 'ext_project_id_example' # String | 

payload = SamplifyAPIClient::UpdateProjectData.new # UpdateProjectData | 


begin
  #update projects
  result = api_instance.projects_update(ext_project_id, payload)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ext_project_id** | **String**|  | 
 **payload** | [**UpdateProjectData**](UpdateProjectData.md)|  | 

### Return type

[**ProjectResponse**](ProjectResponse.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/vnd.create+json




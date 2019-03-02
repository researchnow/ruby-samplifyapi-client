require 'samplify_api_client'


# Setup authorization
SamplifyAPIClient.configure do |config|
  config.api_key['Authorization'] = ENV['SAMPLIFY_API_ACCESS_TOKEN']
  config.api_key_prefix['Authorization'] = 'Bearer'
  config.debugging = false
end


#Create a Project

projects_api = SamplifyAPIClient::ProjectsApi.new

project = SamplifyAPIClient::Project.new 
project.ext_project_id = 'ProjectRuby_001'
project.notification_emails = ['ssaeed@researchnow.com']
project.title = 'First Ruby Project'
project.category = SamplifyAPIClient::ProjectCategoryData.new 
project.category.survey_topic = ['AUTOMOTIVE']

# line_item = SamplifyAPIClient::LineItems.new 

line_item_data = SamplifyAPIClient::LineItemData.new 
line_item_data.country_iso_code = 'US'
line_item_data.ext_line_item_id = 'MyFirstLineItemID_001'
line_item_data.language_iso_code = 'en'
line_item_data.title = 'My first line item'
line_item_data.days_in_field = 7
line_item_data.delivery_type = 'BALANCED'
line_item_data.indicative_incidence = 50
line_item_data.length_of_interview = 10
line_item_data.required_completes = 100
line_item_data.survey_test_url = 'https://www.google.com'
line_item_data.survey_url = 'https://www.google.com'


targeting_attribute_mc = SamplifyAPIClient::TargetingAttribute.new 
targeting_attribute_mc.operator = 'include'
targeting_attribute_mc.attribute_id = '23501' #own a motorcycle
targeting_attribute_mc.options = ['1'] #owns a motorcycle? - yes!

targeting_attribute_gender_f = SamplifyAPIClient::TargetingAttribute.new 
targeting_attribute_gender_f.operator = 'include'
targeting_attribute_gender_f.attribute_id = '11' #Gender
targeting_attribute_gender_f.options = ['2'] #Female


targeting_attribute_gender_m = SamplifyAPIClient::TargetingAttribute.new 
targeting_attribute_gender_m.operator = 'include'
targeting_attribute_gender_m.attribute_id = '11' #Gender
targeting_attribute_gender_m.options = ['1'] #Male


quota_group = SamplifyAPIClient::QuotaGroupData.new 
quota_group.name = 'Test'

quota_cell_f = SamplifyAPIClient::QuotaCell.new 
quota_cell_f.count = 50
quota_cell_f.quota_nodes = [targeting_attribute_gender_f]

quota_cell_m = SamplifyAPIClient::QuotaCell.new 
quota_cell_m.count = 50
quota_cell_m.quota_nodes = [targeting_attribute_gender_m]

quota_group.quota_cells = [quota_cell_f, quota_cell_m]

quota_plan = SamplifyAPIClient::QuotaPlanData.new 
quota_plan.filters = [targeting_attribute_mc]
quota_plan.quota_groups = [quota_group]


line_item_data.quota_plan = quota_plan
project.line_items = [line_item_data]

begin
  #create projects
  result = projects_api.projects_create(project)
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_create: #{e}"
end


begin
  result = projects_api.projects_get('ProjectRuby_001')
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_create: #{e}"
end


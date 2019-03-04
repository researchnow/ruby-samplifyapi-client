require 'samplify_api_client'


# Setup authorization
SamplifyAPIClient.configure do |config|
  config.api_key['Authorization'] = ENV['SAMPLIFY_API_ACCESS_TOKEN']
  config.api_key_prefix['Authorization'] = 'Bearer'
  config.debugging = false
end


projects_api = SamplifyAPIClient::ProjectsApi.new

buy_item = SamplifyAPIClient::BuyProjectItem.new
buy_item.ext_line_item_id = 'MyFirstLineItemID_001'
buy_item.survey_url = 'https://www.google.com'
buy_item.survey_test_url = 'https://www.google.com'

begin
  result = projects_api.projects_buy('ProjectRuby_001', [buy_item])
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_create: #{e}"
end

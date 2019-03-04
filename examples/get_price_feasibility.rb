require 'samplify_api_client'


# Setup authorization
SamplifyAPIClient.configure do |config|
  config.api_key['Authorization'] = ENV['SAMPLIFY_API_ACCESS_TOKEN']
  config.api_key_prefix['Authorization'] = 'Bearer'
  config.debugging = false
end


feasibility_api = SamplifyAPIClient::FeasibilityApi.new

begin
  result = feasibility_api.feasibility_show('ProjectRuby_001')
  p result
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling FeasibilityApi->feasibility_show: #{e}"
end

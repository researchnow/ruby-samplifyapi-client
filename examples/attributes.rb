require 'samplify_api_client'


# Setup authorization
SamplifyAPIClient.configure do |config|
  config.api_key['Authorization'] = ENV['SAMPLIFY_API_ACCESS_TOKEN']
  config.api_key_prefix['Authorization'] = 'Bearer'
  config.debugging = false
end


# Get the attribute listing
api_instance = SamplifyAPIClient::AttributesApi.new
country_iso_code = 'US'
language_iso_code = 'en_US' 

opts = { 
  limit: 5
}

begin
  #list attributes
  result = api_instance.attributes_list(country_iso_code, language_iso_code, opts)
  result.data.each do |r|
  	p r
  end
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling AttributesApi->attributes_list: #{e}"
end




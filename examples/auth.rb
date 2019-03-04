require 'samplify_api_client'

api_instance = SamplifyAPIClient::AuthApi.new

payload = SamplifyAPIClient::TokenPayload.new # TokenPayload | 
payload.client_id = 'api'
payload.username = ENV['SAMPLIFY_API_USERNAME']
payload.password = ENV['SAMPLIFY_API_PASSWORD']


begin
  result = api_instance.auth_password(payload, {})
  
  cmd = "export SAMPLIFY_API_ACCESS_TOKEN=#{result.access_token}"
  p cmd
rescue SamplifyAPIClient::ApiError => e
  puts "Exception when calling AuthApi->auth_password: #{e}"
end

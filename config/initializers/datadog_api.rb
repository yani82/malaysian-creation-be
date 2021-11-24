DatadogAPIClient::V1.configure do |config|
    config.api_key = ENV['DDTEST_API_KEY']
    config.application_key = ENV['DDTEST_APP_KEY']
end
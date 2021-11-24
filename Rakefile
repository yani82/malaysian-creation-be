# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'rake'
require 'ddtrace'
require 'datadog_api_client'

# Datadog.configure do |c|
#   c.use :rake, options
# end

task :my_task => :environment do
  # Do something task work here...
    api_instance = DatadogAPIClient::V1::DashboardListsAPI.new

    begin
    # Get all dashboard lists
    result = api_instance.list_dashboard_lists
    p result
    rescue DatadogAPIClient::V1::APIError => e
    puts "Error when calling DashboardListsAPI->list_dashboard_lists: #{e}"
    end
end

# Rake::Task['my_task'].invoke

require_relative 'config/application'

Rails.application.load_tasks



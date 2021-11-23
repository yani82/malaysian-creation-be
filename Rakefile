# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'rake'
require 'ddtrace'

Datadog.configure do |c|
  c.use :rake, options
end

task :my_task do
  # Do something task work here...
end

Rake::Task['my_task'].invoke

require_relative 'config/application'

Rails.application.load_tasks

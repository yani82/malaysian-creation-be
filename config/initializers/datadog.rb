require 'ddtrace'

Datadog.configure do |c|
  c.use :rails, options
end
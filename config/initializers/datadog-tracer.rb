Rails.configuration.datadog_trace = {
  enabled: true,
  auto_instrument: false,
  default_service: 'rails-app',
  default_controller_service: 'rails-controller', 
  default_cache_service: 'rails-cache',  
  template_base_path: 'views/', 
  tracer: Datadog.tracer, 
  debug: false,
  trace_agent_hostname: 'localhost', 
  trace_agent_port: '8126',
  env: nil, 
  tags: {} 
}
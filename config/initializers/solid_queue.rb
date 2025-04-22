# For Rails 8.0.2+ configuration
if defined?(ActiveRecord::Base)
  queue_config = ActiveRecord::Base.configurations.configs_for(env_name: Rails.env, name: "primary").configuration_hash
  ActiveRecord::Base.configurations.configurations << ActiveRecord::DatabaseConfigurations::HashConfig.new(Rails.env, "queue", queue_config)
end

# Optional development/test configuration
if Rails.env.development? || Rails.env.test?
  SolidQueue.mode = :inline
end
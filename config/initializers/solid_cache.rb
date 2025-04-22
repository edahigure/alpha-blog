SolidCache.configure do |config|
  # For production (including Render)
  if ENV['RENDER'] || Rails.env.production?
    config.database = :primary  # Use main database
  end

  # For development/test
  if Rails.env.development? || Rails.env.test?
    config.store = :memory_store
  end
end
require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Dodate
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    # config.load_defaults 5.1
    
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins "localhost:8000", "https://jpe442.github.io"
        resource '*', :headers => :any, :credentials => true, :methods => [:get, :post, :options, :patch, :delete, :put]
      end
    end

    # config.action_dispatch.default_headers = {
    #   'Access-Control-Allow-Origin' => 'null',
    #   'Access-Control-Allow-Methods' => %w{GET POST OPTIONS PATCH PUT DELETE}.join(","),
    #   # 'Access-Control-Allow-Methods' => '*',
    #   # 'Access-Control-Request-Method' => '*',
    #   'Access-Control-Allow-Credentials' => 'true',
    #   'Access-Control-Request-Method' => %w{GET POST OPTIONS PATCH PUT DELETE}.join(","),
    #   'Access-Control-Allow-Headers' => 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    #   'Access-Control-Request-Headers' => 'Origin, X-Requested-With, Content-Type, Accept, Authorization'

    # }

  

  # config.load_defaults 5.1


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

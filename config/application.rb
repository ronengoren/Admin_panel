require_relative 'boot'

require 'rails/all'

module DeviseBlog
  class Application < Rails::Application
       config.secret_key_base = ENV["SECRET_KEY_BASE"] # This is the only line you need to add for the Devise gem.
  end
end 

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Railsexamples
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.assets.precompile += ['jquery.js']


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

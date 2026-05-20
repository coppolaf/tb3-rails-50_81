require "rails"
require "action_controller/railtie"
require "action_view/railtie"
require "rails/test_unit/railtie"
require "sprockets/railtie"
require "twitter-bootstrap-rails"

Bundler.require(*Rails.groups)

module AuditDummy
  class Application < Rails::Application
    config.load_defaults 6.1
    config.eager_load = false
    config.secret_key_base = "audit-secret-key-base"
    config.assets.compile = true if config.respond_to?(:assets)
    config.public_file_server.enabled = true if config.respond_to?(:public_file_server)
  end
end

require "rails"
require "action_controller/railtie"
require "action_view/railtie"
require "rails/test_unit/railtie"
require "propshaft"
require "propshaft/railtie"
require "twitter-bootstrap-rails"

module AuditDummy
  class Application < Rails::Application
    config.load_defaults 8.0
    config.eager_load = false
    config.secret_key_base = "audit-secret-key-base"
    config.public_file_server.enabled = true if config.respond_to?(:public_file_server)
  end
end

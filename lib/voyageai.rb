# frozen_string_literal: true

require_relative "voyageai/version"
require_relative "voyageai/configuration"
require_relative "voyageai/client"
require_relative "voyageai/railtie" if defined?(Rails::Railtie)

module VoyageAI
  class Error < StandardError; end

  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end

    def client
      @client ||= Client.new(api_key: configuration.api_key)
    end
  end
end

# Require any additional files or modules here
# require_relative "voyageai/embeddings"
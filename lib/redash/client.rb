# frozen_string_literal: true

require 'faraday'

module Redash
  class Client
    attr_reader :config

    def initialize(config)
      @config = config
    end

    def get(uri, params = {})
      connection.get(uri, params)
    end

    def connection
      @connection ||= build_connection
    end

    private

    def build_connection
      Faraday.new(url: config.host) do |builder|
        builder.authorization('Key', config.api_token) if config.api_token
        builder.adapter Faraday.default_adapter
      end
    end
  end
end

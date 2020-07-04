# frozen_string_literal: true

require 'redash/query'

require 'faraday'
require 'json'

module Redash
  class Client
    attr_reader :config

    def initialize(config)
      @config = config
    end

    # for recent API, please check the follwings
    # https://github.com/getredash/redash/blob/master/redash/handlers/api.py
    def get(uri, params = {})
      connection.get(uri, params)
    end

    def connection
      @connection ||= build_connection
    end

    def queries
      res_queries = JSON.parse(get('api/queries').body)
      queries = []
      res_queries['results'].each do |q|
        q = Redash::Query.new(q)
        queries << q
      end

      queries
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

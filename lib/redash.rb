# frozen_string_literal: true

require 'redash/client'
require 'redash/configuration'

module Redash
  module ClassMethods
    def client
      @client ||= Client.new(config)
    end

    def client=(new_client)
      @client = new_client
    end

    def config
      @config ||= Configuration.new
    end

    def configure
      yield config
    end
  end

  extend ClassMethods
end

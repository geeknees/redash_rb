# frozen_string_literal: true

module Redash
  class Query
    attr_accessor :id, :latest_query_data_id, :name,
                  :description, :query, :query_hash, :schedule,
                  :api_key, :is_archived, :is_draft,
                  :updated_at, :created_at

    def initialize(attrs = {})
      @id = attrs['id']
      @latest_query_data_id = attrs['latest_query_data_id']
      @name = attrs['name']
      @description = attrs['description']
      @query = attrs['query']
      @query_hash = attrs['query_hash']
      @schedule = attrs['schedule']
      @api_key = attrs['api_key']
      @is_archived = attrs['is_archived']
      @is_draft = attrs['is_draft']
      @updated_at = attrs['updated_at']
      @created_at = attrs['created_at']
    end
  end
end

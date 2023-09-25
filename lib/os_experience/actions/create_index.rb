# frozen_string_literal: true

require 'byebug'

module OsExperience::Actions
  module CreateIndex
    def create_index
      client.indices.create index: config.index, body: config.schema
    end
  end
end

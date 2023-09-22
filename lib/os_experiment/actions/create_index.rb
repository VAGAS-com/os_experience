# frozen_string_literal: true

require 'byebug'

module OsExperiment::Actions
  module CreateIndex
    def create_index
      client.indices.create index: config.index, body: config.schema
    end
  end
end

# frozen_string_literal: true

require 'opensearch-ruby'
require 'singleton'
require 'oj'

require 'os_experiment/version'
require 'os_experiment/actions'
require 'os_experiment/config'
require 'os_experiment/documents'
require 'os_experiment/client'

module OsExperiment
  extend OsExperiment::Actions

  class << self
    def reset_index
      delete_index
      create_index
    end

    def configure
      yield OsExperiment::Config.instance
    end
  end

  class Error < StandardError; end
  # Your code goes here...
end

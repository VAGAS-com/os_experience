# frozen_string_literal: true

require 'opensearch-ruby'
require 'singleton'
require 'oj'

require 'os_experience/version'
require 'os_experience/actions'
require 'os_experience/config'
require 'os_experience/documents'
require 'os_experience/client'

module OsExperience
  extend OsExperience::Actions

  class << self
    def reset_index
      delete_index
      create_index
    end

    def configure
      yield OsExperience::Config.instance
    end
  end

  class Error < StandardError; end
  # Your code goes here...
end

# frozen_string_literal: true

require_relative 'actions/create'
require_relative 'actions/create_list'
require_relative 'actions/create_index'
require_relative 'actions/delete_index'

module OsExperience::Actions
  include OsExperience::Actions::Create
  include OsExperience::Actions::CreateList
  include OsExperience::Actions::CreateIndex
  include OsExperience::Actions::DeleteIndex

  private

  def client
    OsExperience::Client.instance.connection(config)
  end

  def config
    OsExperience::Config.instance
  end

  def documents
    OsExperience::Documents.instance.load(config)
  end
end

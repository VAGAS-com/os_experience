# frozen_string_literal: true

require_relative 'actions/create'
require_relative 'actions/create_list'
require_relative 'actions/create_index'
require_relative 'actions/delete_index'

module OsExperiment::Actions
  include OsExperiment::Actions::Create
  include OsExperiment::Actions::CreateList
  include OsExperiment::Actions::CreateIndex
  include OsExperiment::Actions::DeleteIndex

  private

  def client
    OsExperiment::Client.instance.connection(config)
  end

  def config
    OsExperiment::Config.instance
  end

  def documents
    OsExperiment::Documents.instance.load(config)
  end
end

# frozen_string_literal: true

require 'opensearch-ruby'

class OsExperience::Client
  include Singleton

  def connection(config, tries = 0)
    return @conn if @conn&.cluster&.health

    conn = OpenSearch::Client.new(host: config.url)
    conn.cluster.health
    @conn = conn
  rescue Faraday::ConnectionFailed
    raise OsExperience::ConexaoError if config.connection_tries == tries

    sleep config.time_between_connection_tries

    tries += 1
    connection(config, tries)
  end
end

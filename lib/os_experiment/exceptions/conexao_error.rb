# frozen_string_literal: true

class OsExperiment::ConexaoError < StandardError
  def initialize(msg = 'Conexão com ES falhou')
    super msg
  end
end

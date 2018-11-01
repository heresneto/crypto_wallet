class ArrecadacaoController < ApplicationController

  def index
    @arrecadacao = JSON.parse(File.read("app/assets/documents/consolidadinho.json"))
  end

end

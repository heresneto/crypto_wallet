class WelcomeController < ApplicationController
  require "rubygems"
  require "json"

  @jsonObject = ''
  @meu_nome = ''
  @meu_curso = ''


  def index
    @jsonObject = JSON.parse(File.read("app/assets/documents/consolidadinho.json"))
    @meu_curso = params[:curso]
    @meu_nome = params[:nome]
  end
end

class WelcomeController < ApplicationController
  require "rubygems"
  require "json"

  @jsonFile = "nao leu"
  @jsonObject

  def index
    @jsonFile = File.read("app/assets/documents/consolidadinho.json")
    @jsonObject = JSON.parse(@jsonFile)
  end
end

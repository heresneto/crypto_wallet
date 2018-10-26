class WelcomeController < ApplicationController
  require "rubygems"
  require "json"

  @jsonFile = "nao leu"
  @jsonObject

  def index
    @jsonFile = File.read("app/assets/documents/consolidado_2017_2018.json")
    @jsonObject = JSON.parse(@jsonFile)
  end
end

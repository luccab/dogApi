class IndexController < ActionController::Base

  def dogs

    require 'rest-client'
    require 'json'

    #url = "https://dog.ceo/dog-api/documentation/random"
    #response = RestClient.get(url)
    response = JSON.parse(RestClient.get "https://dog.ceo/api/breeds/image/random")
    @this = response["message"]

  end
end

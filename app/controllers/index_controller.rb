class IndexController < ActionController::Base

  def dogs

    require 'rest-client'
    require 'json'
    @q = "#{params[:breeds]}"
    all_breeds = JSON.parse(RestClient.get "https://dog.ceo/api/breeds/list/all")
    @list = all_breeds["message"].keys

    #url = "https://dog.ceo/dog-api/documentation/random"
    #response = RestClient.get(url)
    if !@q.blank?

      response = JSON.parse(RestClient.get "https://dog.ceo/api/breed/#{params[:breeds]}/images")
      @this = response["message"].sample
    end
  end


end

class SearchController < ApplicationController
  def index
    search_params = params[:q]
    response = Faraday.get("https://api.giphy.com/v1/gifs/search?api_key=#{ENV['giphy_api_key']}&q=#{search_params}&limit=10")
    json = JSON.parse(response.body, symbolize_names: true)
    @gifs = json[:data]
  end
end

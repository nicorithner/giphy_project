class SearchController < ApplicationController
  def index
    @gifs = SearchFacade.search_gifs(params[:q])
  end
end

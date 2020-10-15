class SearchFacade
  def self.search_gifs(query)
    results = GifService.search_gifs_api(query) # step 1. runs the query
    results[:data].map { |data| Gif.new(data) } # step 2. transforms into object
  end
end

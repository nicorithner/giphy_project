class GifService
  def self.search_gifs_api(query)
    response = Faraday.get("https://api.giphy.com/v1/gifs/search?api_key=#{ENV['giphy_api_key']}&q=#{query}&limit=10")
    JSON.parse(response.body, symbolize_names: true)
  end
end

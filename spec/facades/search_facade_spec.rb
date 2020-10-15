require 'rails_helper'
RSpec.describe "Search Facade" do
  describe "It can perform a gifs search using an api call" do
    it "Returns a list of 10 gifs", :vcr do
        gifs = SearchFacade.search_gifs('Bender')
        
        expect(gifs).to be_an(Array)
        expect(gifs.count).to eq(10)
        expect(gifs.first).to be_a(Gif)
        expect(gifs.first.image).to be_a(String)
    end
  end
end
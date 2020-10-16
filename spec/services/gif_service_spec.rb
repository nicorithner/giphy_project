require 'rails_helper'
RSpec.describe GifService do
  describe "It can perform a query through an api call" do
    it "It returns an array of gifs as hashes" do
      VCR.use_cassette('giphy_search') do
        gifs_list = GifService.search_gifs_api('Duffy Duck')

        expect(gifs_list).to be_an(Hash)
        expect(gifs_list[:data]).to be_an(Array)
        expect(gifs_list[:data].first).to be_an(Hash)
        expect(gifs_list[:data].first[:id]).to be_a(String)
        expect(gifs_list[:data].first[:type]).to eq('gif')
        expect(gifs_list[:data].first[:images][:original][:url]).to be_a(String)
      end
    end
  end
end
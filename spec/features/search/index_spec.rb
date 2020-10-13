require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  describe 'Search index page features' do
    it "Sees the search words in the title and 10 pictures in the page matching the query" do

      VCR.use_cassette('giphy_search') do
        visit '/'
        within('.front_page_form') do
            fill_in 'Search for:', with: 'Duffy Duck'
            click_button('Submit')
          end
          expect(current_path).to eq('/search/index')

          expect(page).to have_content('Duffy Duck')

          expect(page).to have_css(".gif", count: 10)
      end
    end
  end
end    
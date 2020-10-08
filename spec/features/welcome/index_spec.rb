require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  describe 'Home page features' do

    before :each do
      visit '/'
    end

    it 'There is a Welcome message' do
      expect(page).to have_css('h1', text: 'Simple GIF Search App')
      expect(page).to have_content('Back-end Development Student Project')
    end

    it 'There instructions' do
      within('.front_page_container') do
        expect(page).to have_css('h2', text: 'How To Use This App')
        expect(page).to have_content('Enter your gif search in the form below.')
      end
    end

    describe "There is a search form and a query redirects to 'search/index'" do
      it 'There is a search form' do
        within('.front_page_container') do
          within('.front_page_form') do
            find_field('Search for:')
            find_button('Submit')
          end
        end
      end

      it "After adding a query and clicking 'Submit' visitor is redirected to '/search/index' page" do
        within('.front_page_form') do
          fill_in 'Search', with: 'Duffy Duck'
          click_button('Submit')
        end
        expect(current_path).to eq('/search/index')
      end
    end

    it "There is 'Home' link in every page" do
      visit root_path
      expect(page).to have_link('Home')
      visit search_index_path
      expect(page).to have_link('Home')
    end
  end
end

require 'rails_helper'

RSpec.feature "BrowserAndSearchBeers", type: :feature do
  fixtures :all

  scenario "By default lists all the beers" do
    # navigate to the beers index page
    visit root_path
    click_link 'Beers'

    # assert all the beers show up
    expect(page).to have_content(beers(:lug_tread).name)
    expect(page).to have_content(beers(:lone_pine).name)
  end

  scenario "As a user I can filter beer by brewery", js: true do
    visit root_path
    click_link "Beers"

    fill_in :brewery_name, with: breweries(:sawdust).name
    click_button 'Search'

    expect(page).to have_content(beers(:lone_pine).name)
    expect(page).to have_no_content(beers(:lug_tread).name)
  end
end

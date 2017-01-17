require 'app.rb'

RSpec.feature "entry of player names", :type => :feature do
  scenario "Player enters their name" do
    fill_in "Name", :with => "name"
    click_button "Enter Player Name"

    expect(page).to have_text("name")
end

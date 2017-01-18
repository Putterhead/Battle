require 'spec_helper'

feature 'Attack' do
  scenario 'attack other player and get confirmaion' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content 'Attack Confirmed'
  end
end

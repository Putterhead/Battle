require 'spec_helper'

feature 'Attack' do
  scenario 'attack other player and get confirmation' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content 'Attack Confirmed'
  end

  scenario 'reduce Player 2 HP by 10' do
      sign_in_and_play
      click_link('Attack')
      click_link('OK')
      expect(page).not_to have_content 'Mittens: 100HP'
      expect(page).to have_content 'Mittens: 90HP'
    end

end

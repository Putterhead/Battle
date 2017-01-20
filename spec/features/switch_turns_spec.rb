require 'spec_helper'

feature 'switch turns' do
  context "seeing the current turn" do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Dave's turn"
    end

    scenario 'reduce Player 1 HP by 10' do
      sign_in_and_play
      click_link('Attack')
      click_link('OK')
      click_link('Attack')
      expect(page).not_to have_content "Dave: 100HP"
      expect(page).to have_content 'Dave: 90HP'
    end
  end
end

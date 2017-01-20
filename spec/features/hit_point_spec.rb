require 'spec_helper'

feature 'Hit points'do
  scenario 'view player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content "100HP"
  end

  scenario 'view player 1\'s hit points' do
    sign_in_and_play
    expect(page).to have_content "100HP"
  end
end

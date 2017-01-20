require 'spec_helper'

feature 'player wins' do
  scenario 'winning player receives confirmation of victory' do
    sign_in_and_play
    18.times{click_link('Attack'); click_link('OK')}
    click_link('Attack')
    expect(page).to have_content "Dave wins"
  end
end

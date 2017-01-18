require 'spec_helper'

feature 'Reduce HP' do
  scenario 'reduce HP after an attack' do
    sign_in_and_play
    click_link('Attack')

    expect(page).to have_content "90"
  end
end

feature "Player 1 attacks Player 2" do
  scenario "Get confirmation that player 1 attacked player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "name1 attacks name2!"
  end
end

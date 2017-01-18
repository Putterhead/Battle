feature "Reducing HP" do
  scenario "Player 1 attacks player 2 and reduces Player 2 HP by 10" do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).to have_content "name2: 90HP"
  end
end

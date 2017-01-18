feature "Entry of player names" do
  scenario "Player enters their name" do
    sign_in_and_play
    expect(page).to have_content 'name1 vs. name2'
  end
end

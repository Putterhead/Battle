feature "Entry of player names" do
  scenario "Player enters their name" do
    sign_in_and_play
    expect(page).to have_content 'name1: 100HP vs. name2: 100HP'
  end
end

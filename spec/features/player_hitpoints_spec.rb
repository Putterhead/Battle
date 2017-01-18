# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature "Player1 can see Players2 hitpoints" do
  scenario "Player1 sees Player2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content 'name2: 100HP'
  end
end

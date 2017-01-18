feature "Entry of player names" do
  scenario "Player enters their name" do
    visit('/')
    # fill_in 'player1_name', :with => 'name1'
    # fill_in 'player2_name', :with => 'name2'
    # fill_in :player1_name, with: 'name1'
    # fill_in :player2_name, with: 'name2'
    fill_in('player1_name', with: 'name1')
    fill_in('player2_name', with: 'name2')
    click_button "Prepare for Battle"

    expect(page).to have_content 'name1 vs. name2'
  end
end

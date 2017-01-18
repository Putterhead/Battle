def sign_in_and_play
  visit('/')
    fill_in('player1_name', with: 'name1')
    fill_in('player2_name', with: 'name2')
    click_button "Prepare for Battle"
end

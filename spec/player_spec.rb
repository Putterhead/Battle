describe Player do
  subject(:player_name1) { Player.new('Mario') }
  subject(:player_name2) { Player.new('Bowser') }

  describe '#player_name' do
    it 'allows the player name to be set' do
      expect(player_name1.player_name).to eq "Mario"
    end
  end

  describe '#health' do
    it 'sets the default health to 100' do
      expect(player_name1.health).to eq 100
    end
  end

  describe '#attack' do
    it 'allows the player to attack' do
      expect(player_name1.attack(player_name2)).to eq player_name2.health
    end
  end

  describe '#take_damage' do
    it 'reduces players health when attacked' do
      expect { player_name1.attack(player_name2) }.to change { player_name2.health }.by(-10)
    end
  end
end

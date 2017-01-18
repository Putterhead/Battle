require 'player'

describe Player do
  subject(:player1){described_class.new("Bob")}
  let(:player2){ double :player2, attacked: nil}

  describe '#name' do
    it 'should return it\'s own name' do
      expect(player1.name).to eq "Bob"
    end
  end

  describe '#hit_points' do
    it 'returns the hit_points' do
      expect(player1.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      player1.attack(player2)
      expect(player2).to have_received(:attacked)
    end
  end

  describe '#attacked' do
    it 'should reduce hit points by 10 after attack' do
      expect{ player1.attacked }.to change { player1.hit_points }.by -10
    end
  end

end

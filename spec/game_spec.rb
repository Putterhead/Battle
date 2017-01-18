require 'game'

describe Game do

  subject(:game){described_class.new}
  let(:player1){ double :player }
  let(:player2){ double :player, attacked: nil }

  describe '#attack' do
    it 'damages the player' do
      game.attack(player2)
      expect(player2).to have_received(:attacked)
    end
  end

end

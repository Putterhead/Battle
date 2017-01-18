require 'player'

describe Player do
  subject(:player){described_class.new("Bob")}
  it 'should return it\'s own name' do
    expect(player.name).to eq "Bob"
  end
end

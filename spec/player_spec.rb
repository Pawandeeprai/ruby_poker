require 'rspec'
require 'player.rb'

describe Player do
  subject(:player) {Player.new("Balla", 25000)}

  it "takes a player's name" do
    expect(player.name).to eq("Balla")
  end
  # it "contains player hand" do
  #
  # end
  it "displays player bank" do
    expect(player.bank).to eq(25000)
  end

  before do
    $stdin = 5000
  end
  after do
    $stdin = STDIN
  end

  it "makes bets and changes the player bank" do
    expect(player.bet).to eq(5000)
    expect(player.bank).to eq(20000)
  end

  it "displays player hand" do
    expect(player.hand).to eq(nil)
  end

  it "lets the player fold" do
    expect(player.fold).to eq(false)
    player.folds
    expect(player.fold).to eq(true)
  end

end

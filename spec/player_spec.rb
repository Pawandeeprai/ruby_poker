require 'rspec'
require 'player.rb'

describe Player do
  subject(:player) {Player.new("Playa", 25000)}

  it "takes a player's name" do
    expect(player.name).to eq("Playa")
  end
  it "contains player hand" #maybe we can use double?
  it "displays player bank" do
    expect
  end
  it "makes bets and changes the player bank"
  it "displays player hand"
  it "lets the player fold"

end

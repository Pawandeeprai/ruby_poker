require 'rspec'
require 'hand.rb'

describe Hand do
  a = Card.new()
  subject(:hand) {Hand.new(cards)}

  it "takes an array of cards" do

    expect(hand.cards.length).to eq(5)
  end

  it "displays to_s for each card" do

    expect(hand.display).to eq("cardstring")
  end

  it "returns unwanted cards" do

    expect(hand.return(2)).to eq([card,card])
    expect(hand.cards.length).to eq(5)
  end

  it "evaluates the cards it has" do

    expect(hand.evaluate).to eq(:straight)
  end



end

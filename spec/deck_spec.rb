require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) { Deck.new }

  it "Has 52 cards" do
    expect(deck.deck.length).to eq(52)
  end
  it "shuffles the deck" do
    expect(deck.deck == deck.shuffle).to eq(false)
  end
  it "deals a 5 card hand, and takes them out of the deck" do
    expect(deck.deal.length).to eq(5)
    expect(deck.deck.length).to eq(47)
  end
  it "redeals n cards, and takes them out of the deck" do
    expect(deck.take(3).length).to eq(3)
    expect(deck.deck.length).to eq(49)
  end
end

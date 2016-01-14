require 'rspec'
require 'card.rb'

describe Card do
  subject(:card) {Card.new("♤", :k)}

  describe "initialize" do
    it "takes a suit" do
      expect(card.suit).to eq("♤")
    end

    it "takes a value" do
      expect(card.value).to eq(:k)
    end

    it "displays the card in [suit value] format" do
      expect(card.to_s).to eq("[♤ k]")
    end

  end
end

class Deck
  attr_reader :deck

  def initialize
    @deck = populate
  end

  def populate
    suits = ["♤", "♡", "♢", "♧"]
    values = [2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K, :A]
    deck = []
    suits.each do |suits|
      values.each do |value|
        deck << Card.new(suits,values)
      end
    end
    deck
  end

  def shuffle
    @deck = @deck.shuffle
  end

  def deal
    take(5)
  end

  def take(num_cards)
    hand = []
    num_cards.times do |card|
      hand << @deck.shift
    end
    hand
  end

end

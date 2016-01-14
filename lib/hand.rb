require_relative 'deck.rb'
require_relative 'player.rb'
require_relative 'card.rb'

class Hand

  def initialize(cards)
    @cards = cards
  end

  def display
    display = ""
    @cards.each do |card|
      display += card.to_s
    end
    display
  end

  def return(positions)
    give = []
    positions.each do |pos|
      give << @cards[pos]
      @cards[pos] = nil
    end
    @cards.remove(nil)
    give
  end

  def straight_flush
    straight && flush
  end

  def straight
  end

  def flush
    current_suit = @card[0].suit
    @card.each do |card|
      return false unless card.suit == current_suit
    end
    true
  end


  def four_kind(hash)
    return true if hash.values.include?(4)
  end

  def sames_hash
    of_a_kinds = {}
    @card.each do |card|
      if of_a_kinds.keys.include?(card)
        of_a_kinds[card] += 1
      else
        of_a_kinds[card] = 1
      end
    end
    of_a_kinds
  end

  end
  def full_house(hash)
    return true if hash.values.inlude?(3) && hash.values.inlude?(2)
  end

  def three_kind(hash)
    return true if hash.values.inlude?(3)
  end

  def two_pair
    count_twos = 0
    hash.values.each do |value|
      count_twos += 1 if value == 2
    end
    return true if count_twos == 2
    false
  end

  def pair
    return true if hash.values.include?(2)
  end

  def high_card
    high_card = nil
    high_card_value = 0
    @cards.each do |card|
      if card_values[card.value] > high_card_value
        high_card = card
        high_card_value = card_values[card.value]
      end
    end
    high_card
  end


  def evaluate
    return [:straight_flush, high_card] if straight_flush
    return [:straight, high_card] if straight
    return [:flush, high_card] if flush
    same_hash = sames_hash
    return [:four_kind, high_card] if four_kind(same_hash)
    return [:full_house, high_card] if full_house(same_hash)
    return [:three_kind, high_card] if three_kind(same_hash)
    return [:two_pair, high_card] if two_pair(same_hash)
    return [:pair, high_card] if pair(same_hash)
    return [:high_card, high_card]
  end

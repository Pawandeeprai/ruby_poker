require_relative 'hand.rb'

class Player
attr_reader :name, :bank, :fold, :hand

  def initialize(name, bank)
    @name = name
    @bank = bank
    @fold = false
    @hand = nil
  end

  def folds
    @fold = true
  end

  def bet
    amount = $stdin
    @bank -= amount
    amount
  end

  def win_pot(amount)
    @bank += amount
  end


end

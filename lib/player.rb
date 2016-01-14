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

  def bet(last_bet = 0)
    amount = 0
    
    until amount > last_bet || @fold == true
      puts "Would you like to bet or fold? Minimum bet is #{last_bet}"
      amount = gets.chomp.to_s
      folds if amount == "fold"
      amount = amount.to_i unless @fold
    end
  end

    @bank -= amount
    amount
  end

  def win_pot(amount)
    @bank += amount
  end


end

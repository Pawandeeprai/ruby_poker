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
    player_input = nil
    until player_input == "yes" || player_input == "no"
      puts "the last bet was #{last_bet}.  Would you like to fold?"
      player_input = gets.chomp.to_s
    end

    folds if player_input == yes

    until amount > last_bet || @fold == true
      puts "What would you like to bet? Minimum bet is #{last_bet}"

      amount = gets.chomp.to_i
    end


    @bank -= amount
    amount
  end

  def win_pot(amount)
    @bank += amount
  end


end

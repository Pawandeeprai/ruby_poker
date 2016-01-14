class Poker

  def initialize
    @players = create_players
    @current_players = []
  end

  def how_many_players
    puts "How many players? (between 2 and 5)"
    players = gets.chomp.to_i

    player_names = []
    puts "Whats the first player's name?"
    player.names << gets.chomp.to_s
    players.times do
      "Whats the next player's name?"
      player_names << gets.chomp.to_s
    end
    player_names
  end

  def create_players
    player_names = how_many_players

    players = []
    player_names.each do |name|
      players << Player.new(name)
    end

    players
  end

end

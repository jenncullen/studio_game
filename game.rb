class Game
  require_relative 'player'
  require_relative 'die'
  require_relative 'game_turn'
  def initialize (title)
    @title = title
    @players = []
  end
  attr_reader :title
  def add_player(a_player)
    @players.push(a_player)
  end
  def play
    puts "There are #{@players.size} players in #{@title}: "
    @players.each do |player|
      puts player
    end
    
    @players.each do |player|
      GameTurn.take_turn(player)
      puts player
    end
  end
end
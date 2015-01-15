class Game
  require_relative 'player'
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
      puts player.blam
      puts player.w00t
      puts player.w00t
      puts player
    end
  end
end
   
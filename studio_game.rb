class Player
  attr_reader :health
  attr_accessor :name
  def score
    @health + @name.length
  end
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
  def blam
    @health -= 10
    "#{@name} got blammed!"
  end
  def w00t
    @health += 15
    "#{@name} got w00ted!"
  end
end
class Game
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
  player1 = Player.new("moe")
  player2 = Player.new("larry",60)
  player3 = Player.new("curly", 125)
  knuckleheads = Game.new("knuckleheads")
  knuckleheads.add_player(player1)
  knuckleheads.add_player(player2)
  knuckleheads.add_player(player3)
  knuckleheads.play


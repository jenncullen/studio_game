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
 
  player1 = Player.new("moe")
  player2 = Player.new("larry",60)
  player3 = Player.new("curly", 125)
  players = [player1, player2, player3]

  puts "There are #{players.size} players in the game:"







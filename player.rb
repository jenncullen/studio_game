class Player
  def <=>(other)
    other.score <=> score
  end
  def score
    @health + @name.length
  end
  def strong?
    @health > 100
  end
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
if __FILE__ ==$0
player = Player.new ("moe")
puts player.name
puts player.health
player.w00t
puts player.health
player.blam
puts player.health 
end
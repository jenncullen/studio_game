require_relative 'die'

module GameTurn
  
  def self.take_turn(player)
    die = Die.new
    treasure = TreasureTrove.random
    player.found_treasure(treasure)
  end
end


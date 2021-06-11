class Player
  def play_game
    rand(1..100) > 50 ? "Winner!" : "Loser!"
  end
end

m = Player.new
n = Player.new

def m.cheat
  "Winner! ¬¬"
end

p m.play_game
p m.cheat

def m.play_game
  "Winner!"
end

p m.play_game
puts

p n.singleton_methods
p m.singleton_methods
puts

p n.singleton_class
p m.singleton_class

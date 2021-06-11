module Announcer
  def who_am_i
    "The name of thid class is #{self}"
  end
end

class Dog
  extend Announcer
end

class Cat
  extend Announcer
end

# Importa el método para la clase y no de la clase
p Dog.who_am_i
p Cat.who_am_i

class Bicycle
  @@maker = "BikeTech"
  @@count = 0

  def self.description
    'Hola a todos, Estoy en el blueprint de Bicycles!'
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end

  def initialize
    @@count += 1
  end
end

puts Bicycle.description
puts Bicycle.count
x = Bicycle.new
p x.maker
y = Bicycle.new
z = Bicycle.new
puts Bicycle.count

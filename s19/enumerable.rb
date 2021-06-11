class ConvenienveStore
  # Module Enumerable allows mixin iteration functionalities
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each { |s| yield s }
  end
end

bodega = ConvenienveStore.new
bodega.add_snack("Doritos")
bodega.add_snack("Oreo")
bodega.add_snack("Milk")
# bodega.each {|s| puts "#{s} is delicious"}
puts
p bodega.any? {|s| s.length > 7} # ¿Alguna palabra tiene más de 7 letras?
p bodega.all? {|s| s.length > 3} # ¿Todos los items tienen más de 3 letras?
puts
p bodega.snacks
p bodega.map {|s| s.upcase }
p bodega.map {|s| s.include?("o") }
p bodega.select {|s| s.include?("o") }
puts
p bodega.snacks
p bodega.sort
p bodega.first

module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable
end

class Supermarket
  include Purchaseable
end

# Inherits from Supermarket
class Petshop < Supermarket
end

x = Bookstore.new
p x.purchase("Libro")
y = Supermarket.new
p y.purchase("Arroz")
z = Petshop.new
p z.purchase("Perro")
puts

# .ancestors
p Bookstore.ancestors
p Petshop.ancestors
puts

class Bar
  include Purchaseable
  def purchase(i)
    "Here’s your #{i}, enjoy it!"
  end
end

# Prioritizes own methods to those imported.
# Prioritize in the same way against an inheritance.
aa = Bar.new
p aa.purchase("Guaro")

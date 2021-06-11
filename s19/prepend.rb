module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bar
  prepend Purchaseable
  def purchase(i)
    "Here’s your #{i}, enjoy it!"
  end
end

# prepend prefixes the module called
# with include:
# [Bar, Purchaseable, Object, Kernel, BasicObject]
# with prepend:
# [Purchaseable, Bar, Object, Kernel, BasicObject]
p Bar.ancestors
beer = Bar.new
p beer.purchase("beer")

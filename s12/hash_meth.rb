menu = {burger: 3.99, taco: 5.96, chips: 0.5}

p menu[:burger]
p menu[:chips]
p menu[:salad]

# .fetch
p menu.fetch(:burger)
p menu.fetch(:chips)
p menu.fetch(:salad, "Not found")
# fetch does not allow nil output,
# but allows adding an output for such a case.
p menu.fetch(:pizza, 4.46)
puts

# add with []
p menu[:pizza]
menu[:pizza] = 4.46
p menu[:pizza]
puts

# add with .store
p menu[:lasagna]
menu.store(:lasagna, 6.1)
p menu[:lasagna]
puts

# .empty?
empty_hash = {}
p empty_hash.empty?
p menu.empty?
puts

# .length
p menu
p menu.length
p empty_hash
p empty_hash.length
puts

# .each
menu.each do |food, price|
  puts "The price of #{food} is #{price}"
end

menu.each {|guess| puts "Comida: #{guess}"}
puts

# .each_key && .each_value
menu.each_key {|k| puts "Comida: #{k}"}
menu.each_value {|k| puts "Precio: #{k}"}
puts

# .keys && .values
p menu.keys
puts
p menu.values

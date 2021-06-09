# Spaceship (<=>)
# if = return 0
# if > return -1
# if < return 1
# if incomparable return nil
p 5 <=> 5
p 5 <=> 10
p 5 <=> 1
p 5 <=> "5"
p 5 <=> [1,2,3]
puts
p [1,2,3]<=>[1,2,3]
p [1,2,3]<=>["1",2,3]
p [1,2,3]<=>[1,2,4]
p "aaccc"<=>"abaaa"    # Duda resuelta

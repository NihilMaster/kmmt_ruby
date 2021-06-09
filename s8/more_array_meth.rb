a = %w(a b c d)
b = [1, nil, 2, 3, "No", 4, nil,
  true, nil, 3.14159, 5, nil, 6]
c = [1,3,4,5,6,4,1,1]
d = [true, false, true, true, true,false]

# .lenght && .size
p a.length
p b.length
p b.size
puts

# .count
p c.count
c[c.length]=nil
p c.count
p c.count(1)
p d.count(true)
puts

# .empty? && .nil?
p [].empty?
p [].nil?
p b.nil?
p b[1].nil?
p [nil, nil].empty?
p [nil, nil].nil?
p a[4].nil?
p nil.nil?
puts

# .first && .last
p b.first
p b.last
p b.first(1)
p b.last(1)
puts

# .insert, .push n Shovel Operator(<<)
# .push
p a
a.push("e")
p a
a << "f" << "g" #Shovel Operator
p a
puts

# .insert
a.insert(0, "Z")
p a
puts

# .pop
a.pop
p a
a.pop(2)
p a
aux = a.pop
p aux
p a
p c
aux = c.pop(3)
p aux
p c
puts

# .shift && .unshift
p a
a.shift
p a
a.unshift("X", "Y", "Z")
p a

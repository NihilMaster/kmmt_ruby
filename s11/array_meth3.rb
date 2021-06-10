# .any?
p [1, 3, 2, 8].any? {|n| n.even? }
puts

# .all
p [1, 3, 5, 7].all? {|n| n.odd? }
p [1, 2, 5, 7].all? {|n| n.odd? }
puts

# .find && .detect
w = %w[air water earth fire]
p w
p w.select {|wd| wd.length<5}
p w.find   {|wd| wd.length<5}
p w.detect {|wd| wd.length<5}
p w.reverse.find {|wd| wd.length<5}
puts

# .uniq
l = %w[a b a c d c b a]
p l
p l.uniq
puts

# .compact
p [1, nil, 2, 3]
p [1, nil, 2, 3].compact
puts

# .inject && .reduce
# .reduce
n = [10, 20, 30]
aux = n.reduce(0) do |prev,curr|
  puts "The previous: #{prev} and the current: #{curr}"
  prev + curr
end
puts aux
puts

n1 = [3, 4, 5, 6]
c = 1
aux = n1.reduce(c) do |prev,curr| # Initially prev=1
  p prev unless prev==c || prev==n1[0] # prev is the result of product of last iteration
  puts "#{prev} * #{curr}: " unless prev==c
  prev * curr # Returns a value that in the next will be "Prev"
end
puts aux
puts

# .inject
aux = n.inject(5) do |prev,curr|
  puts "The previous: #{prev} and the current: #{curr}"
  prev + curr
end
puts aux
puts

# .flatten
users = [["M",24,true],["N",18,true],["O",27,false]]
p users
p users.flatten
puts

# .zip
b = [true, true, false]
p w
p w.zip(b)

p [1,2,3].zip(["A","B","C"], [true,false,true])
puts

# .sample
p w
p w.sample    # random item
p w.sample(2)
p w.sample(10)# random pos 

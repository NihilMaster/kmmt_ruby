# .new
p Array.new
p Array.new.class

p Array.new(3)
p Array.new(3, "a")
p Array.new(3, [])
puts

# access with index
a = %w(a b c d e f g)
p a.length
p a[0]
p a[100]
p a[a.length-1]
p a[-1]
p a.[](2) # .[]()
puts

# .fetch
p a.fetch(0)
p a.fetch(100, 'temporary return')
puts

# acces to arrays
p a[0]
p a[0, 2]
p a[0].class
p a[0, 2].class
p a[0, 500]
puts

# access to arrays with range
p a[1..3]   # include b argument
p a[1...3]  # exclude b argument
puts

# .values_at()
p a.values_at(2, 0, 3, 0)
p a.values_at(2, 100, 3, 100)
puts

# .slice()
p a.slice(3)
p a.slice(100)
p a.slice(1,3)
p a.slice(1..3)
p a.slice(1...3)

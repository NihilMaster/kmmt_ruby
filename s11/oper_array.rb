# Multiply with asterisk symbol
p 4*6
p "A"*3
p ["A","B","C"] * 2

# Problem
# Custom_multiply
def custom_multiply(arr,n)
  fin = []
  n.times do
    arr.each {|i| fin << i}
  end
  fin
end
p custom_multiply([1,2,3],3)
puts

# Union (|)
p %w[a b c] | %w[c d e] # join and eliminates the repeated

# Problem
# Custom_union

def custom_union(arr1, arr2)
  arr1.dup.concat(arr2).uniq
  # fin = []
  # arr1.each {|a1| fin << a1 unless fin.include?(a1)}
  # arr2.each {|a2| fin << a2 unless fin.include?(a2)}
  # fin
end
p custom_union([1,1,2,3,3],[3,4,4,5])
puts

# Remove (-)
p %w[a b c d e c] - %w[c d]

# Problem
# Custom_substraccion

def custom_substraccion(arr1, arr2)
  fin=[]
  arr1.each {|n| fin << n unless arr2.include?(n)}
  fin
end
p custom_substraccion([1,1,2,2,3,3,3,3,4,5],[1,4,5])
puts

# Insersection (&)
p %w[a b c d] & %w[c d e f]
p %w[a b c d].&(%w[c d e f])

# Problem
# Custom_intersection

def custom_intersection(arr1, arr2)
  fin = []
  arr1.uniq.each {|n| fin << n if arr2.include?(n) }
  fin
end
p custom_intersection([1,1,2,3,4,5],[1,4,5,8,9])

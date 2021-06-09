arr = %w(a b c d)
# .each
#   .each block
arr.each do |l|
  puts "Letra: #{l}"
end

#   .each block inline
arr.each {|l| puts "Mayúscula: #{l.upcase}"}

#   .each block direct
[1,2,3].each do |n|
  q = n * n
  puts "Para #{n} su cuadrado: #{q}"
end
puts

# example
ones = [1,2,1,3,1,4,1,5,1,6]
p ones
ones.each {|n| print"#{n} " if n==1}
puts; puts

# example 2
def evenorodds(array)
  evens, odds = [], []
  array.each {|n| n.even? ? evens << n : odds << n}
  print 'Evens: '; p evens
  print 'Odds:  '; p odds
end
evenorodds([1,2,3,4,5,6,7,8,9,10])
puts

# each whitin each
n1 = [1, 2, 3, 4]
n2 = n1
n2.each do |l|
  n1.each do |d|
     print "[#{d}#{l}] "
  end
  puts
end

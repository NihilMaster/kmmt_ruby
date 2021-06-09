# .map
num = [1,2,3,4,5]

q = []
num.each {|n| q << n ** 2}
p q

sq = num.map{|n| n ** 2}
p sq
puts

# example
fahr=[105,73,40,18,-2]
celsius=fahr.map do |t|
  ((t - 32) * (5.0/9.0)).round(2)
end
p fahr
p celsius
puts

# .collect
results1=[1,2,3].map{|n|print"#{n ** 2} "}
puts; p results1
results2=[1,2,3].collect{|n|print"#{n ** 2} "}
puts; p results2; puts

# Problem
# Writes a cubes method that accepts
# an array and returns a new array.
# have all the values from the original
# one cubed.
numbers=[3,8,11,15,89]
def cubes(arr)
  arr.map {|n| n ** 3}
end
p cubes(numbers)

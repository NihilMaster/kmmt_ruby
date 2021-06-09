# .each_with_index
s = %w(M N O P Q)
puts "Lista"
s.each_with_index do |n,i|
  puts "#{i+1}. Nombre: #{n}"
end
puts

# Problem 1
# Write a loop thet iterates
# over a numeric array.
# Output the PRODUCT of each
# number and its index position
n = [4,5,6,7,8]
n.each_with_index do |num, i|
  puts "#{i}. For number #{num}: #{num * i}"
end
puts

# Problem 2
# Write a loop that gives me
# a sum of the products of each
# index and its value
sum=0
[1,2,3,4,5].each_with_index do |n,i|
  sum += n*i
end
p sum
puts

# Problem 3
# Write a loop that gives me
# a sum of the products of each
# index and its value
def problem3(arr)
  arr.each_with_index do |n,i|
    puts "#{i}. For number #{n}: #{n * i}" if i>n
  end
end
problem3([-1,2,1,2,5,7,3])

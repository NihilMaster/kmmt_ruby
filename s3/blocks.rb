# .times
# 4.times {puts "iteration"}
c=0
2.times { c+=1; puts "iteration #{c}"}
c=0
2.times do
  c+=1
  puts "Iteration #{c} with do/end"
end
puts

2.times {|count| puts "Iteration #{count} with param"}
2.times do |i|
  puts "Iteration #{i} with param and do/end"
end
puts

# Use the times metho to output the first
# ten multiples of 3 (3,6,9,...,30)
puts "Multiples of 3:"
10.times do |three|
  print "#{(three+1)*3} "
end
puts; puts

# .downto
# El parámetro compone un rango de iteraciones
puts "Downto"
8.downto(4) {|i| print "#{i} "}
puts
5.downto(-2) {|i| print "#{i} "}
puts; puts

# .upto
# Rango de incremento
4.upto(8) {|i| print "#{i} "}
puts
-2.upto(5) {|i| print "#{i} "}
puts; puts

# .step
0.step(100, 10) {|i| print "#{i} "}
puts
10.step(0, -2) {|i| print "#{i} "}

# comando para comentar ctrl+/

# .class, .next, .last
nums = 1..5
p nums.class
p nums.first
p nums.last

# Integers
n = 100..449
p n.last(5)
print (1..10).first(3)
puts; puts

# characters
alphaDown = "a".."z"
print alphaDown.last(4)
puts
alphaUp = "A".."Z"
print alphaUp.first(4)
puts
p alphaUp.last.next
test = "Z".."a"
p test.last(8)
puts

# .size
p n.size
p test.size
puts

# .include?() || ===
puts n.include?(146)
puts test.include?("\\")
puts n === 146
puts test === "\\"
puts

# random
puts rand
puts rand.round(2)
puts rand(10)
puts rand(0.1)
puts rand(46..49)

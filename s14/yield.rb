def pass_control
  puts 'This is inside the method'
  yield   # Pass control from method to the block
  puts 'Now I\'m back inside the method'
end

pass_control { puts 'I\'m very handsome'}
puts
pass_control do
  puts 'I\'m very handsome'
  puts 'Yay, still inside the block'
end
puts

def who_am_i
  adj = yield
  puts "I'm very #{adj}"
end
who_am_i{"amazing"}
who_am_i{"handsome"}
puts

# Double yield
def multiple_pass
  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield
end
multiple_pass { puts 'Now I\'m inside the block'}
puts

# block_given?
def pass_control_on_condition
  puts 'Inside the method'
  if block_given?
    yield
  end
  puts 'Back inside the method'
end
pass_control_on_condition {puts 'Inside the block and condition'}
puts

# yielding with args
def speak_the_truth(name)
  yield name if block_given?
end
speak_the_truth("M") do |n|
  puts "#{n} is brillante"
  puts "#{n} is awesome"
end
puts

def num_eval(n1, n2, n3)
  puts 'Inside the method'
  yield(n1, n2, n3)
  # No space after yield or will mark error
end
sum = num_eval(5, 10, 15) { |n1, n2, n3| n1 + n2 + n3 }
p sum
prod = num_eval(5, 10, 15) { |n1, n2, n3| n1 * n2 * n3 }
p prod
puts

# Custom_each
def custom_each(arr)
  i=0
  while i < arr.length
    yield arr[i]
    i += 1
  end
end
names = ["M", "N", "O"]
nums  = [10, 20, 30]
custom_each(names) { |n| puts "The lenth of #{n} is #{n.length}"}
custom_each(nums)  { |n| puts "The square of #{n} is #{n ** 2}"}
puts

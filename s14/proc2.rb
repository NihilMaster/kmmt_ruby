def greeter
  puts 'Inside the greeter method'
  yield
end
phrase = Proc.new {puts 'Inside the proc'}
greeter(&phrase)
puts

# .call
hi = Proc.new { puts "Hola" }
hi.call
puts

# Ruby method as proc
p ["1", "2", "3"].map { |n| n.to_i}
p ["1", "2", "3"].map(&:to_i)
p [1, 2, 3].map { |n| n.to_f}
p [1, 2, 3].map(&:to_f)
puts
p [1, 2, 3, 4, 5].select { |n| n.even?}
p [1, 2, 3, 4, 5].select(&:even?)
p [1, 2, 3, 4, 5].select(&:odd?)
puts

# Methods with proc param
def talk_about(n, &myprc)
  puts "Let me tell you about... #{n}"
  myprc.call(n)
end
good_things = Proc.new {|n| puts "#{n} is a genius"}
bad_things = Proc.new {|n| puts "#{n} is a dolt"}
talk_about("M", &good_things)
talk_about("M", &bad_things)

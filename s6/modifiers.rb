# inline statemente modifier
number = 400
flag = true

if number < 600
  puts "Of course."
end

puts "Of course." if number < 600

puts "Of course." if number < 600 && flag
puts

unless !flag
  puts "Again."
end

puts "Again." unless !flag

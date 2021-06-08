def introduce_myself(name)
  puts "I'm #{name}"
end

n1,n2 = "M","N"
introduce_myself(n1)
introduce_myself n2
introduce_myself "O"

def suma(n1, n2)
  return n1+n2
end

puts "The sum of 4+6 is #{suma(4,6)}"

def simple_return
  "Esto no está impreso dentro del método"
end

p simple_return

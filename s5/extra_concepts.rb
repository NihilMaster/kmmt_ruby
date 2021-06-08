# .respond_to?()
num = 1000
p num.respond_to?("upcase")
p num.respond_to?(:next)
p num.respond_to?(:prueba)

if num.respond_to?(:length)
  puts "Es un string."
else
  puts "#{num} es un Integer/Float/Boolean"
end
puts

# Ternary Oper. ator
puts 1<2 ? "1 es menor que 2" : "No"
puts

# Default params
def make_phone_call(number, international_c=57, area_c=01)
  return "You are calling to #{international_c}-#{area_c}-#{number}."
end

puts make_phone_call("555-5555",54,32)
puts make_phone_call("666-6666",56)
puts make_phone_call("777-7777")
puts

# Method calls another method n interpolation of methods
def directorio(nombre, pais_c, numero)
  puts "  #{make_phone_call(numero,pais_c)}
  The phone number belongs to #{nombre}."
end

directorio("Q",51,"987-7891")
